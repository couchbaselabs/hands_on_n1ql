## Documents, not rows

Data in Couchbase Server is stored in the form of documents, not rows or columns.

As documents can have nested elements and embedded arrays, a few additional operators are needed. The '.' operator is used to refer to children, and the '[]' is used to refer to an element in an array. You can use a combination of these operators to access data at any depth in a document.

<pre id="example">
SELECT children[0].fname AS cname  
  FROM contacts 
    WHERE age > 30 AND children IS NOT NULL
</pre>
