ARG BASEREPO=debian
ARG BASETAG=stretch-20181011-slim
FROM ${BASEREPO}:${BASETAG}
ARG BASEREPO
ENV BASEREPO="${BASEREPO}"
ARG BASETAG
ENV BASETAG="${BASETAG}"
COPY include /usr/local/docker-debian-awscli
RUN /usr/local/docker-debian-awscli/build.sh "${BASEREPO}" "${BASETAG}"
