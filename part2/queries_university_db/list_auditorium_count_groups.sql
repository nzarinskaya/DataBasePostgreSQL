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
		   HAVING COUNT(public.schedules.group_id)>1;