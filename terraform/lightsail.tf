resource "awslightsail_container_service" "test" {
  name        = "container-service-1"
  power       = "nano"
  scale       = 1
  is_disabled = false
  availablility_zone = "eu-west-2a"
}

resource "awslightsail_container_deployment" "test" {
  container_service_name = awslightsail_container_service.test.id
  container {
    container_name = "test1"
    image          = "amazon/amazon-lightsail:hello-world"
    port {
      port_number = 80
      protocol    = "HTTP"
    }
  }
  public_endpoint {
    container_name = "test1"
    container_port = 80
  }
}