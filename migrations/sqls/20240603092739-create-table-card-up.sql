CREATE TABLE learn.card (
    id serial PRIMARY KEY,
    question text NOT NULL,
    answer text NOT NULL,
    review_after timestamptz NOT NULL DEFAULT now(),
    spacing integer NOT NULL CHECK (spacing >= 0) DEFAULT 0,
    ease_factor numeric(7, 4) NOT NULL CHECK (ease_factor >= 1.3) DEFAULT 2.5,
    seq integer NOT NULL CHECK (seq >= 0) DEFAULT 0,
    archived boolean NOT NULL DEFAULT FALSE,
    person_id integer REFERENCES learn.person (id),
    created_at timestamptz DEFAULT now()
);

CREATE INDEX IF NOT EXISTS card_review_after_idx ON learn.card (review_after);
CREATE INDEX IF NOT EXISTS card_archived_idx ON learn.card (archived);
CREATE INDEX IF NOT EXISTS card_person_id_idx ON learn.card (person_id);

COMMENT ON COLUMN learn.card.review_after IS '@omit create,update';
COMMENT ON COLUMN learn.card.spacing IS '@omit create,update';
COMMENT ON COLUMN learn.card.ease_factor IS '@omit create,update';
COMMENT ON COLUMN learn.card.seq IS '@omit create,update';
COMMENT ON COLUMN learn.card.person_id IS '@omit create,update';
COMMENT ON COLUMN learn.card.created_at IS '@omit create,update';