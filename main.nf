

workflow {

  TEST().view()
}

process TEST {

  container "ubuntu:latest"

  output:
    stdout()

  script:

  """
  echo ${task.attempt}
  sleep 90
  exit 255
  """
}