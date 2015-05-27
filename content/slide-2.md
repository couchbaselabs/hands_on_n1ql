# Part 1: Setup, Getting Started and Querying

## User friendly language

A simple query in N1QL has three parts to it:

* <b>SELECT</b> - Parts of document to return
* <b>FROM</b> - The data bucket, or data keyspace to work with
* <b>WHERE</b> - Condition the document must satisfy to be in the results


<pre id="example">
SELECT * 
  FROM contacts 
    WHERE fname = "Ian"
</pre>
