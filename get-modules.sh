# Using 'modules' in the path returns the modules list not the dds.
# Using 'discovery' in the path returns the deployment descriptors.
curl -w '\n' -X GET -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Token: $TOKEN" \
  https://core-platform-okapi.ci.folio.org/_/proxy/health