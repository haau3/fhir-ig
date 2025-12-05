// ===============================================================
// CodeSystems for haau3
// ===============================================================

// ---------------------------------------------------------------
// 1. Source System CodeSystem
// ---------------------------------------------------------------
Instance: Haau3SourceSystem
InstanceOf: CodeSystem
Usage: #definition
Description: "Codes that indicate which source system a resource or data element originated from (e.g., Blue Button, Epic)."
* id = "source-system"
* url = "https://haau3.com/fhir/CodeSystem/source-system"
* name = "Haau3SourceSystem"
* title = "haau3 Source System Codes"
* status = #active
* experimental = false
* date = "2025-10-05"
* publisher = "haau3"
* contact.name = "haau3"
* contact.telecom.system = #email
* contact.telecom.value = "hello@haau3.com"
* description = "Source system codes used in haau3 to tag the origin of data."
* caseSensitive = true
* content = #complete

// Concepts
* concept[0].code = #bluebutton
* concept[0].display = "CMS Blue Button"
* concept[0].definition = "Data originating from the CMS Blue Button APIs."

* concept[1].code = #epic
* concept[1].display = "Epic"
* concept[1].definition = "Data originating from Epic or its associated patient portals."

* concept[2].code = #athena
* concept[2].display = "Athenahealth"
* concept[2].definition = "Data originating from Athenahealth APIs or portals."

* concept[3].code = #haau3
* concept[3].display = "haau3"
* concept[3].definition = "Data created or derived internally within the haau3 platform."

// ---------------------------------------------------------------
// 2. Enrichment CodeSystem
// ---------------------------------------------------------------
Instance: Haau3Enrichment
InstanceOf: CodeSystem
Usage: #definition
Description: "Tags indicating that haau3 has enriched or derived data based on external knowledge or processing."
* id = "enrichment"
* url = "https://haau3.com/fhir/CodeSystem/enrichment"
* name = "Haau3Enrichment"
* title = "haau3 Enrichment Tags"
* status = #active
* experimental = false
* date = "2025-10-05"
* publisher = "haau3"
* contact.name = "haau3"
* contact.telecom.system = #email
* contact.telecom.value = "hello@haau3.com"
* description = "Codes used by haau3 to tag resources that have been enriched or derived (e.g., CMS payor bindings)."
* caseSensitive = true
* content = #fragment

// Example concept for CMS payor binding enrichment.
// Versions (e.g., coverage.cms-payor-binding@2025.10) are handled via Coding.version or as app-level detail.
* concept[0].code = #coverage.cms-payor-binding
* concept[0].display = "Coverage CMS payor binding"
* concept[0].definition = "Indicates that the Coverage has been enriched with CMS-based payor binding logic."
