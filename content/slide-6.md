## Keys

The USE KEYS clause can be used to specify specific primary keys. If a primary key value does not identify a document, no result will be returned for that value.

The primary keys of a set of documents, as well as other metadata, can be found using the
META function. Try running the query:

<span style="color: red">
SELECT META(contacts) FROM contacts
</span>

<pre id="example">
SELECT email, children 
   FROM contacts USE keys [ "dave", "earl", "fred" ]  
     WHERE ANY child IN contacts.children SATISFIES child.age < 21  END
</pre>
