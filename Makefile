.PHONY: validate
validate:
	aws cloudformation validate-template --template-body file://dev-stack.yaml

.PHONY: status
status:
	aws ec2 describe-instance-status --instance-ids i-033b6aeeea4f3b761 | jq .

.PHONY: start
start:
	aws ec2 start-instances --instance-ids i-033b6aeeea4f3b761 | jq .
