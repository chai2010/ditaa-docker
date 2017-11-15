# [docker container for ditaa](http://ditaa.sourceforge.net/)

[![Build Status](https://travis-ci.org/chai2010/ditaa-docker.svg)](https://travis-ci.org/chai2010/ditaa-docker)
[![Docker Build Status](https://img.shields.io/docker/build/chai2010/ditaa.svg)](https://hub.docker.com/r/chai2010/ditaa/)
[![License](http://img.shields.io/badge/license-apache%20v2-blue.svg)](https://github.com/chai2010/ditaa-docker/blob/master/LICENSE)


- https://github.com/chai2010/ditaa-docker
- https://hub.docker.com/r/chai2010/ditaa
- https://github.com/stathissideris/ditaa
- http://ditaa.sourceforge.net

## Usage

```
# create txt file
$ cat << EOF > simple.txt
    +--------+   +-------+    +-------+
    |        | --+ ditaa +--> |       |
    |  Text  |   +-------+    |diagram|
    |Document|   |!magic!|    |       |
    |     {d}|   |       |    |       |
    +---+----+   +-------+    +-------+
        :                         ^
        |       Lots of work      |
        +-------------------------+
EOF

# generate png file
$ docker run --rm -it  -v `pwd`:/root chai2010/ditaa simple.txt output.png 
```

Output:

![](output.png)

