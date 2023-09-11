/*  template for DNA sequence storage for plasmids and primers for lab members */

CREATE TABLE members (
    member_id INTEGER PRIMARY KEY,
    last_name TEXT NOT NULL,
    first_name TEXT NOT NULL
);

CREATE TABLE plasmid_stock (
    plasmid_id INTEGER PRIMARY KEY,
    plasmid_name varchar(255) NOT NULL,
    member_id int NOT NULL,
    plasmid_sequence TEXT,
    description TEXT,
    FOREIGN KEY (member_id)
        REFERENCES members (member_id)
);

CREATE TABLE primers (
    primer_id varchar(255) NOT NULL PRIMARY KEY,
    primer_sequence TEXT NOT NULL,
    member_id int NOT NULL,
    description TEXT,
    FOREIGN KEY (member_id)
        REFERENCES members (member_id)
);

