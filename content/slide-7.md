# Part 1: Setup, Getting Started and Querying

## String operators - like 

Who is on Yahoo?

String matching is provided using the LIKE operator.

A % matches 0 or more characters. A _ matches exactly 1 character.

Try changing the query to show who is NOT on Yahoo?

<pre id="example">
SELECT fname, email
    FROM contacts 
        WHERE email LIKE "%@yahoo.com"
</pre>
