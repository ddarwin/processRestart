# processRestart

A New Relic Infrastructure Agent Integration that monitors a process and restarts the process if it is down. Documentation on the structure and use of the files can be found in the [Infrastructure Integrations SDK](https://docs.newrelic.com/docs/infrastructure/integrations-sdk/get-started/intro-infrastructure-integrations-sdk) online docs. The content of this script is very simple. It verifies if the process is down, if so it executes a process start command. 

This is an example Repo and the files have not been tested. It is not a turnkey solution, yet. 

## Files

* /bin/service.sh - Define the process/service to be monitored. Echo status based on schedule.
* /templates/service-template.json - This is where you define the message if the bash executes process restart.
* /config/service-config.yaml - Define the scope of command to be executed.
* /definition/service-definition.yaml - Define how frequent you want to run your executable script via Infrastructure Integration.
