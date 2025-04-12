FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-runtime
ENV DEBIAN_FRONTEND=noninteractive
EXPOSE 50000
ENV TZ=Asia/Shanghai

RUN mkdir -p /app
WORKDIR /app
RUN apt update && apt install -y wget curl net-tools tree git git-lfs 

RUN git clone https://github.com/FunAudioLLM/SenseVoice.git
WORKDIR /app/SenseVoice
RUN pip install -r requirements.txt

RUN rm -rf /var/lib/apt/lists/*

CMD ["python", "webui.py"]
