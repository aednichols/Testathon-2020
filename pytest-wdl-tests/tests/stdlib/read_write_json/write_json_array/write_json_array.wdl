version 1.0

workflow write_json_map {
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
    echo ~{write_json(to_write)}
  >>>

  output {
    String output_string = stdout()
  }
}
