# Part 4 : Inversion of JSON hierarchies.

## Inverting hierarchies

To invert display order for nested data. 

Create a new document where the top attributes contain information present 
in the nested attributes of the original document. Reverse the order of nested 
attributes for a given document. The sample data contains customer info with 
multiple orders per customer, having orders that consists of multiple parts.

<pre id="example">
select * from customer_profile limit 1;

</pre>

