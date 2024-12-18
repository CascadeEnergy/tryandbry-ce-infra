.PHONY: validate-ec2
validate-ec2:
	aws cloudformation validate-template --template-body file://dev-ec2.yaml

.PHONY: validate-alb
validate-alb:
	aws cloudformation validate-template --template-body file://dev-alb.yaml
