# Part 2: Querying and Modifying Complex Data

## EXERCISE - SOLUTION

Update the reviews keyspace with a new field category that can have the following values:

**GOOD** if the rating is greater than or equal to 4

**OK** if the rating is greater than or equal to 2.5

**BAD** if the rating is less than 2.5

<pre id="example"> 
UPDATE reviews
  SET category = 
         CASE 
           WHEN rating >= 4 THEN "GOOD"
           WHEN rating >= 2.5 THEN "OK"
           ELSE "BAD"
         END
</pre>
