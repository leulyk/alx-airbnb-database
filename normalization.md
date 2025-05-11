# Normalization Steps

## First Normal Form (1NF) Normalization

- Ensure that each column in each table:
  - Have a unique name.
  - Holds atomic values or doesn't hold multiple values.

If a column in a table contains multiple values, it's better to create a separate table for it containing those values related to the current table using a foreign key.

## Second Normal Form (2NF) Normalization

- 1NF normalization must be satisfied before this.
- Ensure that there're no partial dependencies in a table meaning all non-key attributes must depend entirely on the primary key.

## Third Normal Form (3NF) Normalization

- 2NF normalization must satisfied before this.
- Ensure that there're no transitive dependencies in a table meaning a non-key attribute must not depend on another non-key attribute,
  which in turn depends on the primary key.
