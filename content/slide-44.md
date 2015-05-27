# Part 2: Querying and Modifying Complex Data

## Subquery

Using a subquery to provide summary information alongside product detail. This
can be useful when you would like to see summary information with each result but
do not wish to group the results.

<pre id="example"> 
SELECT p.categories, p.color, p.description, p.imageURL, p.name, p.unitPrice,
    (SELECT MIN(rating) as lowest, 
             MAX(rating) as highest, 
              TRUNC(AVG(rating), 2) as average FROM reviews 
       USE KEYS p.reviewList) as ratingInfo
FROM product p
  WHERE ANY cat IN p.categories SATISFIES lower(cat) IN [ "cycling", "golf" ] END
</pre>
