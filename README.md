# tricentis_tm_api

TricentisTmApi - the Ruby gem for the TTM for Jira

Tricentis Test Management for Jira

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build tricentis_tm_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./tricentis_tm_api-1.0.0.gem
```
(for development, run `gem install --dev ./tricentis_tm_api-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'tricentis_tm_api', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'tricentis_tm_api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'tricentis_tm_api'
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::AttachmentsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Attachment Id.
project_key = 'project_key_example' # String | 


begin
  #Query if attachment is uploaded to storage.
  api_instance.v1_projects_project_key_test_runs_attachments_id_put(id, project_key)
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling AttachmentsApi->v1_projects_project_key_test_runs_attachments_id_put: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::AttachmentsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::TestrunkeyAttachmentsBody.new # TestrunkeyAttachmentsBody | attachmentRequestApiData.
}

begin
  #Upload attachment to a test run.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_attachments_post(test_run_key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling AttachmentsApi->v1_projects_project_key_test_runs_test_run_key_attachments_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::AttachmentsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
step_number = 56 # Integer | Step index.
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::StepnumberAttachmentsBody.new # StepnumberAttachmentsBody | attachmentRequestApiData.
}

begin
  #Upload attachment to a test run step.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post(test_run_key, step_number, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling AttachmentsApi->v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::DefectsApi.new
test_run_key = 'test_run_key_example' # String | testRunKey.
project_key = 'project_key_example' # String | 
opts = { 
  body: [TricentisTmApi::RequirementLinkBody.new], # Array<RequirementLinkBody> | defects.
  step_index: 56 # Integer | stepIndex.
}

begin
  #Link Defects to test run.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_defects_link_post(test_run_key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling DefectsApi->v1_projects_project_key_test_runs_test_run_key_defects_link_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::DefectsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 
opts = { 
  body: [TricentisTmApi::KeyRequirementsBody.new], # Array<KeyRequirementsBody> | defects to create.
  step_index: 56 # Integer | stepIndex .
}

