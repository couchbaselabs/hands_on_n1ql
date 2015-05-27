# Part 1: Setup, Getting Started and Querying

## Aliasing

Both keyspace names and field names can be aliased.

Aliases are useful in certain contexts, such as self join or disambiguating field names. 
We will meet examples of both today.

<pre id="example">
SELECT c.lname as FamilyName, c.age as Years, 
        c.email as EmailAddr, c.fname as Name
  FROM contacts c
    WHERE c.fname = "Ian" 
</pre>
