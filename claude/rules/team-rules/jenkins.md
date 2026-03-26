---
description: Jenkins
alwaysApply: true
---

# Jenkins

- Any URL with jenkins.duolingo.com, you cannot open it from web search. Please try to use the mcp-jenkins MCP tool.
- When calling get_build_info, make sure to pass the `build_number` as an integer instead of string
- There are multiple MCP servers with the same MCP tool name, please make sure you call the right one by looking at the URL. A typical Jenkins URL will start with `https://<JENKINS_CLUSTER_NAME>.duolingo.com/job/<JOB_NAME>/<BUILD_NUMBER>`, you should use the JENKINS_CLUSTER_NAME to decide which MCP server to use
