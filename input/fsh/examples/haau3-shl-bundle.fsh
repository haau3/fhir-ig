Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $sct = http://snomed.info/sct
Alias: $cvx = http://hl7.org/fhir/sid/cvx
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $patient-shared-category = https://cms.gov/fhir/CodeSystem/patient-shared-category

Instance: haau3-shl-bundle
InstanceOf: ShlBundle
Usage: #example
* type = #collection
* timestamp = "2026-03-09T01:11:51.783Z"
* entry[0].resource = 27af2704-eeeb-484e-9be2-fc501643e75c
* entry[+].resource = 7951896b-e9cb-4090-8645-88947be86f77
* entry[+].resource = 8cf2b9ec-d104-4bab-b52b-84c21ec03379
* entry[+].resource = cfe49194-5a74-4a13-ba96-287c5840c764
* entry[+].resource = f393da3c-0dec-4e4c-bc5d-91c450dca73e
* entry[+].resource = b2010cc5-6f97-427a-8ec5-d921354a052f
* entry[+].resource = 3e82eeec-7211-4418-a3d0-f91aeade1372
* entry[+].resource = fa455539-bb3d-4ffc-b10c-adaa9b659952
* entry[+].resource = 658c82b8-ef78-4b80-adbf-3ae65f18ceff
* entry[+].resource = share-doc-27af2704-eeeb-484e-9be2-fc501643e75c

Instance: 27af2704-eeeb-484e-9be2-fc501643e75c
InstanceOf: Haau3Patient
Usage: #inline
* birthDate = "1999-08-01"
* gender = #male
* identifier[haau3].system = "https://haau3.com/fhir/NamingSystem/haau3-patient-id"
* identifier[haau3].value = "b6cad049-7dba-4c8a-b34d-9c1f910728ee"
* name.family = "Fung"
* name.given = "Brian"
* name.text = "Brian Fung"

Instance: 7951896b-e9cb-4090-8645-88947be86f77
InstanceOf: MedicationRequest
Usage: #inline
* dosageInstruction.text = "1 tablet by mouth twice daily"
* intent = #order
* medicationCodeableConcept = $rxnorm#861007 "metFORMIN hydrochloride 500 MG Oral Tablet"
* medicationCodeableConcept.text = "metFORMIN hydrochloride 500 MG Oral Tablet"
* status = #active
* subject = Reference(27af2704-eeeb-484e-9be2-fc501643e75c)

Instance: 8cf2b9ec-d104-4bab-b52b-84c21ec03379
InstanceOf: AllergyIntolerance
Usage: #inline
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* code = $rxnorm#7980 "penicillin G"
* code.text = "penicillin G"
* patient = Reference(27af2704-eeeb-484e-9be2-fc501643e75c)
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"

Instance: cfe49194-5a74-4a13-ba96-287c5840c764
InstanceOf: Condition
Usage: #inline
* category = $condition-category#problem-list-item "Problem List Item"
* clinicalStatus = $condition-clinical#active "Active"
* code = $sct#44054006 "Diabetes mellitus type 2 (disorder)"
* code.text = "Diabetes mellitus type 2 (disorder)"
* subject = Reference(27af2704-eeeb-484e-9be2-fc501643e75c)

Instance: f393da3c-0dec-4e4c-bc5d-91c450dca73e
InstanceOf: Immunization
Usage: #inline
* meta.lastUpdated = "2026-03-09T00:54:44.583673+00:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* meta.versionId = "MTc3MzAxNzY4NDU4MzY3MzAwMA"
* occurrenceDateTime = "2026-03-09T00:54:44.463Z"
* patient = Reference(27af2704-eeeb-484e-9be2-fc501643e75c)
* primarySource = true
* status = #completed
* vaccineCode = $cvx#140 "Influenza, seasonal, injectable"
* vaccineCode.text = "Influenza vaccine"

Instance: b2010cc5-6f97-427a-8ec5-d921354a052f
InstanceOf: Observation
Usage: #inline
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* code.text = "Hemoglobin A1c"
* effectiveDateTime = "2026-03-09T00:54:41.845Z"
* status = #final
* subject = Reference(27af2704-eeeb-484e-9be2-fc501643e75c)
* valueQuantity = 7.1 '%' "%"

Instance: 3e82eeec-7211-4418-a3d0-f91aeade1372
InstanceOf: Observation
Usage: #inline
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8480-6 "Systolic blood pressure"
* code.text = "Systolic blood pressure"
* effectiveDateTime = "2026-03-09T00:54:39.937Z"
* status = #final
* subject = Reference(27af2704-eeeb-484e-9be2-fc501643e75c)
* valueQuantity = 120 'mm[Hg]' "mmHg"

Instance: fa455539-bb3d-4ffc-b10c-adaa9b659952
InstanceOf: Device
Usage: #inline
* deviceName.name = "Continuous Glucose Monitor"
* deviceName.type = #user-friendly-name
* patient = Reference(27af2704-eeeb-484e-9be2-fc501643e75c)
* status = #active
* type.text = "Continuous glucose monitor"

Instance: 658c82b8-ef78-4b80-adbf-3ae65f18ceff
InstanceOf: Procedure
Usage: #inline
* code = $sct#73761001 "Colonoscopy"
* code.text = "Colonoscopy"
* performedDateTime = "2026-03-09T00:54:46.890Z"
* status = #completed
* subject = Reference(27af2704-eeeb-484e-9be2-fc501643e75c)

Instance: share-doc-27af2704-eeeb-484e-9be2-fc501643e75c
InstanceOf: PatientSharedDocumentReference
Usage: #inline
* status = #current
* type = $loinc#60591-5 "Patient summary Document"
* category = $patient-shared-category#patient-shared "Patient-Shared"
* author = Reference(27af2704-eeeb-484e-9be2-fc501643e75c)
* date = "2026-03-09T01:11:51.783Z"
* subject = Reference(27af2704-eeeb-484e-9be2-fc501643e75c)
* description = "Shared health summary PDF"
* content.attachment.contentType = #application/pdf
* content.attachment.title = "Shared health summary"
* content.attachment.data = "JVBERi0xLjQKJeLjz9MKMSAwIG9iago8PC9UeXBlIC9DYXRhbG9nPj4KZW5kb2JqCjIgMCBvYmoKPDwvVHlwZSAvUGFnZXMvQ291bnQgMT4+CmVuZG9iagozIDAgb2JqCjw8L1R5cGUgL1BhZ2UvUGFyZW50IDIgMCBSPj4KZW5kb2JqCnhyZWYKMCA0CjAwMDAwMDAwMDAgNjU1MzUgZgovZW5kc3RyZWFtCmVuZG9iagp0cmFpbGVyCjw8L1NpemUgND4+CnN0YXJ0eHJlZgo5OQolJUVPRgo="
