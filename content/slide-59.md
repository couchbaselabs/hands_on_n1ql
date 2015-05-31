# Indexing and Query Tuning


create in index on lastName;

<pre id="example"> 
 CREATE INDEX idx_customer_lastName ON customer(lastName) USING GSI;
</pre>
