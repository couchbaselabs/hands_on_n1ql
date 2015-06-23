# Indexing and Query Tuning

## Listing specific indexes 
Let's look at the queries available for the keyspace reviews

<pre id="example"> 
SELECT * 
    FROM system:indexes 
        WHERE keyspace_id = 'reviews';
</pre>
