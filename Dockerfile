FROM ubuntu
RUN apt update -y && apt upgrade -y
RUN apt install python -y
RUN apt install python-pip -y
RUN pip install mysql-connector-python
RUN mkdir /new/
COPY test.py /new/
CMD ["python","/new/test.py"]
