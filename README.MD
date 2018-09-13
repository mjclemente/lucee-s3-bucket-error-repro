When using the built-in Amazon S3 file methods in Lucee, such as `directoryList()` for a bucket, an error appears in the console the first time they are encountered.

To reproduce, you'll need an S3 bucket for testing purposes. This repro uses three environment variables (`AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, and `AWS_DEMO_BUCKET_NAME`). Once you've set them up (or hardcoded them), clone this repository and with CommandBox run:

```
server start --debug --console
```

The following errors are shown in the console:

```
[ERROR] log4j:WARN No appenders could be found for logger (org.jets3t.service.Jets3tProperties).
[ERROR] log4j:WARN Please initialize the log4j system properly.
[ERROR] log4j:WARN See http://logging.apache.org/log4j/1.2/faq.html#noconfig for more info.
```