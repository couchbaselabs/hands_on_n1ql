# Indexing and Query Tuning

Let's access a document based on the document key.

META(keyspace).id retrieves the document key.

<pre id="example"> 
SELECT * FROM purchases 
    WHERE META(purchases).id = 'purchase4949';
</pre>

