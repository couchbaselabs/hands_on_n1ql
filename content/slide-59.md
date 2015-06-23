# Part 3 : Indexing and Query Tuning

## Creating an index on a specific attribute
create in index on lastName;

<pre id="example"> 
 CREATE INDEX idx_customer_lastName ON customer(lastName) USING GSI;
</pre>
