cfn_params=ProjectName=$(STACK_NAME) KeyName=$(KEY_NAME)

deploy:
	aws cloudformation deploy --stack-name $(STACK_NAME) --template-file template.json --parameter-overrides $(cfn_params)

destroy:
	aws cloudformation delete-stack --stack-name $(STACK_NAME)
