curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJkaWt1X2FkbWluIiwidHlwZSI6ImxlZ2FjeS1hY2Nlc3MiLCJ1c2VyX2lkIjoiMWVjY2MwZDgtOWI4Ni00M2QwLTg1ODgtNTllYjE5ZmViZDE5IiwiaWF0IjoxNjU4Nzg1MTkxLCJ0ZW5hbnQiOiJkaWt1In0.6EfEKfO_DQO_uO2BNLTPuxwpJMgJ8w-w5AIUKJeedqk" \
  -d @C:/Users/sellis/folio/token-testing/Perms.json \
  https://core-platform-okapi.ci.folio.org/perms/users/b80b9b9e-0669-4d09-8d9e-99cae100ce25/permissions