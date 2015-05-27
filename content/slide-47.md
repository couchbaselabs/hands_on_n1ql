# Part 2: Querying and Modifying Complex Data

## DML

We can use UPDATE to add to documents. The contact does not currently have a children field,
and it can be added as shown.

<pre id="example">
UPDATE contacts 
  USE KEYS "baldwin" 
    SET children = [ { "name": "Tim", "age": 7 } ]
      RETURNING contacts
</pre>
