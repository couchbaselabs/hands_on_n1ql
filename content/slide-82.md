# Part 3 : Indexing and Query Tuning

## Example

Top 10 customers, by number of purchases.

See the query plan.

<pre id="example"> 
SELECT c.customerId, count(*) totpurchases 
    FROM purchases p INNER JOIN customer c ON KEYS p.customerId 
        GROUP BY c.customerId 
            ORDER BY COUNT(*) DESC
                LIMIT 10;
</pre>
