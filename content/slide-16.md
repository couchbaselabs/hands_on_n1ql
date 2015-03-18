## Nest 

The NEST operator collects the right hand input into an array; we can use 
array comprehension to select the detail we are interested in
<pre id="example">
SELECT product.name, 
        ARRAY review.rating FOR review IN reviews END AS review_detail
  FROM product
    NEST reviews ON KEYS product.reviewList
</pre>
