## Nest 

The NEST operator is conceptually the inverse of JOIN. Instead of producing a cross-product of matching
left and right inputs, a single result is produced for each left hand input, with the matching right 
hand inputs collected into an array.

<pre id="example">
SELECT product.name, reviews
    FROM product
      NEST reviews ON KEYS product.reviewList
        LIMIT 5
</pre>
