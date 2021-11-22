


SELECT public.applications.client_id_fk AS id_client, public.applications.id AS id_application,
public.clients.name AS name_client, type, public.applications.status ,
public.applications.credit_debt
  
   FROM public.applications
     INNER JOIN public.clients
	 ON public.applications.client_id_fk = public.clients.id
   WHERE public.applications.status != 'Закрыта' AND public.clients.type = 'юридическое лицо' AND
      public.applications.client_id_fk IN(
	                                      SELECT public.applications.client_id_fk
	                                      FROM public.applications
		                                  WHERE public.applications.status != 'Закрыта'
		                                  GROUP BY name, public.applications.client_id_fk
	                                      HAVING SUM(public.applications.credit_debt)>10000000
                                          )
   GROUP BY public.clients.name, public.applications.client_id_fk, public.applications.id, type
           
	 ORDER BY public.applications.client_id_fk								  	 
;