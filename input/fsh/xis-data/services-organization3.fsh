Instance: org3-organization3
InstanceOf: NlCoreHealthcareProviderOrganizationGF
Usage: #example
Title: "9.02 Organization Organization 1"
Description: "Existing data in EHR of Organization 2"
* meta.profile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization"
//* identifier.system = "http://fhir.nl/fhir/NamingSystem/ura"
* identifier[ura].value = "URA-3"
* name = "Organization 3"
* telecom[0].system = #phone
* telecom[=].value = "+31301234567"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@organization3.nl"
* telecom[=].use = #work
* address.line = "Koekoekslaan 1"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Koekoekslaan"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "1"
* address.city = "Nieuwegein"
* address.postalCode = "3435CM"


