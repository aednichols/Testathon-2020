def test_write_json_object_array(workflow_runner):
    workflow_runner(
        "write_json_object_array.wdl",
        {},
        {
            "result": [
                {"str": "hi", "emptystr": ""},
                {"hello string": "hello"}
            ]
        }
    )