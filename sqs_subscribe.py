from jeffy.framework import get_app
app = get_app()

@app.handlers.sqs()
def handler(event, context):
    return event['body']