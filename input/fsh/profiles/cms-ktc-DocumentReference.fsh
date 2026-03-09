Profile: PatientSharedDocumentReference
Parent: $USCoreDocumentReference 
Id: patient-shared-document-reference
Title: "Patient Shared DocumentReference"
Description: """
A DocumentReference representing a patient-shared health summary PDF.

This profile is used within the SHL Bundle to represent the
human-readable summary that a patient chooses to share. The document
is embedded directly in the resource as a base64-encoded PDF.

The Patient is both the subject of the document and one of the authors,
reflecting patient-mediated sharing of health information.

This profile aligns with the CMS Kill the Clipboard PatientSharedDocumentReference
pattern and is intended to support portable, patient-directed exchange.
"""

// required by base R4
//* status 1..1
//* content 1..*

// required by US Core 6.1.0
//* type 1..1
//* category 1..*
//* subject 1..1
//* content 1..*
//  * attachment 1..1

// required by CMS KTC Spec
* status = #current (exactly)
* type = $loinc#60591-5 (exactly)
* category = https://cms.gov/fhir/CodeSystem/patient-shared-category#patient-shared
* author 1..*
* date 1..1
* content 1..1
* content.attachment.contentType 1..1
* content.attachment.contentType = #application/pdf (exactly)
* content.attachment.data 1..1 
