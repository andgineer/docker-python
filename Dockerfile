FROM andgineer/python-base

COPY requirements.txt /requirements.txt

RUN pip install -r requirements.txt \
    && apk del python3-dev libxslt-dev libxml2-dev \
    && rm -rf ~/.pip/cache/ \
    && rm -rf /var/cache/apk/*

ENTRYPOINT [ "python" ]
