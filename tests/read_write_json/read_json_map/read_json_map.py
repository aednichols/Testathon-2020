def test_read_json_map(workflow_runner):
	workflow_runner("read_json_map.wdl", {}, {"result": "{\"str\":\"hi\",\"emptystr\":\"\",\"int\":57,\"float\":27.5,\"pair\":{\"left\":5,\"right\":\"hello\"},\"array\":[\"a\",\"b\",\"c\"]}"})
