Instance: org1-organization1
InstanceOf: NlCoreHealthcareProviderOrganizationGF
Usage: #example
Title: "9.01 Organization Organization 1"
* meta.profile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization"
// * identifier[ura].system = "http://fhir.nl/fhir/NamingSystem/ura"
* identifier[ura].value = "11111111"
* name = "Organization 1"
* telecom[0].system = #phone
* telecom[=].value = "+31301234567"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@organization1.nl"
* telecom[=].use = #work
* address.line = "Koekoekslaan 1"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Koekoekslaan"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "1"
* address.city = "Nieuwegein"
* address.postalCode = "3435CM"

Instance: org1-cardiologist-carolinevandijk
InstanceOf: PractitionerRole
Usage: #example
Title: "9.01 PractitionerRole Caroline van Dijk at Organization 1"
* meta.profile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
* identifier[+].system = "http://organization1.example.org/HRM/assignments"
* identifier[=].value = "123456"
* identifier[+].system = "http://fhir.nl/fhir/NamingSystem/uzi"
* identifier[=].value = "UZI-1"
* practitioner = Reference(urn:uuid:org1-carolinevandijk)
* organization = Reference(urn:uuid:org1-organization1)
* code.coding = $sct#17561000 "Cardiologist"
* specialty.coding = $sct#394579002 "Cardiology"
* telecom[+].system = #email
* telecom[=].value = "c.vandijk@organization1.nl"


Instance: org1-carolinevandijk
InstanceOf: Practitioner
Usage: #example
Title: "9.01 Practitioner Caroline van Dijk"
* meta.profile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner"
* identifier[+].system = $uuid
* identifier[=].value = "urn:uuid:21a4c9fa-98d1-43b2-8ee6-00764f99e763"
* identifier[+].system = "http://organization1.example.org/HRM/employees"
* identifier[=].value = "1234"
* name.use = #official
* name.text = "Caroline van Dijk"
* name.family = "van Dijk"
* name.given = "Caroline"
* telecom[+].system = #phone
* telecom[=].value = "+31688888888"
* telecom[+].system = #email
* telecom[=].value = "caroline@vandijk.nl"



