---
description: Internal static
alwaysApply: true
---

# Internal static

https://static.internal.duolingo.com URL is equivalent to s3://internal-static.duolingo.com on S3. So any HTML page that starts with https://static.internal.duolingo.com can be accessed by `aws s3 ls` commands on s3://internal-static.duolingo.com.
