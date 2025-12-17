// -------------------------------------------------------------------
// Example: Brian as caregiver for Grandma Fung
// -------------------------------------------------------------------
Instance: haau3-relatedperson-brian-for-grandma-fung
InstanceOf: Haau3RelatedPerson
Title: "RelatedPerson: Brian Fung as a caregiver"
Usage: #example
Description: "Example RelatedPerson representing Brian, caring for Grandma Fung as her grandchild."

// Local id for the RelatedPerson
* id = "brian-fung-for-grandma-fung"

// required by US Core
* active = true

// Link to the haau3 patient example
* patient.reference = "Patient/grandma-fung"
* patient.display = "Grandma Fung"

// Required by Haau3RelatedPerson: at least one relationship
* relationship[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* relationship[0].coding[0].code = #GRNDCHILD
* relationship[0].coding[0].display = "Grandchild"

// Required by Haau3RelatedPerson
* name[0].family = "Fung"
* name[0].given[0] = "Brian"
* name[0].text = "Brian Fung"

// for example purposes
* telecom[0].system = #email
* telecom[0].value = "hello@haau3.com"
* telecom[0].use = #home
