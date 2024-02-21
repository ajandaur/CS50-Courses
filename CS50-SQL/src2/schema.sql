CREATE TABLE "cards" (
    "id" INTEGER, 
    "name" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "stations" ( 
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "line" TEXT NOT NULL,
     PRIMARY KEY("id")
);

CREATE TABLE "swipes" (
    "id" INTEGER;
    "card_id" INTEGER,
    "station_id" INTEGER,
    "type" TEXT NOT NULL,
    "datetime" NUMERIC NOT NULL, CURRENT_TIMESTAMP,
    "amount" NUMERIC NOT NULL CHECK("amount" != 0),
    PRIMARY KEY("id")
    FOREIGN KEY("card_id") REFERENCES "cards"("id"),
    FOREIGN KEY("station_id") REFERENCES "stations"("id")
);