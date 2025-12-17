// ===============================================================
// Core NamingSystems
// ===============================================================


// ---------------------------------------------------------------
// 1. haau3 Patient ID
// ---------------------------------------------------------------
Instance: Haau3PatientId
InstanceOf: NamingSystem
Usage: #definition
Title: "haau3 patient identifier"
Description: "Stable haau3 patient id. Used on Patient.identifier only."
* id = "haau3-patient-id"
* name = "Haau3PatientId"
* date = "2025-10-05"
* publisher = "haau3"
* contact.name = "haau3"
* contact.telecom.system = #email
* contact.telecom.value = "hello@haau3.com"
* contact.telecom.rank = 1
* responsible = "haau3"
* status = #active
* kind = #identifier
* description = "Stable id for patients in haau3"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://haau3.com/fhir/NamingSystem/haau3-patient-id"
* uniqueId[0].preferred = true

// ---------------------------------------------------------------
// 2. Clerk User ID (Person.identifier)
// ---------------------------------------------------------------
Instance: ClerkUserId
InstanceOf: NamingSystem
Usage: #definition
Title: "Clerk identifier for an haau3 user"
Description: "Stable Clerk user id for haau3 users. Used only on Person resources."
* id = "clerk-user-id"
* name = "ClerkUserId"
* date = "2025-10-05"
* publisher = "haau3"
* contact.name = "haau3"
* contact.telecom.system = #email
* contact.telecom.value = "hello@haau3.com"
* responsible = "haau3"
* status = #active
* kind = #identifier
* description = "Stable haau3 Clerk user identifier namespace"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://haau3.com/fhir/NamingSystem/clerk-user-id"
* uniqueId[0].preferred = true

// ---------------------------------------------------------------
// 3. Epic Patient ID
// ---------------------------------------------------------------
Instance: EpicPatientId
InstanceOf: NamingSystem
Usage: #definition
Title: "Epic patient identifier"
Description: "Patient identifiers assigned by Epic systems (MyChart, Epic FHIR)."
* id = "epic-patient-id"
* name = "EpicPatientId"
* date = "2025-10-05"
* publisher = "haau3"
* contact.name = "haau3"
* contact.telecom.system = #email
* contact.telecom.value = "hello@haau3.com"
* responsible = "haau3"
* status = #active
* kind = #identifier
* description = "Epic-assigned patient identifier namespace"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://haau3.com/fhir/NamingSystem/epic-patient-id"
* uniqueId[0].preferred = true

// ---------------------------------------------------------------
// 4. Epic MRN
// ---------------------------------------------------------------
Instance: EpicMRN
InstanceOf: NamingSystem
Usage: #definition
Title: "Epic patient MRN"
Description: "Epic MRN identifier namespace."
* id = "epic-mrn"
* name = "EpicMRN"
* date = "2025-10-05"
* publisher = "haau3"
* contact.name = "haau3"
* contact.telecom.system = #email
* contact.telecom.value = "hello@haau3.com"
* responsible = "haau3"
* status = #active
* kind = #identifier
* description = "Epic Medical Record Number identifier namespace"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://haau3.com/fhir/NamingSystem/epic-mrn"
* uniqueId[0].preferred = true

// ---------------------------------------------------------------
// 5. haau3 Coverage ID (normalized coverage entries)
// ---------------------------------------------------------------
Instance: Haau3CoverageId
InstanceOf: NamingSystem
Usage: #definition
Title: "haau3 coverage identifier"
Description: """
Stable haau3 coverage id used for normalized Coverage.identifier.system.
Format: {payorCode}-{group}-{plan}-{subscriberId}.
"""
* id = "haau3-coverage-id"
* name = "Haau3CoverageId"
* date = "2025-10-05"
* publisher = "haau3"
* contact.name = "haau3"
* contact.telecom.system = #email
* contact.telecom.value = "hello@haau3.com"
* responsible = "haau3"
* status = #active
* kind = #identifier
* description = "Stable coverage id namespace for normalized haau3 coverage entries"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://haau3.com/fhir/NamingSystem/haau3-coverage-id"
* uniqueId[0].preferred = true
