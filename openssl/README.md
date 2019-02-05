# openssl

Docker image for running OpenSSL

## Usage

Show version

```bash
docker run bxggs/openssl version
# OpenSSL 1.1.0j  20 Nov 2018
```

OpenSSL prompt

```bash
docker run -it bxggs/openssl
OpenSSL>
```

Generate key and save to `$PWD`

```bash
docker run \
  -it \
  -v $PWD:/data \
  bxggs/openssl \
  req \
  -x509 \
  -newkey rsa:4096 \
  -keyout key.pem \
  -out cert.pem \
  -days 365 \
  -subj "/C=PH/ST=NCR/L=Makati/O=Boggs/OU=Engineering/CN=boggs.xyz"
```

## References

* [OpenSSL Subject Format](https://www.shellhacks.com/create-csr-openssl-without-prompt-non-interactive/)
