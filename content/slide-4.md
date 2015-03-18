## Array Expressions

The ANY/EVERY - SATISFIES expression can be applied to an array to filter the data of interest. Try changing ANY to EVERY.

N1QL supplies several functions that operate on arrays:

* <b>ARRAY_LENGTH(a)</b> 
* <b>ARRAY_CONCAT(a, b)</b> 
* <b>ARRAY_APPEND(a, x)</b> 
* <b>ARRAY_PREPEND(a, x)</b> 
* <b>ARRAY_POSITION(a, x)</b> 

Try changing the query to give the number of children of each contact, instead
of giving all the children with each contact.

<pre id="example">
SELECT fname, children 
  FROM contacts  
    WHERE ANY child IN contacts.children 
	    SATISFIES child.age > 10  END
</pre>
