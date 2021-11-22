-- Table: public.auditoriums

-- DROP TABLE public.auditoriums;

CREATE TABLE IF NOT EXISTS public.auditoriums
(
    id integer NOT NULL DEFAULT nextval('auditopriums_id_seq'::regclass),
    name character varying(10) COLLATE pg_catalog."default",
    max smallint,
    CONSTRAINT auditopriums_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.auditoriums
    OWNER to postgres;