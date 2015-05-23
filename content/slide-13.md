# Part 1: Setup, Getting Started and Querying

## Combining multiple conditions with AND

The AND operator allow us to match documents satisfying two or more conditions.

Change AND to OR - more or less results?

<pre id="example">
SELECT fname, email, relation
    FROM contacts 
        WHERE relation IN [ "friend", "coworker" ] AND email LIKE '%@gmail.com'
</pre>
