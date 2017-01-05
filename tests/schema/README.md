This is a set of use-cases validated against the service broker schemas (for input parameters, binding output)
 
 Each use case come with a [Guerkin-formatted](https://cucumber.io/docs/reference) scenario referencing JSON-formatted user-inputs, schema and expected outcome
 
 TODO:
 - prototype schema extensions proposed for UI hints 
 - use description to document rules
 - binding response format
 - broker composition
 - UI prompting users for valid values
 - use description to support UI hints documentation
 - confidential input params UI hints
 - complex real life examples: 
    - [db-dumper-service](https://github.com/orange-cloudfoundry/db-dumper-service)
    - [autosleep](https://github.com/cloudfoundry-community/autosleep) 
    
Failed attempts:
- dependencies to specialize meta : property or schema dependencies only work on keys, not on values. In our specialization case, we need to have a depencency on the presence of a value.