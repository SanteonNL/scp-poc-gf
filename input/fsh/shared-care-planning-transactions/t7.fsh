Instance: cps-task-01-02
InstanceOf: Task
Usage: #example
Title: "1.42.1 Task acceptance"
Description: "Updating a task for telemonitoring to status accepted"
* meta.versionId = "2"
* contained[+] = org1-servicerequest-telemonitoring
* contained[+] = org1-cardiologist-carolinevandijk
* contained[+] = org2-hcs1
* status = #accepted
* intent = #order
* code = $task-code#fullfill
* insert RefIdentifier(focus, ServiceRequest, 1, $uuid, urn:uuid:37063bd0-d6bb-4fe0-b73c-26532f297d4b, $ura, 11111111, org1)
* reasonCode.coding = $sct#84114007 "Hartfalen"
* insert RefIdentifier(for, Patient, 1, $bsn, 111222333, $ura, 11111111, org1)
* insert RefIdentifier(requester, PractitionerRole, 1, $uzi, UZI-1, $ura, 11111111, org1)
* insert RefIdentifier(owner, HealthcareService, 2, $uuid, urn:uuid:91a9be09-eb97-4c0f-9a61-27a1985ae38b, $ura, 11111111, org1)


Instance: cps-bundle-06
InstanceOf: Bundle
Usage: #example
Title: "1.42.2 Bundle"
Description: "Bundle to update Task 1"
* meta.versionId = "1"
* type = #transaction
* insert BundleEntryPUT(cps-task-01-02, #PUT, Task/{{task1id}},{{task1etag}})

Instance: cps-task-signature-01-02
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
* insert RefIdentifier(agent.who, HealthcareService, 2, $uuid, urn:uuid:91a9be09-eb97-4c0f-9a61-27a1985ae38b, $ura, 22222222, org2)
* insert RefIdentifier(agent.onBehalfOf, Organization, 2, $ura, 22222222, $ura, 22222222, org2)
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5 "Verification Signature"
* signature.when = "2024-12-19T15:41:12+01:00"
* insert RefIdentifier(signature.who, Organization, 2, $ura, 11111111, $ura, 22222222, org2)
* signature.targetFormat = #application/fhir+json
* signature.sigFormat = #application/jose
// signature data created using: https://test.webpki.org/jws-ct/create
// FHIR R6 JSON Signature Rules should be applied: https://build.fhir.org/datatypes.html#JSON 
// copy best practices from: https://hl7.org/fhir/us/davinci-cdex/signatures.html#digital-signatures
* signature.data = "c29tZSBzaWduYXR1cmUgZGF0YQ=="