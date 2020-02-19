def test_write_json_array(workflow_runner):
    workflow_runner(
        "write_json_array.wdl",
        {},
        {
            "result": "[{\"hello string\": \"hello\", \"emptystr\": \"\"}, {\"hello string 2\": \"hello2\"}]"
        }
    )