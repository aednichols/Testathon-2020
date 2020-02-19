version 1.0

workflow read_json_array {
  call test_task

  output {
    Map[String, String] result = test_task.output_json
  }
}

task test_task {
  command <<<
    echo '['
    echo '{'
    echo '  "str": "hi",'
    echo '  "emptystr": ""'
    echo '},'
    echo '{'
    echo '  "hello string": "hello"'
    echo '}'
    echo ']'
  >>>

  output {
    Map[String, String] output_json = read_json(stdout())
  }
}
