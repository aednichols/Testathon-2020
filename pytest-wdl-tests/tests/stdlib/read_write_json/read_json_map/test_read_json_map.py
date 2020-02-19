def test_read_json_map(workflow_runner):
	workflow_runner(
		"read_json_map.wdl",
		{},
		{
			"result": {"str": "hi", "emptystr": ""}
		}
	)
