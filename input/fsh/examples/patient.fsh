Instance: haau3-patient-example
InstanceOf: Haau3Patient
Title: "Grandma Fung"
Usage: #example
Description: "Example haau3 patient with required canonical identifier."

* id = "grandma-fung"

// required haau3 patient id
* identifier[haau3].system = $HaaU3PatientIdNS
* identifier[haau3].value = "pat-12345"

// basic demographics
* name[0].family = "Fung"
* name[0].given[0] = "Grandma"
* gender = #female
* birthDate = "1911-01-01"
