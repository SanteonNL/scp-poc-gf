Instance: org3-patrick
InstanceOf: $nl-core-Patient
Title: "9.03 Patient Patrick Egger"
* meta.profile = $nl-core-Patient
* identifier[+].system = "http://organization3.example.org/EHR/patients"
* identifier[=].value = "vfcb dxz"
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
* managingOrganization = Reference(urn:uuid:org3-organization3) "Organization 3"