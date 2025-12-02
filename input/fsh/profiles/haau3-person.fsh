Profile: Haau3Person
Parent: Person
Id: haau3-person
Title: "haau3 Person"
Description: """
An individual who manages care for one or more patients, but can also manage their own care.
"""

* identifier 1..* MS
* name 1..* MS

* link 1..* MS
* link ^slicing.discriminator.type = #profile
* link ^slicing.discriminator.path = "target"
* link ^slicing.rules = #open
* link ^slicing.ordered = false

// ------------------------------
// Slice 1: Self (Person manages their own care)
// ------------------------------
* link contains self 0..1 MS
* link[self].target only Reference(Patient)
* link[self].assurance = #level4

// ------------------------------
// Slice 2: Caregiver (Person cares for loved ones)
// ------------------------------
* link contains caregiver 0..* MS
* link[caregiver].target only Reference(RelatedPerson)
* link[caregiver].assurance = #level4
