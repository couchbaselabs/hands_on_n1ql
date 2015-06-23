# Part 3 : Indexing and Query Tuning
 
## List of Indexes from system catalog
Let's look at indexes you're already using so far.

Primay indexes have already been created for each key space.
Observe the type of index.  It's GSI (Global Secondary Index).
Note the name and keys of the index.

<pre id="example"> 
SELECT * 
    FROM system:indexes;
</pre>
