npx postgraphile \
    -c postgres://postgres:ericsson@localhost:5432/learn_postgraphile \
    --schema learn \
    --append-plugins @graphile-contrib/pg-simplify-inflector \
    --enhance-graphiql \
    --allow-explain \
    --watch


# PostGraphile v4.13.0 server listening on port 5000 🚀

#   ‣ GraphQL API:         http://localhost:5000/graphql
#   ‣ GraphiQL GUI/IDE:    http://localhost:5000/graphiql (RECOMMENDATION: add '--enhance-graphiql')
#   ‣ Postgres connection: postgres://postgres:[SECRET]@localhost/learn_postgraphile
#   ‣ Postgres schema(s):  learn
#   ‣ Documentation:       https://graphile.org/postgraphile/introduction/
#   ‣ Node.js version:     v21.7.3 on win32 x64

# Create a db schema or table
# npx db-migrate create create-schema 
# npx db-migrate create create-table-card
# [INFO] Created migration at C:\Users\tamly\Documents\postgraphile_cards\migrations\20240603092739-create-table-card.js
# [INFO] Created migration up sql file at C:\Users\tamly\Documents\postgraphile_cards\migrations\sqls\20240603092739-create-table-card-up.sql
# [INFO] Created migration down sql file at C:\Users\tamly\Documents\postgraphile_cards\migrations\sqls\20240603092739-create-table-card-down.sql
# npx db-migrate up