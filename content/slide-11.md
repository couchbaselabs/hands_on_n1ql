# Part 1: Setup, Getting Started and Querying

## Date operations - what time is it?

JSON does not provide a datetime type, but N1QL comes with rich functionality for working with
dates and times in both string and number format.

The function NOW_STR() returns the current date and time in <a href="http://www.iso.org/iso/home/standards/iso8601.htm">ISO-8601</a> format.

Change NOW_STR to NOW_MILLIS() to get the time in UNIX epoch milliseconds.

<pre id="example">
SELECT NOW_STR()

</pre>
