Profile: ShlBundle
Parent: Bundle
Id: shl-bundle
Title: "SHL Bundle"
Description: """
A FHIR Bundle containing the patient summary, DocumentReference with the PDF, and optional
FHIR resources a patient wants to share. This aligns with the CMS Kill The Clipboard Spec.
"""

// Required by base R4
//* type 1..1


// Required by CMS KTC Spec
// https://hackmd.io/@Jyncr3iQS1iJA09xcuh7QA/rkGeS5cIZe#FHIR-Bundle-Profile-PatientSharedBundle
* type = #collection (exactly)
* timestamp 1..1
* entry 2..* // patient resource and documentReference are required

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    patient 1..1 and
    documentReference 1..1 and
    otherResources 0..1 // any other resources the patient wants to share

* entry[patient].resource 1..1
* entry[patient].resource only Patient
* entry[patient] ^short = "Patient whose information is being shared"
* entry[patient] ^definition = """
The Patient resource representing the individual whose information is
being shared in this bundle. The Patient SHOULD correspond to the subject referenced by the
DocumentReference and any additional clinical resources in the bundle.
"""

* entry[documentReference].resource 1..1
* entry[documentReference].resource only PatientSharedDocumentReference
* entry[documentReference] ^short = "Patient shared PDF summary"
* entry[documentReference] ^definition = """
A reference to the DocumentReference resource containing the PDF.
"""
* entry[patient] ^short = "Patient whose information is being shared"
* entry[patient] ^definition = """
A DocumentReference containing an embedded PDF summary of the patient's
health information. The PDF provides a human-readable clinical summary that can be easily
reviewed by clinicians even if they cannot process the structured
FHIR resources contained in the bundle.
"""

* entry[otherResources].resource 0..1
* entry[otherResources].resource ^short = "Optional discrete clinical resources"
* entry[otherResources].resource ^definition = """
Additional structured FHIR resources that provide clinical context (e.g. International Patient Summary) for
the patient summary. Examples may include Conditions, Medications,
Allergies, Observations, Medications, or other resources the patient
chooses to share. 
"""
