Alias: $sdcLaunchContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext
Alias: $sdcInitialExpr   = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression
Alias: $sdcDefExtract    = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract
Alias: $launchCtxCS      = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext

Instance: haau3-questionnaire-example
InstanceOf: Haau3Questionnaire
Title: "Questionnaire: Patient Demographics"
Usage: #example
Description: "Example questionnaire for patient demographics"

* id = "simple-questionnaire"
* url = "https://haau3.com/fhir/Questionnaire/patient-demographics"
* status = #active
* subjectType[0] = #Patient

// --------------------
// STU4 SDC: Launch context
// Gives you %patient (and optionally %user) in FHIRPath expressions
// --------------------
* extension[+].url = $sdcLaunchContext
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding.system = $launchCtxCS
* extension[=].extension[=].valueCoding.code = #patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient

* extension[+].url = $sdcLaunchContext
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding.system = $launchCtxCS
* extension[=].extension[=].valueCoding.code = #user
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #PractitionerRole

// --------------------
// STU4 SDC: Definition-based extraction
// Mark that this Questionnaire can extract a Patient resource
// --------------------
* extension[+].url = $sdcDefExtract
* extension[=].extension[+].url = "definition"
* extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/StructureDefinition/Patient"

// --------------------
// Patient name (group)
// --------------------
* item[+].linkId = "patient.name"
* item[=].text = "Patient name"
* item[=].type = #group
* item[=].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.name"

// Last name
* item[=].item[+].linkId = "patient.name.family"
* item[=].item[=].text = "Last name"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.name.family"

// STU4 SDC: pre-populate from %patient
* item[=].item[=].extension[+].url = $sdcInitialExpr
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%patient.name.where(use.empty() or use = 'official').family.first()"

// First name
* item[=].item[+].linkId = "patient.name.given"
* item[=].item[=].text = "First name"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.name.given"

// STU4 SDC: pre-populate from %patient
* item[=].item[=].extension[+].url = $sdcInitialExpr
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%patient.name.where(use.empty() or use = 'official').given.first()"

// --------------------
// DOB
// --------------------
* item[+].linkId = "patient.birthDate"
* item[=].text = "Date of birth"
* item[=].type = #date
* item[=].required = true
* item[=].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.birthDate"

// STU4 SDC: pre-populate from %patient
* item[=].extension[+].url = $sdcInitialExpr
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%patient.birthDate"

// --------------------
// Sex
// --------------------
* item[+].linkId = "patient.gender"
* item[=].text = "Administrative sex"
* item[=].type = #choice
* item[=].required = true
* item[=].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.gender"

// STU4 SDC: pre-populate from %patient
* item[=].extension[+].url = $sdcInitialExpr
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%patient.gender"

// Allowed answers (you can optionally set system too, but code alone is common)
* item[=].answerOption[+].valueCoding.code = #male
* item[=].answerOption[+].valueCoding.code = #female
* item[=].answerOption[+].valueCoding.code = #other
* item[=].answerOption[+].valueCoding.code = #unknown
