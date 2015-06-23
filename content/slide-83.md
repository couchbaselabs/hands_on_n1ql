## <b>Part 4 : Inversion of JSON hierarchies.</b>

This section demonstrates how to invert JSON hierarchies using N1QL.

Suppose you have JSON documents with the following structure:
+ Each top-level document represents a customer
+ Each customer contains an array of orders
+ Each order contains a part (product)

The exercise is to invert the data while preserving the relationships,
so that:
+ Each top-level result represents a part
+ Each part contains an array of orders
+ Each order contains a customer

First, let us look at a sample source document. Run the query on the
right.

<pre id="example">
select * from customer_profile limit 1;

</pre>

