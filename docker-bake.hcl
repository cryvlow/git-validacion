variable "IMAGE_NAME" {
  default = "mi-app"
}

target "build" {
  dockerfile = "Dockerfile"
  context = "."
  tags = ["${IMAGE_NAME}:latest"]
}

target "validate-build" {
  inherits = ["build"]
  call = "check"
}