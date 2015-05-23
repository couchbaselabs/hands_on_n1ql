# Part 1: Setup, Getting Started and Querying

## String operators - functions 

Who is on Yahoo? Another way to tell...

N1QL provides several functions for manipulating strings.

LOWER converts its input to lower case.

POSITION(first, second) returns the starting position (zero-based) of the second string in the first string.

SUBSTR(first, position, length) returns the substring of the first string starting at position and of length characters.
If omitted, length defaults to the end of the string.

<pre id="example">
SELECT fname as first_name, LOWER(email) as email_addr
    FROM contacts
       WHERE SUBSTR(email, POSITION(email, "@") + 1) = "yahoo.com"
</pre>
