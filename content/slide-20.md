# Part 1: Setup, Getting Started and Querying

## Querying primary keys

Specific primary keys within a bucket can be queried using the USE KEYS clause.

The query on the right fetches documents from the contacts keyspace with the restriction that the primary key must 
be in the USE KEYS clause.

<pre id="example">
SELECT fname, email
  FROM contacts
    USE KEYS ["dave", "ian"]

</pre>
