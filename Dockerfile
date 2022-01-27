FROM williambutcherbot/python:latest

WORKDIR /wbb
RUN chmod 777 /wbb

# Installing Requirements
RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install --no-cache-dir -U -r requirements.txt

# If u dont want to use /update feature, comment the following lines
RUN git config --global user.email "missemilymirror@gmail.com"
RUN git config --global user.name "missemily2022"

# Copying All Source
COPY . .

# Starting Bot
CMD ["bash", "start.sh"]