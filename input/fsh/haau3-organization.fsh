Profile: Haau3Organization
Parent: $USCoreOrganization
Id: haau3-organization
Title: "haau3 Organization"
Description: """
Organizations relevant to haau3, including payers, providers, and plan
sponsors imported from Blue Button / payer APIs. Extends US Core Organization
and keeps room to align with Da Vinci Plan-Net / payer directories over time.
"""

* ^status = #draft

// Required by US Core
//* active 1..1 MS
//* name 1..1 MS

// Provenance
* meta.tag MS

// -------------------------------------------------------------------
// Examples
// -------------------------------------------------------------------
Instance: haau3-organization-cms
InstanceOf: Haau3Organization
Usage: #example
Description: """
Centers for Medicare & Medicaid Services (CMS) as the payer/administrator
for Medicare fee-for-service. Seeded as a canonical payer organization in haau3.
"""

* id = "cms"
* active = true
* name = "Centers for Medicare & Medicaid Services (CMS)"

// government + payer
* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding[0].code = #govt
* type[0].coding[0].display = "Government"
* type[1].coding[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[1].coding[0].code = #pay
* type[1].coding[0].display = "Payer"

// Contact & address
* telecom[0].system = #phone
* telecom[0].value = "1-800-633-4227"
* telecom[0].use = #work

* address[0].line[0] = "7500 Security Boulevard"
* address[0].city = "Baltimore"
* address[0].state = "MD"
* address[0].postalCode = "21244"
* address[0].country = "US"

// Provenance: seeded canonical org
* meta.tag[0].system = "https://haau3.com/fhir/CodeSystem/org-origin"
* meta.tag[0].code = #seeded
* meta.tag[0].display = "Seeded canonical payer organization (haau3)"
