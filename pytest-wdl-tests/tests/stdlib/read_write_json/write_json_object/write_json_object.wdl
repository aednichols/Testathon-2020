version 1.0

workflow write_json_object {
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
    cat ~{write_json(to_write)}
  >>>

  output {
    String output_string = read_string(stdout())
  }
}
