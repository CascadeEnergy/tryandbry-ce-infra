.PHONY: validate
validate:
	aws cloudformation validate-template --template-body file://dev-stack.yaml
