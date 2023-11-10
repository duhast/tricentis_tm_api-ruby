# TricentisTmApi::V1ProjectsProjectKeyTestCasesGet200ResponseItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **key** | **String** |  | [optional] |
| **project** | **String** |  | [optional] |
| **test_category** | **String** |  | [optional] |
| **test_type** | **String** |  | [optional] |
| **fields** | [**V1ProjectsProjectKeyTestCasesGet200ResponseItemsInnerFields**](V1ProjectsProjectKeyTestCasesGet200ResponseItemsInnerFields.md) |  | [optional] |
| **custom_fields** | [**Array&lt;V1ProjectsProjectKeyTestCasesGet200ResponseItemsInnerCustomFieldsInner&gt;**](V1ProjectsProjectKeyTestCasesGet200ResponseItemsInnerCustomFieldsInner.md) |  | [optional] |
| **ttm_fields** | [**V1ProjectsProjectKeyTestCasesGet200ResponseItemsInnerTtmFields**](V1ProjectsProjectKeyTestCasesGet200ResponseItemsInnerTtmFields.md) |  | [optional] |
| **requirements** | **Array&lt;String&gt;** |  | [optional] |
| **folder** | **String** |  | [optional] |
| **folder_id** | **String** |  | [optional] |
| **automation** | [**V1ProjectsProjectKeyTestCasesGet200ResponseItemsInnerAutomation**](V1ProjectsProjectKeyTestCasesGet200ResponseItemsInnerAutomation.md) |  | [optional] |

## Example

```ruby
require 'tricentis_tm_api'

instance = TricentisTmApi::V1ProjectsProjectKeyTestCasesGet200ResponseItemsInner.new(
  id: null,
  key: null,
  project: null,
  test_category: null,
  test_type: null,
  fields: null,
  custom_fields: null,
  ttm_fields: null,
  requirements: null,
  folder: null,
  folder_id: null,
  automation: null
)
```

