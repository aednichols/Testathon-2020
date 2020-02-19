def test_read_json_array(workflow_runner):
    workflow_runner(
        "test_read_json_array.wdl",
        {},
        {
            "result": [
                {"str": "hi", "emptystr": ""},
                {"hello string": "hello"}
            ]
        }
    )
