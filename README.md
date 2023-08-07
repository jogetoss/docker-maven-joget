# Description

This repository is to build a Docker image to simplify the building of [Joget](https://www.joget.org) plugins with minimal dependencies.

# Usage

## Generate a plugin

```
docker run -it --rm -v ${PWD}:/usr/src/mymaven -w /usr/src/mymaven jogetworkflow/docker-maven-joget:8.0-SNAPSHOT mvn archetype:generate -DarchetypeGroupId="org.joget" -DarchetypeArtifactId="wflow-plugin-archetype" -DarchetypeVersion="8.0-SNAPSHOT" -DgroupId="org.joget.plugin" -DartifactId="custom-plugin"
```

## Build a plugin

```
docker run -it --rm -v ${PWD}:/root/.m2 -v ${PWD}:/usr/src/mymaven -w /usr/src/mymaven jogetworkflow/docker-maven-joget:8.0-SNAPSHOT mvn clean install
```

NOTE: ${PWD} is for Mac, Linux and Windows Shell. For Windows Command Prompt, replace ${PWD} with "%cd%".

# Getting Help

JogetOSS is a community-led team for open source software related to the [Joget](https://www.joget.org) no-code/low-code application platform.
Projects under JogetOSS are community-driven and community-supported.
To obtain support, ask questions, get answers and help others, please participate in the [Community Q&A](https://answers.joget.org/).

# Contributing

This project welcomes contributions and suggestions, please open an issue or create a pull request.

Please note that all interactions fall under our [Code of Conduct](https://github.com/jogetoss/repo-template/blob/main/CODE_OF_CONDUCT.md).

# Licensing

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

NOTE: This software may depend on other packages that may be licensed under different open source licenses.
