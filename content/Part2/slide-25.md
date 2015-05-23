## Review

Thank you!

Questions?

<pre id="example"> 
SELECT contacts.relation, COUNT(*) AS count, AVG(c.age) AS avg_age
    FROM contacts 
    UNNEST contacts.children c
    WHERE c.age > 10
    GROUP BY contacts.relation
    HAVING COUNT(*) > 1
    ORDER BY avg_age DESC
    LIMIT 1 OFFSET 1
</pre>
