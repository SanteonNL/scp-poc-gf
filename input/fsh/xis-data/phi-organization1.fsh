Instance: org1-patrick
InstanceOf: $nl-core-Patient
Title: "9.01 Patient Patrick Egger"
* meta.profile = $nl-core-Patient
* identifier[0].system = "http://organization1.example.org/EHR/patients"
* identifier[=].value = "123456"
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
* managingOrganization = Reference(urn:uuid:org1-organization1) "Organization 1"

Instance: org1-copd
InstanceOf: Condition
Usage: #example
Title: "9.01 Condition COPD"
* meta.profile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Problem"
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-03T12:00:00Z"
* id = "143214345325432"
* code = $sct#13645005 "Chronic obstructive pulmonary disease"
* subject = Reference(urn:uuid:org1-patrick) // Patient Patrick Egger

Instance: org1-heartfailure
InstanceOf: Condition
Usage: #example
Title: "9.01 Condition heartfailure"
* meta.profile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Problem"
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-03T12:00:00Z"
* id = "56476575765"
* code = $sct#84114007 "Hartfalen"
* subject = Reference(urn:uuid:org1-patrick) // Patient Patrick Egger

Instance: org1-servicerequest-telemonitoring
InstanceOf: ServiceRequest
Usage: #example
Title: "9.01 ServiceRequest Telemonitoring"
* meta.profile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Procedure-request"
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-03T12:00:00Z"
* identifier.system = $uuid
* identifier.value = "urn:uuid:37063bd0-d6bb-4fe0-b73c-26532f297d4b"
* status = #active
* intent = #order
* subject = Reference(urn:uuid:org1-patrick) "Patient Patrick Egger"
* requester = Reference(urn:uuid:org1-cardiologist-carolinevandijk) "Caroline van Dijk at Organization 1"
* code = $sct#719858009 "monitoren via telegeneeskunde (regime/therapie)"
* reasonReference = Reference(urn:uuid:org1-heartfailure) "Diagnose Hartfalen"
//* orderDetail.text = "COPD Thuismonitoring pakket Light"
//* patientInstruction = "# streefwaarden\n- 30 kg\n- 180 cm\n# aantekeningen\n- Grote hond\n-grote mond\n"