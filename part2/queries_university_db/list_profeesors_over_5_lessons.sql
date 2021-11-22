SELECT public.professors.full_name AS ФИ_преподавателя, COUNT(public.professors.id) AS Количесвто_занятий
    FROM public.schedules
	   INNER JOIN public.professors
		   ON public.schedules.professor_id = public.professors.id
		 WHERE public.schedules.auditorium_id = 2 
		 GROUP BY public.professors.full_name
		 HAVING COUNT(professor_id)>5;