// Instance: consent-example-careplan
// InstanceOf: Consent
// Usage: #example
// * status = #active
// * scope = $consentscope#patient-privacy
// * category = $loinc#59284-0
// * insert RefIdentifier(patient, Patient, 1, $bsn, 111222333, $ura, URA-1, org1)
// * dateTime = "2016-06-16"
// * insert RefIdentifier(organization, Organization, 1, $ura, URA-1, $ura, URA-1, org1)
// * policyRule = $v3-ActCode#OPTIN
// * provision.actor[0].role = $v3-ParticipationType#PRCP
// * insert RefIdentifier(provision.actor[=].reference, PractitionerRole, 1, $uzi, UZI-1, $ura, URA-1, org1)
// * provision.actor[+].role = $v3-ParticipationType#PRCP
// * insert RefIdentifier(provision.actor[=].reference, HealthcareService, 2, $uuid, urn:uuid:91a9be09-eb97-4c0f-9a61-27a1985ae38b, $ura, URA-1, org1)
// * provision.actor[+].role = $v3-ParticipationType#PRCP
// * insert RefIdentifier(provision.actor[=].reference, Organization, 3, $ura, URA-3, $ura, URA-1, org1)
// * provision.actor[+].role = $v3-ParticipationType#CST
// * insert RefIdentifier(provision.actor[=].reference, Organization, 1, $ura, URA-1, $ura, URA-1, org1)
// * provision.actor[+].role = $v3-ParticipationType#CST
// * insert RefIdentifier(provision.actor[=].reference, Organization, 2, $ura, URA-2, $ura, URA-1, org1)
// * provision.actor[+].role = $v3-ParticipationType#CST
// * insert RefIdentifier(provision.actor[=].reference, Organization, 3, $ura, URA-3, $ura, URA-1, org1)
// * provision.action[0] = $consentaction#access
// * provision.action[+] = $consentaction#collect
// * provision.action[+] = $consentaction#use


// Instance: scp-consent-questionnaire-example
// InstanceOf: Questionnaire
// Usage: #example
// * meta.tag = $FHIR-version#4.0.1
// * contained[0] = Custodians
// * contained[1] = Participants
// * language = #nl-NL
// * title = "Vragenlijst voor consent Shared Care Planning"
// * url = "http://example.org/Questionnaire-SCP-consent|0.1"
// * identifier[+].system = $uuid
// * identifier[=].value = "urn:uuid:e6da13ea-7b75-4885-b3a0-c884f6bd3add"
// * status = #active
// * publisher = "Organization 1 B.V."
// * contact.telecom.system = #url
// * contact.telecom.value = "http://example.org"
// * experimental = false
// * date = "2024-12-11"
// * effectivePeriod.start = "2024-12-11"
// * useContext[0].code = $usage-context-type#task
// * useContext[=].valueCodeableConcept = $loinc#59284-0


// * item[+].linkId = "9f07287f-02c1-447b-9dd7-6be4baaf31c1"
// * item[=].text = "Volgens uw persoonlijke zorgnetwerk, zijn dit de organisatie die zorgdata hebben over u:"
// * item[=].code = $v3-ParticipationType#CST "custodians"
// * item[=].type = #group


// * item[=].item[=].answerValueSet = "#Custodians"

// * item[=].item[+].linkId = "3902e287-992d-4c03-b4b0-d4bf19208c69"
// * item[=].item[=].text = "Volgens uw persoonlijke zorgnetwerk, zijn dit de organisatie die zorgdata hebben over u:"
// * item[=].item[=].code = $v3-ParticipationType#CST "custodians"
// * item[=].item[=].type = #choice
// * item[=].item[=].repeats = true
// * item[=].item[=].initial[0].valueCoding = $ura#URA-1 "organization 1"
// * item[=].item[=].initial[1].valueCoding = $ura#URA-2 "organization 2"

// * item[+].linkId = "0b7239f3-08bb-4fb4-8d5b-052ca5af1d10"
// * item[=].text = "Welke partijen geeft u toestemming om deze data te gebruiken voor uw zorg?"
// * item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
// * item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete
// * item[=].code = $v3-ParticipationType#PRCP "participants"
// * item[=].type = #choice
// * item[=].repeats = true
// * item[=].initial[0].valueCoding = $sct#255299009 "Instabiel"
// * item[=].initial[1].valueCoding = $sct#58158008 "Stabiel"

