--
-- init pgcrypto
--

--
-- first, define the functions.  Turn off echoing so that expected file
-- does not depend on contents of pgcrypto.sql.
--
SET client_min_messages = warning;
\set ECHO none
\i pgcrypto.sql
\set ECHO all
RESET client_min_messages;

-- check for encoding fn's
SELECT encode('foo', 'hex');
SELECT pg_catalog.decode('666f6f', 'hex');

-- check error handling
select gen_salt('foo');
select digest('foo', 'foo');
select hmac('foo', 'foo', 'foo');
select encrypt('foo', 'foo', 'foo');

