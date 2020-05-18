# Docker Hub Travis Deployment

### Description
Simple example of using Travis CI to push to Docker Hub the changes made to a Docker image, but only when those changes are merged into the **Master** branch.

Uses the `afte_success` phase in the Tavis CI lifecycle build in order to check if the current job is a pull request or not, and to check if the current branch is master.

If the branch of the pull request is not master, Travis only runs the test code. If the branch is master and the build is not triggered by a pull request, the code builds and pushes the docker image to docker hub.

### Author
- Rodrigo Hernando
- [@websnapcl](https://twitter.com/websnapcl)

### License MIT
