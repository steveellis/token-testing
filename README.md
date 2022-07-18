Get a list of all modules:
`curl -H X-Okapi-Token:$TOKEN https://core-platform-okapi.ci.folio.org/_/proxy/modules`

Post the module descriptor to okapi:
`curl -d@ModAuthTokenMd.json X-Okapi-Token:$TOKEN https://core-platform-okapi.ci.folio.org/_/proxy/modules`

Post the deployment descriptor to okapi:
`curl -d@ModAuthTokenDd.json X-Okapi-Token:$TOKEN https://core-platform-okapi.ci.folio.org/_/discovery/modules`

To see what discovery thinks of modules:
```
curl -H X-Okapi-Token:$TOKEN https://core-platform-okapi.ci.folio.org/_/discovery/modules
```
Returns stuff like this:
```
{
  "instId" : "mod-authtoken-2.12.0-SNAPSHOT.118",
  "srvcId" : "mod-authtoken-2.12.0-SNAPSHOT.118",
  "url" : "http://mod-authtoken"
}
```
So I think that is what we should do with the deployment descriptors.