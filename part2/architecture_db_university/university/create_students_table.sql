-- Table: public.students

-- DROP TABLE public.students;

CREATE TABLE IF NOT EXISTS public.students
(
    id integer NOT NULL DEFAULT nextval('students_id_seq'::regclass),
    first_name character varying(15) COLLATE pg_catalog."default",
    last_name character varying(15) COLLATE pg_catalog."default",
    group_id_fk integer NOT NULL,
    CONSTRAINT students_pkey PRIMARY KEY (id),
    CONSTRAINT group_id_fk FOREIGN KEY (group_id_fk)
        REFERENCES public.groups (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.students
    OWNER to postgres;