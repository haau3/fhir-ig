Profile: Haau3Coverage
Parent: $USCoreCoverage
Id: haau3-coverage
Title: "haau3 Coverage"
Description: """
Coverage information for haau3, primarily sourced from CARIN Blue Button /
Blue Button APIs and payer feeds. Builds on US Core Coverage and is designed
to stay aligned with Da Vinci use cases (e.g., payer-to-payer, member data
sharing) over time.
"""

// Metadata
* ^status = #draft

// Required by US Core Coverage 6.1.0
// * status 1..1 MS

// Required by Carin Blue Button IG
* subscriberId 1..1 MS
