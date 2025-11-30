FROM python:3.12-slim

COPY . /app 
WORKDIR /app 

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install -r requirements/requirements.txt && \
    chmod +x scripts/entrypoint.sh

ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /app/src

CMD ["/app/scripts/entrypoint.sh"]

#docker tag gradpad_be:1.0 mananrg291997/gradpad_be:1.0
#docker push mananrg291997/gradpad_be:1.0
