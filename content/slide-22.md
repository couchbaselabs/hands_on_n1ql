## DML

Keys can be deleted using the DELETE clause. The returning clause in the example query on the right will return the list of keys that were deleted from the bucket

<pre id="example">
DELETE FROM contacts c 
  USE KEYS "baldwin" RETURNING c
</pre>
