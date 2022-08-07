FROM pytorch/pytorch:1.12.0-cuda11.3-cudnn8-runtime

RUN apt-get update 
COPY ./requirements.txt .
RUN pip install -r requirements.txt

RUN python -m ipykernel install --user