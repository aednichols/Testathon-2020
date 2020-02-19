def test_write_json_object(workflow_runner):
    workflow_runner(
        "write_json_object.wdl",
        {},
        {
            "result": "{\"hello_string\":\"hello\",\"emptystr\":\"\"}"
        }
    )