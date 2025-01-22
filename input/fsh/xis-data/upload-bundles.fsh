Instance: services-phi-organization1
InstanceOf: Bundle
Usage: #example
Title: "9.01 Bundle of services and personal health information in EHR of Organization 1"
* meta.versionId = "1"
* type = #transaction
* insert BundleEntryWithFullurl(urn:uuid:org1-organization1, org1-organization1, #POST, Organization)
* insert BundleEntryWithFullurl(urn:uuid:org1-cardiologist-carolinevandijk, org1-cardiologist-carolinevandijk, #POST, PractitionerRole)
* insert BundleEntryWithFullurl(urn:uuid:org1-carolinevandijk, org1-carolinevandijk, #POST, Practitioner)
* insert BundleEntryWithFullurl(urn:uuid:org1-patrick, org1-patrick, #POST, Patient)
* insert BundleEntryWithFullurl(urn:uuid:org1-copd, org1-copd, #POST, Condition)
* insert BundleEntryWithFullurl(urn:uuid:org1-heartfailure, org1-heartfailure, #POST, Condition)
* insert BundleEntryWithFullurl(urn:uuid:org1-servicerequest-telemonitoring, org1-servicerequest-telemonitoring, #POST, ServiceRequest)


Instance: services-phi-organization2
InstanceOf: Bundle
Usage: #example
Title: "9.02 Bundle of services and personal health information in EHR of Organization 2"
* meta.versionId = "1"
* type = #transaction
* insert BundleEntryWithFullurl(urn:uuid:org2-organization2, org2-organization2, #POST, Organization)
* insert BundleEntryWithFullurl(urn:uuid:org2-hcs1, org2-hcs1, #POST, HealthcareService)
* insert BundleEntryWithFullurl(urn:uuid:org2-telemonitoring-heartfailure-enrollment, org2-telemonitoring-heartfailure-enrollment, #POST, Questionnaire)
* insert BundleEntryWithFullurl(urn:uuid:org2-patrick, org2-patrick, #POST, Patient)


Instance: services-phi-organization3
InstanceOf: Bundle
Usage: #example
Title: "9.03 Bundle of services and personal health information in EHR of Organization 3"
* meta.versionId = "1"
* type = #transaction
* insert BundleEntryWithFullurl(urn:uuid:org3-organization3, org3-organization3, #POST, Organization)
* insert BundleEntryWithFullurl(urn:uuid:org3-patrick, org3-patrick, #POST, Patient)


Instance: services-phi-organization4
InstanceOf: Bundle
Usage: #example
Title: "9.04 Bundle of services and personal health information in EHR of Organization 4"
* meta.versionId = "1"
* type = #transaction
* insert BundleEntryWithFullurl(urn:uuid:org4-organization4, org4-organization4, #POST, Organization)
* insert BundleEntryWithFullurl(urn:uuid:org4-patrick, org4-patrick, #POST, Patient)
