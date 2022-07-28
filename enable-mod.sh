# Using 'modules' in the path returns the modules list not the dds.
# Using 'discovery' in the path returns the deployment descriptors.
curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Token: $TOKEN" \
  -d '[{"id":"mod-users-bl-7.4.0-SNAPSHOT","action":"enable"}]' \
  https://core-platform-okapi.ci.folio.org/_/proxy/tenants/diku/install