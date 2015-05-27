# Part 2: Querying and Modifying Complex Data

## EXERCISE

Update the reviews keyspace with a new field category that can have the following values:

**GOOD** if the rating is greater than or equal to 4

**OK** if the rating is greater than or equal to 2.5

**BAD** if the rating is less than 2.5

<pre id="example"> 
SELECT r
  FROM reviews r
    LIMIT 1
</pre>
