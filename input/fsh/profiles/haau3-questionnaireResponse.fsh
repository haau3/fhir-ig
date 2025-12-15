Profile: Haau3QuestionnaireResponse
Parent: $USCoreQuestionnaireResponse
Id: haau3-questionnaire-response
Title: "haau3 Questionnaire Response"
Description: """
An individual's response to a questionnaire/form.
"""

// US Core QR is derived from SDC's

// Req in SDC
// * questionnaire 1..1 MS
// * status 1..1 MS
// * authored 1..1 MS

// Req in US Core
// * subject 1..1 MS only Reference(US Core Patient | Resource)

* questionnaire only Canonical(Haau3Questionnaire)
