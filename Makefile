# default target is gen-dockerfiles
.DEFAULT_GOAL := gen-dockerfiles

all: gen-dockerfiles library/caddy-godaddy

gen-dockerfiles: templates/render-dockerfiles.tmpl templates/Dockerfile.tmpl
	@gomplate \
		-t dockerfile=templates/Dockerfile.tmpl \
		-c config=./config.yml \
		-f $<

library/caddy-godaddy: templates/caddy-godaddy.tmpl config.yml 
	@gomplate \
		--plugin fileCommit=./scripts/fileCommit.sh \
		-c config=./config.yml \
		-f $< \
		-o $@
	@touch $@

.PHONY: all gen-dockerfiles
.DELETE_ON_ERROR:
.SECONDARY: