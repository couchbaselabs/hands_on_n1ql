# Part 1: Setup, Getting Started and Querying

## NULL and MISSING values

JSON documents can contain NULL values. In addition, fields present in one document
may not be present in another. The IS/IS NOT/NULL/MISSING operators lets you test for 
these values.

Try changine the query to show only contacts that have children.

<pre id="example">
SELECT fname, children
  FROM contacts
     WHERE children IS NULL
</pre>
