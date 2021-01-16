gendiff:
	node bin/gendiff.js
install:
	install-deps
install-deps:
	npm ci
lint:
	npx eslint .
publish:
	npm publish --dry-run
pull:
	git pull origin $(BRANCH)
push:
	git push origin $(BRANCH)
test:
	npm test
test-coverage:
	npm test -- --coverage --coverageProvider=v8
uncommit:
	git reset --soft HEAD^

.PHONY: test