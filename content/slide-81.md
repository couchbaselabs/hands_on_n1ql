# Part 3 : Indexing and Query Tuning

## USE KEYS

The argument to USE KEYS clause is an array.  
You can more than one value. ['purchase4949', 'purchase5050', 'purchase2020']

<pre id="example"> 
SELECT * 
    FROM purchases USE KEYS ['purchase4949'];
</pre>