// // 
// // * item[=].required = true
// // * item[=].readOnly = true

// // * item[=].answerOption[0].valueReference = Reference({{{org1}-fhir-url}}Organization/{{Organization1}})
// // * item[=].answerOption[0].valueReference.type = "Organization"
// // * item[=].answerOption[0].valueReference.identifier.system = $ura
// // * item[=].answerOption[0].valueReference.identifier.value = "URA-1"
// // * item[=].answerOption[0].valueReference.identifier.assigner.identifier.system = $ura
// // * item[=].answerOption[0].valueReference.identifier.assigner.identifier.value = "URA-1"

// // * insert RefIdentifier(item[=].answerOption[0].valueReference, Organization, 1, $ura, URA-1, $ura, URA-1, org1)
// // * insert RefIdentifier(item[=].answerOption[1].valueReference, Organization, 2, $ura, URA-2, $ura, URA-1, org1)
// // * insert RefIdentifier(item[=].answerOption[2].valueReference, Organization, 3, $ura, URA-3, $ura, URA-1, org1)
// // * item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
// // * item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#check-box


// // * item[=].repeats = true
// // * item[=].required = true
// // * insert RefIdentifier(item[=].answerOption[0].valueReference, PractitionerRole, 1, $uzi, UZI-1, $ura, URA-1, org1)
// // * insert RefIdentifier(item[=].answerOption[1].valueReference, HealthcareService, 2, $uuid, urn:uuid:91a9be09-eb97-4c0f-9a61-27a1985ae38b, $ura, URA-1, org1)
// // * insert RefIdentifier(item[=].answerOption[2].valueReference, Organization, 3, $ura, URA-3, $ura, URA-1, org1)
// // * item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
// // * item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#check-box

// // * item[+].linkId = "0b7239f3-08bb-4fb4-8d5b-052ca5af1d11"
// // * item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
// // * item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#check-box
// // * item[=].text = "test?"
// // * item[=].code = $v3-ParticipationType#PRCP "participants"
// // * item[=].type = #choice
// // * item[=].repeats = true
// // * item[=].answerOption[0].valueCoding = $ura#URA-1 "organization 1"
// // * item[=].answerOption[+].valueCoding = $ura#URA-2 "organization 2"
// // // * item[=].initial[0].valueCoding = $sct#255299009 "Instabiel"
// // // * item[=].initial[1].valueCoding = $sct#58158008 "Stabiel"
// // * item[=].required = true
// // * item[=].answerOption[+].valueReference = Reference(org1-organization1)
// // * item[=].answerOption[1].valueReference = Reference(org2-organization2) "organization 2"
// // * item[=].initial[0].valueReference = Reference(org1-organization1) "organization 1"
// // * item[=].initial[1].valueReference = Reference(org2-organization2) "organization 2"

// Instance: Custodians
// InstanceOf: ValueSet
// Usage: #inline
// * name = "Custodians"
// * title = "Custodians"
// * status = #draft
// * description = "Custodians of the patient data"
// * expansion.timestamp = "2023-09-01T11:16:50+10:00"
// * expansion.contains[0].system = $ura
// * expansion.contains[=].code = #URA-1
// * expansion.contains[=].display = "Organisatie 1"
// * expansion.contains[+].system = $ura
// * expansion.contains[=].code = #URA-2
// * expansion.contains[=].display = "Organisatie 2"

// Instance: Participants
// InstanceOf: ValueSet
// Usage: #inline
// * name = "Participants"
// * title = "Participants"
// * status = #draft
// * description = "Participants that should be able to use the data"
// * expansion.timestamp = "2023-09-01T11:16:50+10:00"
// * expansion.contains[0].system = $ura
// * expansion.contains[=].code = #URA-1
// * expansion.contains[=].display = "Organisatie 1"
// * expansion.contains[+].system = $ura
// * expansion.contains[=].code = #URA-2
// * expansion.contains[=].display = "Organisatie 2"