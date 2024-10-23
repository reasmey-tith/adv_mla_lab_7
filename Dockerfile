FROM tensorflow/tensorflow:latest-jupyter

COPY requirements.txt .

RUN pip install -r requirements.txt

ENV PYTHONPATH "${PYTHONPATH}:/tf/notebooks"

WORKDIR /tf/notebooks