def test_write_json_map(workflow_runner):
    workflow_runner(
        "write_json_map.wdl",
        {},
        {
            "result": "{\"hello string\": \"hello\", \"emptystr\": \"\"}"
        }
    )