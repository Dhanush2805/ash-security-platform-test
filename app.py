print('success')
print('success')
print('success')
print('success')

from aws_cdk import (
    Stack,
    aws_s3 as s3
)
from constructs import Construct

class BadStack(Stack):
    def __init__(self, scope: Construct, id: str):
        super().__init__(scope, id)

        # ❌ FAIL: public bucket
        s3.Bucket(
            self,
            "BadBucket",
            public_read_access=True
        )