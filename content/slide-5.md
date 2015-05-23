# Part 1: Setup, Getting Started and Querying

## Simple arithmetic and comparison

We can perform basic arithmetic and comparison in expressions.

Try using different arithmetic and comparison operators.

For example, N1QL supports BETWEEN.

<pre id="example">
SELECT fname, age, age/7 as dog_years, ROUND(age/10)  AS age_in_decades 
    FROM contacts 
        WHERE age >= 21
</pre>
