// ---------------------------------------------------------------
// Example: CMS Medicare Advantage (Part C) coverage
// ---------------------------------------------------------------
Instance: haau3-coverage-medicare-part-c
InstanceOf: Haau3Coverage
Title: "Medicare Part C"
Usage: #example
Description: """
Example CMS Medicare Advantage (Part C) coverage imported from Blue Button,
normalized with a haau3 coverage identifier and tagged with source-system
and enrichment metadata.
"""

* id = "ef9b8f50-083d-4b82-9b48-ab4f372d6c59"
* status = #active

// Type
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding[0].code = #SUBSIDIZ

// Beneficiary (Blue Button patient mapped into haau3)
* beneficiary.reference = "Patient/grandma-fung"

// Class: group + plan (Medicare Part C)
* class[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/coverage-class"
* class[0].type.coding[0].code = #group
* class[0].type.coding[0].display = "Group"
* class[0].value = "Medicare"

* class[1].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/coverage-class"
* class[1].type.coding[0].code = #plan
* class[1].type.coding[0].display = "Plan"
* class[1].value = "Part C"

// haau3 coverage identifier (stable coverage id)
* identifier[haau3].system = $Haau3CoverageIdNS
* identifier[haau3].value = "cms-medicare-part-c-1S00EU7JH19"

// Required subscriberId (MBI in this case)
* subscriberId = "1S00EU7JH19"

// Relationship
* relationship.coding[0].system = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* relationship.coding[0].code = #self
* relationship.coding[0].display = "Self"

// Payor bound to canonical CMS Organization
* payor[0].type = "Organization"
* payor[0].reference = "Organization/cms"
* payor[0].display = "Centers for Medicare & Medicaid Services (CMS)"

// Blue Button–specific extensions
* extension[0].url = "https://bluebutton.cms.gov/resources/variables/ptc_cntrct_id_01"
* extension[0].valueCoding.system = "https://bluebutton.cms.gov/resources/variables/ptc_cntrct_id_01"
* extension[0].valueCoding.code = #Y0008

* extension[1].url = "https://bluebutton.cms.gov/resources/variables/ptc_cntrct_id_02"
* extension[1].valueCoding.system = "https://bluebutton.cms.gov/resources/variables/ptc_cntrct_id_02"
* extension[1].valueCoding.code = #Y0008

* extension[2].url = "https://bluebutton.cms.gov/resources/variables/ptc_cntrct_id_03"
* extension[2].valueCoding.system = "https://bluebutton.cms.gov/resources/variables/ptc_cntrct_id_03"
* extension[2].valueCoding.code = #Y0008

* extension[3].url = "https://bluebutton.cms.gov/resources/variables/ptc_pbp_id_01"
* extension[3].valueCoding.system = "https://bluebutton.cms.gov/resources/variables/ptc_pbp_id_01"
* extension[3].valueCoding.code = #803

* extension[4].url = "https://bluebutton.cms.gov/resources/variables/ptc_pbp_id_02"
* extension[4].valueCoding.system = "https://bluebutton.cms.gov/resources/variables/ptc_pbp_id_02"
* extension[4].valueCoding.code = #803

* extension[5].url = "https://bluebutton.cms.gov/resources/variables/ptc_pbp_id_03"
* extension[5].valueCoding.system = "https://bluebutton.cms.gov/resources/variables/ptc_pbp_id_03"
* extension[5].valueCoding.code = #803

* extension[6].url = "https://bluebutton.cms.gov/resources/variables/rfrnc_yr"
* extension[6].valueDate = "2025"

* extension[7].url = "https://bluebutton.cms.gov/resources/variables/dual_01"
* extension[7].valueCoding.system = "https://bluebutton.cms.gov/resources/variables/dual_01"
* extension[7].valueCoding.code = #NA
* extension[7].valueCoding.display = "Non-Medicaid"

* extension[8].url = "https://bluebutton.cms.gov/resources/variables/dual_02"
* extension[8].valueCoding.system = "https://bluebutton.cms.gov/resources/variables/dual_02"
* extension[8].valueCoding.code = #NA
* extension[8].valueCoding.display = "Non-Medicaid"

* extension[9].url = "https://bluebutton.cms.gov/resources/variables/dual_03"
* extension[9].valueCoding.system = "https://bluebutton.cms.gov/resources/variables/dual_03"
* extension[9].valueCoding.code = #NA
* extension[9].valueCoding.display = "Non-Medicaid"

// Meta: source + tagging.
* meta.source = "bluebutton"
* meta.tag[0].system = "https://haau3.com/fhir/CodeSystem/source-system"
* meta.tag[0].code = #bluebutton
* meta.tag[0].display = "Imported from CMS Blue Button API"

* meta.tag[1].system = "https://haau3.com/fhir/CodeSystem/source-system"
* meta.tag[1].code = #bluebutton
* meta.tag[1].display = "CMS Blue Button"

// Enrichment tag
* meta.tag[2].system = "https://haau3.com/fhir/CodeSystem/enrichment"
* meta.tag[2].code = #coverage.cms-payor-binding
* meta.tag[2].display = "Bind Blue Button Coverage.payor to canonical CMS Organization (Organization/cms)"
* meta.tag[2].version = "1.0.0"

// Explicitly denote conformance to US Core & Carin Blue Button
* meta.profile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-coverage|6.1.0"
* meta.profile[+] = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Coverage"
