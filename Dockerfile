FROM python:3.8.3
RUN set -x && \
    curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
ENV PATH /root/.poetry/bin:$PATH
RUN poetry config virtualenvs.create false
RUN apt-get update && \
    apt-get install -y nodejs && \
    apt-get install -y npm　&& \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    npm install -g serverless