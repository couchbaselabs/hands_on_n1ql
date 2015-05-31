# Indexing and Query Tuning

Create the following index.

<pre id="example"> 
 CREATE INDEX idx_customer_lastName_state on customer(lastName, state) USING gsi;
</pre>
