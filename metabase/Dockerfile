FROM adoptopenjdk/openjdk11:jre-nightly as production

ENV FC_LANG en-US
ENV LC_CTYPE en_US.UTF-8

# dependencies
RUN apt-get update -yq && apt-get install -yq ttf-dejavu fontconfig

# add our run script to the image
COPY ./run_metabase.sh /app/

# add Metabase jar
COPY --from=metabase/metabase:latest /app/metabase.jar /app/metabase.jar

# create the plugins directory, with writable permissions
RUN mkdir -p /plugins
RUN chmod a+rwx /plugins

# expose our default runtime port
EXPOSE 3000

RUN groupadd --gid 2000 metabase
RUN useradd -M --uid 2000 --gid metabase metabase
USER metabase

# if you have an H2 database that you want to initialize the new Metabase
# instance with, mount it in the container as a volume that will match the
# pattern /app/initial*.db:
# $ docker run ... -v $PWD/metabase.db.mv.db:/app/initial.db.mv.db ...

# run it
ENTRYPOINT ["/app/run_metabase.sh"]
