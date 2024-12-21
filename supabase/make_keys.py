import jwt

payload_anon = {
    "role": "anon",
    "iss": "supabase",
    "iat": 1714975200,
    "exp": 1872741600
}

payload_service_role = {
    "role": "service_role",
    "iss": "supabase",
    "iat": 1714975200,
    "exp": 1872741600
}

secret = "8c4fdf6a5834e6083fb5094928ddbfbbd449e11b76c181715dda3d839a438bdf"
encoded_anon = jwt.encode(payload_anon, secret, algorithm="HS256")
encoded_sr = jwt.encode(payload_service_role, secret, algorithm="HS256")

print("anon: " + encoded_anon)
print("service_role: " + encoded_sr)