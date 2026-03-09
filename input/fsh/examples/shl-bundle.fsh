Alias: $v3-ObservationValue = http://terminology.hl7.org/CodeSystem/v3-ObservationValue
Alias: $patient-shared-category = https://cms.gov/fhir/CodeSystem/patient-shared-category

Instance: GOFSH-GENERATED-ID-0
InstanceOf: ShlBundle
Usage: #example
* type = #collection
* timestamp = "2026-01-30T12:00:00Z"
* entry[0].fullUrl = "urn:uuid:b5e506f4-e14c-4e27-9543-4b8d1e1f3e2a"
* entry[=].resource = Inline-Instance-for-GOFSH-GENERATED-ID-0-1
* entry[+].fullUrl = "urn:uuid:c7a2f8e1-3d4b-5c6a-9e8f-0a1b2c3d4e5f"
* entry[=].resource = Inline-Instance-for-GOFSH-GENERATED-ID-0-2

Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-1
InstanceOf: Patient
Usage: #inline
* name.given = "Jessica"
* name.family = "Argonaut"
* birthDate = "1985-03-15"
* gender = #female

Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-2
InstanceOf: PatientSharedDocumentReference
Usage: #inline
* meta.security = $v3-ObservationValue#PATAST "patient asserted"
* status = #current
* type = $loinc#60591-5 "Patient summary Document"
* category = $patient-shared-category#patient-shared "Patient-Shared"
* subject = Reference(urn:uuid:b5e506f4-e14c-4e27-9543-4b8d1e1f3e2a)
* author = Reference(urn:uuid:b5e506f4-e14c-4e27-9543-4b8d1e1f3e2a)
* date = "2026-01-30T12:00:00Z"
* description = "Patient-shared health summary"
* content.attachment.contentType = #application/pdf
* content.attachment.data = "JVBERi0xLjQKJeLjz9MKMSAwIG9iago8PC9UeXBlIC9DYXRhbG9nPj4KZW5kb2JqCjIgMCBvYmoKPDwvVHlwZSAvUGFnZXMvQ291bnQgMT4+CmVuZG9iagozIDAgb2JqCjw8L1R5cGUgL1BhZ2UvUGFyZW50IDIgMCBSPj4KZW5kb2JqCnhyZWYKMCA0CjAwMDAwMDAwMDAgNjU1MzUgZgovZW5kc3RyZWFtCmVuZG9iagp0cmFpbGVyCjw8L1NpemUgND4+CnN0YXJ0eHJlZgo5OQolJUVPRgo="
