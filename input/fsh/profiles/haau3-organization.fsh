Profile: Haau3Organization
Parent: $USCoreOrganization
Id: haau3-organization
Title: "haau3 Organization"
Description: """
Organizations relevant to haau3, including payers, providers, and plan
sponsors imported from Blue Button / payer APIs.
"""

* ^status = #draft

// Required by US Core
//* active 1..1 MS
//* name 1..1 MS

// Provenance
* meta.tag MS
