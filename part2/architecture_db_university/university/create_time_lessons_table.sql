-- Table: public.time_lessons

-- DROP TABLE public.time_lessons;

CREATE TABLE IF NOT EXISTS public.time_lessons
(
    id integer NOT NULL DEFAULT nextval('time_lessons_id_seq'::regclass),
    date date,
    start_time time without time zone,
    end_time time without time zone,
    CONSTRAINT time_lessons_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.time_lessons
    OWNER to postgres;