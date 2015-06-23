# Part 3 : Indexing and Query Tuning

## Partial index

Explain the query and check the index selection.

<pre id="example"> 
SELECT COUNT(*) 
    FROM reviews 
       WHERE rating = 1;
</pre>
