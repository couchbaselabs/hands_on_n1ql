# Part 2: Querying and Modifying Complex Data

## Array Comprehension

Array comprehensions enable building of arrays from existing one.

The query on the right builds a new array containing only children names for all contacts that have children. 
<pre id="example">
SELECT fname, ARRAY child.fname FOR child IN c.children 
				END AS children_names 
  FROM contacts c 
    WHERE children IS NOT NULL
</pre>
