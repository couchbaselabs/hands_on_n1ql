# Part 1: Setup, Getting Started and Querying

## Joins

N1QL supports joining two or more keyspaces in a single query.

To accomplish a join, it is necessary to use a JOIN clause. Documents are joined using their primary keys.

The purchases keyspace has a customerId field which is the primary key of the customer that made the purchase.

There is effectively a foreign key - primary key relationship between purchases and customers, which enables us to join them as shown.

<pre id="example">
SELECT p, c
  FROM purchases p
        JOIN customer c ON KEYS p.customerId
    LIMIT 1
</pre>
