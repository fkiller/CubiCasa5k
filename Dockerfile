FROM rocm/pytorch:rocm3.3_ubuntu16.04_py3.6_pytorch

RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get install -y \
        build-essential 

COPY requirements.txt /app/.

RUN pip install -r requirements.txt

