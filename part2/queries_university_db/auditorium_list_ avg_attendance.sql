
WITH get_sum(gr_id,less,col)

AS(
SELECT public.schedules.group_id AS Группа, CONCAT(LEFT(CONCAT(public.time_lessons.start_time),5),', ', public.auditoriums.name) 
AS Занятие, COUNT(public.schedules.group_id) AS Количество_групп_на_занятии

    FROM public.auditoriums
	      INNER JOIN public.schedules
           ON public.schedules.auditorium_id = public.auditoriums.id
		   INNER JOIN public.time_lessons
		   ON public.schedules.time_lesson_id = public.time_lessons.id
		   
		   WHERE public.time_lessons.id IN (
		                                     SELECT id
			                                 FROM public.time_lessons
			                                 GROUP BY id 
		                                      )
		   GROUP BY Занятие,Группа
	)
	
	SELECT  RIGHT(less,3) AS Название_аудитории, 
	ROUND(AVG((CASE WHEN col >1 THEN col* public.groups.sum 
	ELSE public.groups.sum END )),2)
	AS Среднее_наполнение 
	
	FROM get_sum
	INNER JOIN public.groups
           ON get_sum.gr_id = public.groups.id
		   
	GROUP BY RIGHT(less,3)
        ORDER BY Среднее_наполнение DESC;