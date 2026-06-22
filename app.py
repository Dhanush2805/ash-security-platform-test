print('success')
print('success')
print('success')
print('success')

import jwt

token = jwt.decode(
    token_string,
    options={"verify_signature": False}
)