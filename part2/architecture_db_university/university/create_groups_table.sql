-- Table: public.groups

-- DROP TABLE public.groups;

CREATE TABLE IF NOT EXISTS public.groups
(
    id integer NOT NULL DEFAULT nextval('groups_id_seq'::regclass),
    name character varying(10) COLLATE pg_catalog."default",
    sum smallint,
    CONSTRAINT groups_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.groups
    OWNER to postgres;