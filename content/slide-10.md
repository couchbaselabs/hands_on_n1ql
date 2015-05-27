# Part 1: Setup, Getting Started and Querying

## Putting a LIMIT on things...

A LIMIT clause can be added to a query to return a limited set of documents.

This can be useful to preview  documents, particularly when given a large document set.

<pre id="example">
SELECT p_sample
  FROM purchases AS p_sample
   LIMIT 3
</pre>
