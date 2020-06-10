from jeffy.framework import get_app
from jeffy.sdk.sqs import Sqs

def handler(event, context):
    Sqs().send_message(
        queue_url=os.environ['QUEUE_URL'],
        message='hello world2'
    )