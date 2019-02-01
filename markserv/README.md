# markserv

## Usage

```bash
docker run \
  -d \
  --rm \
  -v ${PWD}:/data \
  -p 8642:8642 \
  -p 35729:35729 \
  bxggs/markserv
```

## Building

```bash
docker build -t bxggs/markserv .
```

