This directory contains a set of use-cases validated against the service broker schemas (for input parameters, binding output)
 
 Each use case come with a [Guerkin-formatted](https://cucumber.io/docs/reference) scenario referencing JSON-formatted user-inputs, schema and expected outcome.
 
 The plan is to automate validation of these schemas. In the meantime, they can be validated through interactive use of http://jsonschemalint.com/#/version/draft-05/markup/json or http://www.jsonschemavalidator.net/ (which supports remote references)
 
 
 TODO:
 - refactoring the schema to illustrate how broker authors can reference an official open service broker api JSON schema. They schema should greatly simplify  
 - prototype schema extensions proposed for UI hints 
 - rename request into "request-parameters"
 - broker composition
 - use description to support UI hints documentation
 - confidential input params UI hints
 - complex real life examples: 
    - [db-dumper-service](https://github.com/orange-cloudfoundry/db-dumper-service)
    - [autosleep](https://github.com/cloudfoundry-community/autosleep) 
 
DONE:
- prototype URI style meta-data:
    - why ?
        - to be more robust to future specs changes
        - to avoid confusions and name mapping/conversions
        - to help in identifying a series of exchanges in a user/sb dialog
    - what format for path ? 
       - a plain string (can be matched through regexp)
       - an array of subpath string 
        - how can this be matched ? items does not 
       - an object 
          - what to do with the v2 version ?
            - version key
            - v2 key and null value
            - move out of path
                - then rename path ? 
- per plan constraints
    - oneOf/not/allOf to reuse definitions and avoid duplication
- binding response format
- use description to document rules
- inheritance to specialize meta
    

    "provision_endpoint_properties": [
      "v2",
      "service_instances",
      ":instance_id"
    ],
    "bind_endpoint_properties": [
      "v2",
      "service_instances",
      ":instance_id",
      "service_bindings",
      "binding_id"
    ],