# findbrewery_root


https://findbrewery.jbowl.dev/

## Containerized microservices implemented via an AWS ECS cluster using a single EC2 instance.

* Vue.js Web UI using NGINX as a web server. The client is using Google static maps API with location data returned from the Go API.
* One Go service serving a JSON interface for the Vue frontend communicating to another via gRPC.  JSON->gRPC->JSON
* The secod go service also speaking JSON / REST-ish to an open public API.



![architecture](https://github.com/jbowl/findbrewery_root/blob/main/arc.png)
