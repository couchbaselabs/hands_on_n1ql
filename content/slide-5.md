## Array Comprehension

Array comprehensions enable building of arrays for existing one.

This query builds a new array containing only children names for all contacts that have children. 
<pre id="example">
SELECT fname, ARRAY child.fname FOR child IN c.children 
				END AS children_names 
  FROM contacts c 
    WHERE children IS NOT NULL
</pre>
