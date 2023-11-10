# TricentisTmApi::V1ProjectsProjectKeyCyclesPost200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **parent_id** | **String** |  | [optional] |
| **planned_start_date** | **Time** |  | [optional] |
| **planned_end_date** | **Time** |  | [optional] |
| **assignee** | **String** |  | [optional] |
| **version** | [**V1ProjectsProjectKeyCyclesPost200ResponseInnerVersion**](V1ProjectsProjectKeyCyclesPost200ResponseInnerVersion.md) |  | [optional] |
| **fields** | [**Array&lt;V1ProjectsProjectKeyCyclesPostRequestInnerFieldsInner&gt;**](V1ProjectsProjectKeyCyclesPostRequestInnerFieldsInner.md) |  | [optional] |

## Example

```ruby
require 'tricentis_tm_api'

instance = TricentisTmApi::V1ProjectsProjectKeyCyclesPost200ResponseInner.new(
  id: null,
  name: null,
  parent_id: null,
  planned_start_date: null,
  planned_end_date: null,
  assignee: null,
  version: null,
  fields: null
)
```

