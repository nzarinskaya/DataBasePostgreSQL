-- Table: public.applications

-- DROP TABLE public.applications;

CREATE TABLE IF NOT EXISTS public.applications
(
    id integer NOT NULL DEFAULT nextval('"public.applications_id_seq"'::regclass),
    status character varying(20) COLLATE pg_catalog."default" NOT NULL,
    credit_debt integer NOT NULL,
    client_id_fk integer NOT NULL,
    CONSTRAINT applications_pk PRIMARY KEY (id),
    CONSTRAINT client_id_fk FOREIGN KEY (client_id_fk)
        REFERENCES public.clients (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.applications
    OWNER to postgres;
-- Index: fki_client_id_fk

-- DROP INDEX public.fki_client_id_fk;

CREATE INDEX fki_client_id_fk
    ON public.applications USING btree
    (client_id_fk ASC NULLS LAST)
    TABLESPACE pg_default;