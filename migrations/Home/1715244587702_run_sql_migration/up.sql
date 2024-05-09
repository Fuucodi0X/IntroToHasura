CREATE OR REPLACE VIEW "public"."online_users" AS 
 SELECT users.id,
    users.last_seen,
    users.created_at
   FROM users
  WHERE (users.last_seen >= (now() - '00:00:30'::interval));
