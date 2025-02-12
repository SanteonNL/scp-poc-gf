Instance: cps-task-01
InstanceOf: Task
Usage: #example
Title: "1.03.1 Task creation"
Description: "Initiation of a task for telemonitoring"
* meta.versionId = "1"
* contained[+] = org1-servicerequest-telemonitoring
* contained[+] = org1-cardiologist-carolinevandijk
* contained[+] = org2-hcs1
* status = #requested
* intent = #order
* code = $task-code#fullfill
* insert RefIdentifierContained(focus, ServiceRequest, org1-servicerequest-telemonitoring, $uuid, urn:uuid:37063bd0-d6bb-4fe0-b73c-26532f297d4b, $ura, 11111111)
* reasonCode.coding = $sct#84114007 "Hartfalen"
* insert RefIdentifier(for, Patient, 1, $bsn, 111222333, $ura, 11111111, org1)
* insert RefIdentifierContained(requester, PractitionerRole, org1-cardiologist-carolinevandijk, $uzi, UZI-1, $ura, 11111111)
* insert RefIdentifierContained(owner, HealthcareService, org2-hcs1, $uuid, urn:uuid:91a9be09-eb97-4c0f-9a61-27a1985ae38b, $ura, 11111111)
// * relevantHistory[+] = Reference(Provenance/urn:uuid:cps-task-signature-01)

Instance: cps-bundle-01
InstanceOf: Bundle
Usage: #example
Title: "1.03.2 Bundle"
Description: "Bundle to initiate telemonitoring"
* meta.versionId = "1"
* type = #transaction
* insert BundleEntryWithFullurl(urn:uuid:cps-task-01, cps-task-01, #POST, Task)


Instance: cps-task-signature-01
InstanceOf: Provenance
Usage: #example
// when deploying resources to a HAPIFHIR-server, it automatrically deletes the _history part (version) of the reference
// to prevent this, the extension "auto-version-references-at-path" is used here
* meta.extension.url = "http://hapifhir.io/fhir/StructureDefinition/auto-version-references-at-path"
* meta.extension.valueString = "target"
* target = Reference(Task/{{task1id}}/_history/{{task1etag}})
* recorded = "2024-12-19T15:41:12+01:00"
* reason = $v3-ActReason#TREAT "treatment"
* activity = $v3-DataOperation#CREATE "create"
* agent.type = $provenance-participant-type#author
* insert RefIdentifier(agent.who, PractitionerRole, 1, $uzi, UZI-1, $ura, 11111111, org1)
* insert RefIdentifier(agent.onBehalfOf, Organization, 1, $ura, 11111111, $ura, 11111111, org1)
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5 "Verification Signature"
* signature.when = "2024-12-19T15:41:12+01:00"
* insert RefIdentifier(signature.who, Organization, 1, $ura, 11111111, $ura, 11111111, org1)
* signature.targetFormat = #application/fhir+json
* signature.sigFormat = #application/jose
// signature data created using: https://test.webpki.org/jws-ct/create
// FHIR R6 JSON Signature Rules should be applied: https://build.fhir.org/datatypes.html#JSON 
// copy best practices from: https://hl7.org/fhir/us/davinci-cdex/signatures.html#digital-signatures
* signature.data = "c29tZSBzaWduYXR1cmUgZGF0YQ=="