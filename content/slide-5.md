# Part 1: Setup, Getting Started and Querying

## Simple arithmetic and comparison

We can perform basic arithmetic and comparison in expressions.

Try using different arithmetic and comparison operators.

For example, N1QL supports BETWEEN. Use this to select contacts between the ages of 21 and 65.

<pre id="example">
SELECT fname, age as years, age/7 as dog_years, TRUNC(age/10)  AS decades 
    FROM contacts 
        WHERE age >= 21
</pre>
