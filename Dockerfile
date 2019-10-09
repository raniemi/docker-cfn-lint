FROM python:3.6.6-alpine3.7

ARG VERSION

RUN mkdir -p /opt/cfn-lint

WORKDIR /opt/cfn-lint

RUN pip install --upgrade pip
RUN pip install cfn-lint==$VERSION

RUN mkdir -p /data
WORKDIR /data

RUN mkdir -p /root/.aws
VOLUME /root/.aws

CMD ["cfn-lint"]
