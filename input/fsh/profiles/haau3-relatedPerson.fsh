Profile: Haau3RelatedPerson
Parent: $USCoreRelatedPerson
Id: haau3-relatedPerson
Title: "haau3 Related Person"
Description: """
Individuals related to the patient like caregivers, family members, or guardians.
"""
* patient only Reference(Haau3Patient)
* relationship 1..*
* name 1..*
