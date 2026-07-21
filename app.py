print('success')
print('success')
print('success')
print('success')
print('success')
print('success')
print('success')
print('success')
print('success')



import jwt

jwt.encode(
    {"user": "admin"},
    "my-secret-key",
    algorithm="HS256",
)
