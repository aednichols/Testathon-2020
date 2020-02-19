version 1.0

workflow write_json_map {
  call test_task

  output {
    String result = test_task.output_string
  }
}

task test_task {

  input {
    Object to_write = object { hello_string: "hello", emptystr: "" }
  }

  command <<<
    echo ~{write_json(to_write)}
  >>>

  output {
    String output_string = stdout()
  }
}
