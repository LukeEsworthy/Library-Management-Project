INSERT INTO libraryapp_library
    (title, address)
VALUES
    ('Bellview Library', '500 Main Street');

INSERT INTO libraryapp_book
    (title, isbn_number, year_published, location_id, author, librarian_id)
VALUES
    ('Lamb', '59359409490', 2004, 1, 'Christopher Moore', 1);

INSERT INTO libraryapp_book
    (title, isbn_number, year_published, location_id, author, librarian_id)
VALUES
    ('Taiko', '04275747474873', 2001, 1, 'Eiji Yoshikawa', 1);

INSERT INTO libraryapp_book
    (title, isbn_number, year_published, location_id, author, librarian_id)
VALUES
    ('The Golem and the Jinni', '8592475822', 2013, 1, 'Helene Wecker', 2);

INSERT INTO libraryapp_book
    (title, isbn_number, year_published, location_id, author, librarian_id)
VALUES
    ('Don Quixote', '9781556702013', 1605, 1, 'Miguel de Cervantes', 3);

INSERT INTO libraryapp_book
    (title, isbn_number, year_published, location_id, author, librarian_id)
VALUES
    ('The Iliad', '1853262420', 1260, 1, 'Homer', 4);

SELECT
    li.id library_id,
    li.title,
    li.address,
    b.id book_id,
    b.title,
    b.author,
    b.year_published,
    b.isbn_number
FROM libraryapp_library li
    JOIN libraryapp_book b ON li.id = b.location_id
;
