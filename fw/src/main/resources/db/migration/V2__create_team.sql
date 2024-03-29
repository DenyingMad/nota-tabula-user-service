CREATE TABLE TEAM
(
    id   BIGSERIAL NOT NULL,
    name VARCHAR,
    PRIMARY KEY (id)
);

CREATE TABLE USER_TEAM
(
    userId BIGINT NOT NULL,
    teamId BIGINT NOT NULL,
    role   VARCHAR,
    PRIMARY KEY (userId, teamId),
    FOREIGN KEY (userId) REFERENCES USERS (id),
    FOREIGN KEY (teamId) REFERENCES TEAM (id)
);
