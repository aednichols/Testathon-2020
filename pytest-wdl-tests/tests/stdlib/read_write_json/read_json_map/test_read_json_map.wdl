version 1.0

workflow read_json_map {
  call test_task

  output {
    Map[String, String] result = test_task.output_json
  }
}

task test_task {
  command <<<
    echo '{'
    echo '  "str": "hi",'
    echo '  "emptystr": ""'
    echo '}'
  >>>

  output {
    Map[String, String] output_json = read_json(stdout())
  }
}
