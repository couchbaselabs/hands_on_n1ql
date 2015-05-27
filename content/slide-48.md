# Part 2: Querying and Modifying Complex Data

## DML

Updating nested data - using ARRAY_APPEND to add an element to an array.

<pre id="example">
UPDATE contacts 
  USE KEYS "baldwin" 
    SET children = ARRAY_APPEND(children, { "name": "Julie", "age": 3 } )
      RETURNING contacts
</pre>
