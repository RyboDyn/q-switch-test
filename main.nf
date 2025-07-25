

workflow {

  TEST().view()
}

process TEST {

  container "ubuntu:latest"

  output:
    stdout()

  script:
  def duration = task.previousTrace?.duration as nextflow.util.Duration
  def queue = task.attempt > 1 && duration > "1 m" ? "TowerForge-h0Zh75iShsiH8j1ORCtol" : "TowerForge-3VWsppf8adM9spVAQC2nK-work"
  """
  echo ${queue}
  sleep 10
  exit 255
  """
}