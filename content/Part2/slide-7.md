## Unnest 

The UNNEST operator joins nested arrays with the parent object.

The example query joins a contact with each of their children. In the results, each contact will appear N times, where N is 
the number of children the contact has. Contacts with no children will not be shown.

<pre id="example">
SELECT contacts.email, child 
   FROM contacts UNNEST contacts.children AS child
</pre>