begin
  #Create defects and link to test run.
  result = api_instance.v1_projects_project_key_test_runs_test_run_key_defects_post(test_run_key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling DefectsApi->v1_projects_project_key_test_runs_test_run_key_defects_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::FoldersApi.new
project_key = 'project_key_example' # String | 
opts = { 
  body: [TricentisTmApi::ProjectkeyFoldersBody.new] # Array<ProjectkeyFoldersBody> | List of folders to create.
}

begin
  #Create folder(s).
  result = api_instance.v1_projects_project_key_folders_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling FoldersApi->v1_projects_project_key_folders_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::ProjectsApi.new
opts = { 
  keys: 'keys_example', # String | keys.
  offset: 56, # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: 56 # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  #Get Jira project(s).
  result = api_instance.v1_projects_get(opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling ProjectsApi->v1_projects_get: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::RequirementsApi.new
key = 'key_example' # String | jiraTestKey.
project_key = 'project_key_example' # String | 
opts = { 
  body: [TricentisTmApi::RequirementLinkBody.new] # Array<RequirementLinkBody> | requirements to link.
}

begin
  #Link Requirements to test case.
  result = api_instance.v1_projects_project_key_test_cases_key_requirement_link_post(key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling RequirementsApi->v1_projects_project_key_test_cases_key_requirement_link_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::RequirementsApi.new
key = 'key_example' # String | jiraTestKey.
project_key = 'project_key_example' # String | 
opts = { 
  body: [TricentisTmApi::KeyRequirementsBody.new] # Array<KeyRequirementsBody> | requirements to create.
}

begin
  #Create Requirements and link to test case.
  result = api_instance.v1_projects_project_key_test_cases_key_requirements_post(key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling RequirementsApi->v1_projects_project_key_test_cases_key_requirements_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::StatusApi.new

begin
  #Validate if api key is still valid.
  api_instance.v1_api_key_is_alive_head
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling StatusApi->v1_api_key_is_alive_head: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestCasesApi.new
job_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The job ID returned from the import request endpoint.
project_key = 'project_key_example' # String | 


begin
  #Query job status.
  result = api_instance.v1_projects_project_key_jobs_job_id_get(job_id, project_key)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_jobs_job_id_get: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestCasesApi.new
project_key = 'project_key_example' # String | 
opts = { 
  jira_fields: 'jira_fields_example', # String | A list of Jira fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  ttm_fields: 'ttm_fields_example', # String | A list of TTM fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  offset: 56, # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: 56 # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  #Read test case(s).
  result = api_instance.v1_projects_project_key_test_cases_get(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_test_cases_get: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestCasesApi.new
key = 'key_example' # String | The Jira issue key for the Test Case.
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::KeyAutomationBody.new, # KeyAutomationBody | API body payload to update a test case and add automation.
  confirmation: false # BOOLEAN | <br>Changing a test case from Manual to Automated overwrites your precondition and test steps.  <br> Select True to confirm that you want to delete the precondition and test steps from the test case.
}

begin
  #Add or update automation content for a test case.
  api_instance.v1_projects_project_key_test_cases_key_automation_put(key, project_key, opts)
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_test_cases_key_automation_put: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestCasesApi.new
key = 'key_example' # String | The Jira id or key of the test.
project_key = 'project_key_example' # String | 


begin
  #Delete test case(s).
  api_instance.v1_projects_project_key_test_cases_key_delete(key, project_key)
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_test_cases_key_delete: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestCasesApi.new
key = 'key_example' # String | The jira key of the test.
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::TestcasesKeyBody.new # TestcasesKeyBody | The data to update in the test.
}

begin
  #Update test case(s).
  result = api_instance.v1_projects_project_key_test_cases_key_put(key, project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_test_cases_key_put: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestCasesApi.new
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::ProjectkeyTestcasesBody.new # ProjectkeyTestcasesBody | External API body payload that describes the tests to create.
}

begin
  #Create test case(s).
  result = api_instance.v1_projects_project_key_test_cases_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_projects_project_key_test_cases_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestCasesApi.new
opts = { 
  body: TricentisTmApi::TestcasesSearchBody.new, # TestcasesSearchBody | The request body.
  jira_fields: 'jira_fields_example', # String | A list of Jira fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  ttm_fields: 'ttm_fields_example', # String | A list of TTM fields to return for each issue, use it to retrieve a subset of fields. Provide a comma-separated list.
  offset: 56, # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: 56 # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  #Search test case(s).
  result = api_instance.v1_test_cases_search_post(opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestCasesApi->v1_test_cases_search_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestRunsApi.new
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::ProjectkeyTestrunsBody.new # ProjectkeyTestrunsBody | testRuns.
}

begin
  #Create test run(s).
  result = api_instance.v1_projects_project_key_test_runs_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestRunsApi->v1_projects_project_key_test_runs_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestRunsApi.new
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::TestrunsSearchBody.new, # TestrunsSearchBody | Test Runs Search filters.
  offset: 56, # Integer | Numeric value that determines that the result list will start from result #N (zero based)
  limit: 56 # Integer | Numeric value that determines that maximum N results will be returned
}

begin
  #Read test run(s).
  result = api_instance.v1_projects_project_key_test_runs_search_post(project_key, opts)
  p result
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestRunsApi->v1_projects_project_key_test_runs_search_post: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestRunsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 


begin
  #Delete test run(s).
  api_instance.v1_projects_project_key_test_runs_test_run_key_delete(test_run_key, project_key)
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestRunsApi->v1_projects_project_key_test_runs_test_run_key_delete: #{e}"
end
# Setup authorization
TricentisTmApi.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TricentisTmApi::TestRunsApi.new
test_run_key = 'test_run_key_example' # String | Test Run Key.
project_key = 'project_key_example' # String | 
opts = { 
  body: TricentisTmApi::TestrunsTestrunkeyBody.new # TestrunsTestrunkeyBody | Patch document.
}

begin
  #Update test run(s).
  api_instance.v1_projects_project_key_test_runs_test_run_key_put(test_run_key, project_key, opts)
rescue TricentisTmApi::ApiError => e
  puts "Exception when calling TestRunsApi->v1_projects_project_key_test_runs_test_run_key_put: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://api.ttm4j.tricentis.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*TricentisTmApi::AttachmentsApi* | [**v1_projects_project_key_test_runs_attachments_id_put**](docs/AttachmentsApi.md#v1_projects_project_key_test_runs_attachments_id_put) | **PUT** /v1/projects/{project-key}/test-runs/attachments/{id} | Query if attachment is uploaded to storage.
*TricentisTmApi::AttachmentsApi* | [**v1_projects_project_key_test_runs_test_run_key_attachments_post**](docs/AttachmentsApi.md#v1_projects_project_key_test_runs_test_run_key_attachments_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/attachments | Upload attachment to a test run.
*TricentisTmApi::AttachmentsApi* | [**v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post**](docs/AttachmentsApi.md#v1_projects_project_key_test_runs_test_run_key_steps_step_number_attachments_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/steps/{step-number}/attachments | Upload attachment to a test run step.
*TricentisTmApi::DefectsApi* | [**v1_projects_project_key_test_runs_test_run_key_defects_link_post**](docs/DefectsApi.md#v1_projects_project_key_test_runs_test_run_key_defects_link_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/defects/link | Link Defects to test run.
*TricentisTmApi::DefectsApi* | [**v1_projects_project_key_test_runs_test_run_key_defects_post**](docs/DefectsApi.md#v1_projects_project_key_test_runs_test_run_key_defects_post) | **POST** /v1/projects/{project-key}/test-runs/{test-run-key}/defects | Create defects and link to test run.
*TricentisTmApi::FoldersApi* | [**v1_projects_project_key_folders_post**](docs/FoldersApi.md#v1_projects_project_key_folders_post) | **POST** /v1/projects/{project-key}/folders | Create folder(s).
*TricentisTmApi::ProjectsApi* | [**v1_projects_get**](docs/ProjectsApi.md#v1_projects_get) | **GET** /v1/projects | Get Jira project(s).
*TricentisTmApi::RequirementsApi* | [**v1_projects_project_key_test_cases_key_requirement_link_post**](docs/RequirementsApi.md#v1_projects_project_key_test_cases_key_requirement_link_post) | **POST** /v1/projects/{project-key}/test-cases/{key}/requirement/link | Link Requirements to test case.
*TricentisTmApi::RequirementsApi* | [**v1_projects_project_key_test_cases_key_requirements_post**](docs/RequirementsApi.md#v1_projects_project_key_test_cases_key_requirements_post) | **POST** /v1/projects/{project-key}/test-cases/{key}/requirements | Create Requirements and link to test case.
*TricentisTmApi::StatusApi* | [**v1_api_key_is_alive_head**](docs/StatusApi.md#v1_api_key_is_alive_head) | **HEAD** /v1/api-key/is-alive | Validate if api key is still valid.
*TricentisTmApi::TestCasesApi* | [**v1_projects_project_key_jobs_job_id_get**](docs/TestCasesApi.md#v1_projects_project_key_jobs_job_id_get) | **GET** /v1/projects/{project-key}/jobs/{job-id} | Query job status.
*TricentisTmApi::TestCasesApi* | [**v1_projects_project_key_test_cases_get**](docs/TestCasesApi.md#v1_projects_project_key_test_cases_get) | **GET** /v1/projects/{project-key}/test-cases | Read test case(s).
*TricentisTmApi::TestCasesApi* | [**v1_projects_project_key_test_cases_key_automation_put**](docs/TestCasesApi.md#v1_projects_project_key_test_cases_key_automation_put) | **PUT** /v1/projects/{project-key}/test-cases/{key}/automation | Add or update automation content for a test case.
*TricentisTmApi::TestCasesApi* | [**v1_projects_project_key_test_cases_key_delete**](docs/TestCasesApi.md#v1_projects_project_key_test_cases_key_delete) | **DELETE** /v1/projects/{project-key}/test-cases/{key} | Delete test case(s).
*TricentisTmApi::TestCasesApi* | [**v1_projects_project_key_test_cases_key_put**](docs/TestCasesApi.md#v1_projects_project_key_test_cases_key_put) | **PUT** /v1/projects/{project-key}/test-cases/{key} | Update test case(s).
*TricentisTmApi::TestCasesApi* | [**v1_projects_project_key_test_cases_post**](docs/TestCasesApi.md#v1_projects_project_key_test_cases_post) | **POST** /v1/projects/{project-key}/test-cases | Create test case(s).
*TricentisTmApi::TestCasesApi* | [**v1_test_cases_search_post**](docs/TestCasesApi.md#v1_test_cases_search_post) | **POST** /v1/test-cases/search | Search test case(s).
*TricentisTmApi::TestRunsApi* | [**v1_projects_project_key_test_runs_post**](docs/TestRunsApi.md#v1_projects_project_key_test_runs_post) | **POST** /v1/projects/{project-key}/test-runs | Create test run(s).
*TricentisTmApi::TestRunsApi* | [**v1_projects_project_key_test_runs_search_post**](docs/TestRunsApi.md#v1_projects_project_key_test_runs_search_post) | **POST** /v1/projects/{project-key}/test-runs/search | Read test run(s).
*TricentisTmApi::TestRunsApi* | [**v1_projects_project_key_test_runs_test_run_key_delete**](docs/TestRunsApi.md#v1_projects_project_key_test_runs_test_run_key_delete) | **DELETE** /v1/projects/{project-key}/test-runs/{test-run-key} | Delete test run(s).
*TricentisTmApi::TestRunsApi* | [**v1_projects_project_key_test_runs_test_run_key_put**](docs/TestRunsApi.md#v1_projects_project_key_test_runs_test_run_key_put) | **PUT** /v1/projects/{project-key}/test-runs/{test-run-key} | Update test run(s).

## Documentation for Models

 - [TricentisTmApi::InlineResponse200](docs/InlineResponse200.md)
 - [TricentisTmApi::InlineResponse2001](docs/InlineResponse2001.md)
 - [TricentisTmApi::InlineResponse2002](docs/InlineResponse2002.md)
 - [TricentisTmApi::InlineResponse2002CustomFields](docs/InlineResponse2002CustomFields.md)
 - [TricentisTmApi::InlineResponse2002Items](docs/InlineResponse2002Items.md)
 - [TricentisTmApi::InlineResponse2002TtmFields](docs/InlineResponse2002TtmFields.md)
 - [TricentisTmApi::InlineResponse2003](docs/InlineResponse2003.md)
 - [TricentisTmApi::InlineResponse2003ElementDataErrors](docs/InlineResponse2003ElementDataErrors.md)
 - [TricentisTmApi::InlineResponse2003Errors](docs/InlineResponse2003Errors.md)
 - [TricentisTmApi::InlineResponse2003Issues](docs/InlineResponse2003Issues.md)
 - [TricentisTmApi::InlineResponse2004](docs/InlineResponse2004.md)
 - [TricentisTmApi::InlineResponse2005](docs/InlineResponse2005.md)
 - [TricentisTmApi::InlineResponse2006](docs/InlineResponse2006.md)
 - [TricentisTmApi::InlineResponse2007](docs/InlineResponse2007.md)
 - [TricentisTmApi::InlineResponse2008](docs/InlineResponse2008.md)
 - [TricentisTmApi::InlineResponse2009](docs/InlineResponse2009.md)
 - [TricentisTmApi::InlineResponse200Items](docs/InlineResponse200Items.md)
 - [TricentisTmApi::InlineResponse202](docs/InlineResponse202.md)
 - [TricentisTmApi::InlineResponse400](docs/InlineResponse400.md)
 - [TricentisTmApi::KeyAutomationBody](docs/KeyAutomationBody.md)
 - [TricentisTmApi::KeyRequirementsBody](docs/KeyRequirementsBody.md)
 - [TricentisTmApi::ProjectkeyFoldersBody](docs/ProjectkeyFoldersBody.md)
 - [TricentisTmApi::ProjectkeyTestcasesBody](docs/ProjectkeyTestcasesBody.md)
 - [TricentisTmApi::ProjectkeyTestrunsBody](docs/ProjectkeyTestrunsBody.md)
 - [TricentisTmApi::RequirementLinkBody](docs/RequirementLinkBody.md)
 - [TricentisTmApi::StepnumberAttachmentsBody](docs/StepnumberAttachmentsBody.md)
 - [TricentisTmApi::TestcasesKeyBody](docs/TestcasesKeyBody.md)
 - [TricentisTmApi::TestcasesSearchBody](docs/TestcasesSearchBody.md)
 - [TricentisTmApi::TestrunkeyAttachmentsBody](docs/TestrunkeyAttachmentsBody.md)
 - [TricentisTmApi::TestrunsSearchBody](docs/TestrunsSearchBody.md)
 - [TricentisTmApi::TestrunsTestrunkeyBody](docs/TestrunsTestrunkeyBody.md)
 - [TricentisTmApi::V1projectsAvatarUrls](docs/V1projectsAvatarUrls.md)
 - [TricentisTmApi::V1projectsprojectkeytestcasesAutomation](docs/V1projectsprojectkeytestcasesAutomation.md)
 - [TricentisTmApi::V1projectsprojectkeytestcasesFields](docs/V1projectsprojectkeytestcasesFields.md)
 - [TricentisTmApi::V1projectsprojectkeytestcasesTests](docs/V1projectsprojectkeytestcasesTests.md)
 - [TricentisTmApi::V1projectsprojectkeytestcasesTtmFields](docs/V1projectsprojectkeytestcasesTtmFields.md)
 - [TricentisTmApi::V1projectsprojectkeytestcasesTtmFieldsSteps](docs/V1projectsprojectkeytestcasesTtmFieldsSteps.md)
 - [TricentisTmApi::V1projectsprojectkeytestcaseskeyFields](docs/V1projectsprojectkeytestcaseskeyFields.md)
 - [TricentisTmApi::V1projectsprojectkeytestcaseskeyTtmFields](docs/V1projectsprojectkeytestcaseskeyTtmFields.md)
 - [TricentisTmApi::V1projectsprojectkeytestcaseskeyTtmFieldsSteps](docs/V1projectsprojectkeytestcaseskeyTtmFieldsSteps.md)
 - [TricentisTmApi::V1projectsprojectkeytestrunsAutomation](docs/V1projectsprojectkeytestrunsAutomation.md)
 - [TricentisTmApi::V1projectsprojectkeytestrunsCycle](docs/V1projectsprojectkeytestrunsCycle.md)
 - [TricentisTmApi::V1projectsprojectkeytestrunsCycleVersion](docs/V1projectsprojectkeytestrunsCycleVersion.md)
 - [TricentisTmApi::V1projectsprojectkeytestrunsFields](docs/V1projectsprojectkeytestrunsFields.md)
 - [TricentisTmApi::V1projectsprojectkeytestrunsSteps](docs/V1projectsprojectkeytestrunsSteps.md)
 - [TricentisTmApi::V1projectsprojectkeytestrunsSteps1](docs/V1projectsprojectkeytestrunsSteps1.md)
 - [TricentisTmApi::V1projectsprojectkeytestrunsTestRuns](docs/V1projectsprojectkeytestrunsTestRuns.md)

## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header
