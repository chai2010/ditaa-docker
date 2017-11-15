# Copyright 2017 <chaishushan{AT}gmail.com>. All rights reserved.
# Use of this source code is governed by a Apache
# license that can be found in the LICENSE file.

SIMPLE_FILES=$(sort $(wildcard ./testdata/*.txt))

build:
	docker build -t ditaa -f ./Dockerfile .
	@docker image prune -f 1>/dev/null 2>&1
	@echo "ok"

test:
	@for file in $(SIMPLE_FILES) ; do \
		docker run --rm -it  -v `pwd`:/root ditaa $$file $$file.png ; \
	done
	@echo "ok"

clean:
	-rm $(wildcard ./testdata/*.txt.png)

