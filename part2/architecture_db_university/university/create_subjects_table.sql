-- Table: public.subjects

-- DROP TABLE public.subjects;

CREATE TABLE IF NOT EXISTS public.subjects
(
    id integer NOT NULL DEFAULT nextval('subjects_id_seq'::regclass),
    name character varying(40) COLLATE pg_catalog."default",
    CONSTRAINT subjects_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.subjects
    OWNER to postgres;