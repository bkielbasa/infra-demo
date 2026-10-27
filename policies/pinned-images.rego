package infraguy.approval

import rego.v1

default allow := true

deny contains msg if {
	some obj in input.kubernetes.objects
	obj.kind == "Deployment"
	some image in obj.images
	not endswith(image, ":1.27.0")
	msg := sprintf("%s/%s image %s must be nginx:1.27.0", [obj.namespace, obj.name, image])
}
