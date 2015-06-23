# Part 3 : Indexing and Query Tuning

## Performance using composite indexes
Execute this query again to see the performance difference.

Now prefix EXPLAIN to this query and execute the following:

EXPLAIN  select * from customer where lastName = "Smith" and state = "TX";

<pre id="example"> 
  SELECT * FROM customer 
      WHERE lastName = "Smith" AND state = "TX";
</pre>
