-- Table: public.professors

-- DROP TABLE public.professors;

CREATE TABLE IF NOT EXISTS public.professors
(
    id integer NOT NULL DEFAULT nextval('professors_id_seq'::regclass),
    full_name character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT professors_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.professors
    OWNER to postgres;