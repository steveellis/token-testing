# FOLIO Token testing

This repo has two things:
1. Scripts, module descriptors, and deployment descriptors for configuring the Rancher environment
2. An html file (tester.html) that can be used to test getting a token and refreshing it using the new token endpoints using XHR/Fetch.

## Using the tester.html file
Loading does the login and sets the cookies. Then you can use the various links to see things like refresh and logout work.

Open the Network tab in developer tools to inspect the results. Notice how cookies are set on login, and then sent in subsequent requests like the inventory search or the refresh endpoint.

Edit the tester.html file to test things against something other than the rancher environment.

## Helpful commands for configuring the rancher env

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
