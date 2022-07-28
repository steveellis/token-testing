curl -w '\n' -X GET -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Token: $TOKEN" \
  -d @C:/Users/sellis/folio/token-testing/Perms.json \
  https://core-platform-okapi.ci.folio.org/perms/users?length=313