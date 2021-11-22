-- Table: public.clients

-- DROP TABLE public.clients;

CREATE TABLE IF NOT EXISTS public.clients
(
    id integer NOT NULL DEFAULT nextval('clients_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    type character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT clients_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.clients
    OWNER to postgres;