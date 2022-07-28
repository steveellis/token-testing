curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Token: $TOKEN" \
  -d @C:/Users/sellis/folio/token-testing/$1 \
  https://core-platform-okapi.ci.folio.org/_/proxy/modules