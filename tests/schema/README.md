This is a set of use-cases validated against the service broker schemas (for input parameters, binding output)
 
 Each use case come with a [Guerkin-formatted](https://cucumber.io/docs/reference) scenario referencing JSON-formatted user-inputs, schema and expected outcome
 
 TODO:
 - inheritance to specialize meta
 - 
 - prototype schema extensions proposed for UI hints 
 - per plan constraints
   - refactor oneOf to use definitions and avoid duplication
 - binding response format
 - broker composition
 - UI prompting users for valid values
 - confidential input params UI hints
 - complex real life examples: 
    - [db-dumper-service](https://github.com/orange-cloudfoundry/db-dumper-service)
    - [autosleep](https://github.com/cloudfoundry-community/autosleep) 
    
Failed attempts:
- dependencies to specialize meta : property or schema dependencies only work on keys, not on values. In our specialization case, we need to have a depencency on the presence of a value.