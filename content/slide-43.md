# Part 2: Querying and Modifying Complex Data

## Subquery

Using a subquery as an alternative to a join to filter reviews based
on some product detail.

<pre id="example"> 
SELECT r
  FROM reviews r
    WHERE productId WITHIN (SELECT  META(product).id
                              FROM product USE KEYS r.productId
                                WHERE color = "orange") 
                    AND rating > 4
</pre>
