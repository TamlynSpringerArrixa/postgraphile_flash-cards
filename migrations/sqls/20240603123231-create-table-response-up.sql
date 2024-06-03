CREATE TABLE learn.response (
    id serial PRIMARY KEY,
    score integer NOT NULL CHECK (score >= 0 AND score <= 3),
    review_after timestamptz NOT NULL,
    spacing integer NOT NULL CHECK (spacing >= 0),
    ease_factor integer NOT NULL CHECK (ease_factor >= 1.3),
    card_id integer NOT NULL REFERENCES learn.card (id),
    person_id integer NOT NULL REFERENCES learn.person (id),
    created_at timestamptz DEFAULT now()
);

CREATE INDEX response_card_id_idx ON learn.response (card_id);
CREATE INDEX response_person_id_idx ON learn.response (person_id);

COMMENT ON TABLE learn.response IS '@omit create,update,delete'