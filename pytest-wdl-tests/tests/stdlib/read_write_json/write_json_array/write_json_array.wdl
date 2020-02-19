version 1.0

workflow write_json_array {
  call test_task

  output {
    String result = test_task.output_string
  }
}

task test_task {

  input {
    Array[Map[String, String]] to_write = [{"hello string": "hello", "emptystr": ""}, {"hello string 2": "hello2"}]
  }

  command <<<
    cat ~{write_json(to_write)}
  >>>

  output {
    String output_string = read_string(stdout())
  }
}
