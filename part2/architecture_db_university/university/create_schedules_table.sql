-- Table: public.schedules

-- DROP TABLE public.schedules;

CREATE TABLE IF NOT EXISTS public.schedules
(
    group_id integer NOT NULL,
    time_lesson_id integer NOT NULL,
    professor_id integer NOT NULL,
    subject_id integer NOT NULL,
    auditorium_id integer NOT NULL,
    CONSTRAINT schedules_pkey PRIMARY KEY (group_id, time_lesson_id),
    CONSTRAINT auditorium_id FOREIGN KEY (auditorium_id)
        REFERENCES public.auditoriums (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT group_id FOREIGN KEY (group_id)
        REFERENCES public.groups (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT professor_id FOREIGN KEY (professor_id)
        REFERENCES public.professors (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT subject_id FOREIGN KEY (subject_id)
        REFERENCES public.subjects (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT time_lesson_id FOREIGN KEY (time_lesson_id)
        REFERENCES public.time_lessons (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.schedules
    OWNER to postgres;