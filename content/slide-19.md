# Part 1: Setup, Getting Started and Querying

## Joins

N1QL supports joining two or more keyspaces in a single query.

To accomplish a join, it is necessary to use a JOIN clause. Documents are joined on their primary keys.

In the samples, the purchases keyspace has a customerId field which is the primary key of the customer that made the purchases.

There is effectively a foreign key - primary key relationship between purchases and customers, which enables us to join them as shown.

<pre id="example">
SELECT p, c
  FROM purchases p
        JOIN customer c ON KEYS p.customerId
    LIMIT 1
</pre>
