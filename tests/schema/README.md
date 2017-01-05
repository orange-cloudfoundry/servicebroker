This is a set of use-cases validated against the service broker schemas (for input parameters, binding output)
 
 Each use case come with a [Guerkin-formatted](https://cucumber.io/docs/reference) scenario referencing JSON-formatted user-inputs, schema and expected outcome.
 
 The plan is to automate validation of these schemas. In the meantime, they can be validated through interactive use of http://jsonschemalint.com/#/version/draft-05/markup/json
 
 TODO:
 - prototype schema extensions proposed for UI hints 
 - prototype URI style meta-data
 - broker composition
 - UI prompting users for valid values
 - use description to support UI hints documentation
 - confidential input params UI hints
 - complex real life examples: 
    - [db-dumper-service](https://github.com/orange-cloudfoundry/db-dumper-service)
    - [autosleep](https://github.com/cloudfoundry-community/autosleep) 
 
DONE:
- per plan constraints
    - oneOf/not/allOf to reuse definitions and avoid duplication
- binding response format
- use description to document rules
- inheritance to specialize meta
    
