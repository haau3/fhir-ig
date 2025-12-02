Profile: Haau3Patient
Parent: $USCorePatient
Id: haau3-patient
Title: "haau3 Patient"
Description: "A care recipient."

* identifier MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice identifiers by system, including required haau3 canonical patient id."

* identifier contains haau3 1..1 MS // All patients in haau3 will have a hauu3 patient identifier

* identifier[haau3].system 1..1 MS
* identifier[haau3].system = $HaaU3PatientIdNS (exactly)
* identifier[haau3].value 1..1 MS
* identifier[haau3].type.text = "haau3 Patient Identifier"


Instance: haau3-patient-example
InstanceOf: Haau3Patient
Usage: #example
Description: "Example haau3 patient with required canonical identifier."

* id = "example-patient"

// required haau3 patient id
* identifier[haau3].system = $HaaU3PatientIdNS
* identifier[haau3].value = "pat-12345"

// basic demographics
* name[0].family = "Fung"
* name[0].given[0] = "Grandma"
* gender = #female
* birthDate = "1911-01-01"
