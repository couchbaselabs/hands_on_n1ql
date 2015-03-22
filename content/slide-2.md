## User friendly language

A simple query in N1QL has three parts to it:

* <b>SELECT</b> - Parts of document to return
* <b>FROM</b> - The data bucket, or data store to work with
* <b>WHERE</b> - Conditions the document must satisfy


<pre id="example">
SELECT * 
  FROM contacts 
    WHERE fname = "Ian"
</pre>
