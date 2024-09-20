# syntax=docker/dockerfile:1
FROM httpd:2.4
ARG REPO="https://github.com/apereo/cas.git#gh-pages"
ARG HTML_ROOT=/usr/local/apache2/htdocs/cas
ARG CAS_VERSION=6.6.x

ADD ${REPO}:/images ${HTML_ROOT}/images/
ADD ${REPO}:/javascripts ${HTML_ROOT}/javascripts/
ADD ${REPO}:/stylesheets ${HTML_ROOT}/stylesheets/
ADD ${REPO}:/${CAS_VERSION} ${HTML_ROOT}/${CAS_VERSION}/

COPY stylesheet.css ${HTML_ROOT}/stylesheets/
COPY index.html ${HTML_ROOT}
RUN cd ${HTML_ROOT} && \
    sed -i -e "s#CAS_VERSION/index.html#${CAS_VERSION}/index.html#" index.html