This directory contains a set of use-cases validated against the service broker schemas (for input parameters, binding output)
 
 Each use case come with a [Guerkin-formatted](https://cucumber.io/docs/reference) scenario referencing JSON-formatted user-inputs, schema and expected outcome.
 
 The plan is to automate validation of these schemas. In the meantime, they can be validated through interactive use of http://jsonschemalint.com/#/version/draft-05/markup/json or http://www.jsonschemavalidator.net/ (which supports remote references)
 
 
 TODO:
 - update the guerkins use-case format to use REST API description (e.g. curl) as user input & update existing examples to use "plan-attached schemaset" proposal
 - complex real life examples: 
     - [db-dumper-service](https://github.com/orange-cloudfoundry/db-dumper-service)
     - [autosleep](https://github.com/cloudfoundry-community/autosleep) 
 - use description to support UI hints documentation
 - confidential input params UI hints
 - explore broker composition use-case
 
