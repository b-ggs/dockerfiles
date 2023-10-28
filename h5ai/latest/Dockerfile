FROM node:alpine AS options-builder

COPY --from=awesometic/h5ai /usr/share/h5ai/_h5ai/private/conf/options.json /tmp/original_options.json

RUN apk add --no-cache jq \
  # Remove comments from options.json because jq doesn't support comments
  && npx strip-json-comments-cli /tmp/original_options.json > /tmp/stripped_options.json \
  # Set search.enabled to true and save it to a new file
  && jq ".search.enabled = true" /tmp/stripped_options.json | tee /tmp/options.json

FROM awesometic/h5ai

COPY --from=options-builder /tmp/options.json /usr/share/h5ai/_h5ai/private/conf/options.json
