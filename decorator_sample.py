from jeffy.framework import get_app
app = get_app()

@app.handlers.common()
def handler(event, context):
    return 1/0
