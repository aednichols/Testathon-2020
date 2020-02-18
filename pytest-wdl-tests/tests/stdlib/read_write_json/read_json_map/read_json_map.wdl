version 1.0

workflow read_json_map {
  call test_task

  output {
    String result = test_task.output_json
  }
}

task test_task {
  command <<<
    echo '{'
    echo '  "str": "hi",'
    echo '  "emptystr": "",'
    echo '  "int": 57,'
    echo '  "float": 27.5,'
    echo '  "pair": {'
    echo '    "left": 5,'
    echo '    "right": "hello"'
    echo '  },'
    echo '  "array": ["a", "b", "c"]'
    echo '}'
  >>>

  output {
    Object output_json = read_json(stdout())
  }
}
