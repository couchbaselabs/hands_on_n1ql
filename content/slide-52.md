# Part 2: Querying and Modifying Complex Data

## Metadata

The system namespace contains system metadata. The query on the right will
provide information about all buckets (or keyspaces, to use N1QL terminology).

* <b>keyspaces</b> Information about all buckets 
* <b>indexes</b> Information about all indexes
* <b>namespaces</b> Information about all namespaces

<pre id="example"> 
SELECT *
  FROM system:keyspaces
</pre>
