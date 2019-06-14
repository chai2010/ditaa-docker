# Copyright 2017 <chaishushan{AT}gmail.com>. All rights reserved.
# Use of this source code is governed by a Apache
# license that can be found in the LICENSE file.

FROM openjdk:11-jdk-stretch

LABEL MAINTAINER="chaishushan@gmail.com"

WORKDIR /root
COPY ./ditaa0_11 /ditaa0_11

ENTRYPOINT ["java", "-jar", "/ditaa0_11/ditaa-0.11.0-standalone.jar"]
CMD []
