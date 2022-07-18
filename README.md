curl -d@ModuleDescriptor.json https://core-platform-okapi.ci.folio.org/_/proxy/modules

# Cat out a new deployment descriptor to 
# TODO what are the properties for the DD that we want?
cat > target/DeploymentDescriptor.json { "srvcId": "mod-authtoken-2.10.1", "instId": "mod-authtoken-2.10.1-inst", "url":"http://10.0.2.15:9129" }

# Post the deployment descriptor to okapi.
curl -d@DeploymentDescriptor.json https://core-platform-okapi.ci.folio.org/_/discovery/modules