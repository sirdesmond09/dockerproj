FROM python:3.7.3-stretch


# Create a Working Directory
WORKDIR /app

##Copy source code to working directory

COPY . app.py /app/

# RUN python3 -m venv ~/.venv && source ~/.venv/bin/activate


# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
    