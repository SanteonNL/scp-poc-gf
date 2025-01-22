Instance: org4-patrick
InstanceOf: $nl-core-Patient
Title: "9.04 Patient Patrick Egger"
* meta.profile = $nl-core-Patient
* identifier[+].system = $uuid
* identifier[=].value = "57323419-1b3a-42a1-a5d0-2e2ea538b004"
* identifier[+].system = "http://fhir.nl/fhir/NamingSystem/bsn"
* identifier[=].value = "111222333"
* name
  * given[0] = "Patrick"
  * family = "Egger"
* telecom[+].system = #phone
* telecom[=].value = "+31612345678"
* telecom[+].system = #email
* telecom[=].value = "patrickegger@myweb.nl"
* gender = #male
* birthDate = "1984-04-01"
* managingOrganization = Reference(urn:uuid:org4-organization4) "Organization 4"