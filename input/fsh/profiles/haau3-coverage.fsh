Profile: Haau3Coverage
Parent: $USCoreCoverage
Id: haau3-coverage
Title: "Coverage"
Description: """
Coverage information for haau3, primarily sourced from CARIN Blue Button /
Blue Button APIs and payer feeds. Builds on US Core Coverage and is designed
to stay aligned with Da Vinci use cases (e.g., payer-to-payer, member data
sharing) over time.
"""

// Metadata
* ^status = #draft

// Ensure we always have the Haau3 coverage identifier
* identifier contains haau3 1..1 MS

* identifier[haau3].system 1..1 MS
* identifier[haau3].system = $Haau3CoverageIdNS (exactly)
* identifier[haau3].value 1..1 MS

// Required by US Core Coverage 6.1.0
// * status 1..1 MS

// Required by Carin Blue Button IG
* subscriberId 1..1 MS // This is the Medicare Beneficiary Identifier (MBI)

// Provenance tags (source-system + enrichment)
* meta.tag MS
