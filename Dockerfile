FROM pytorch/pytorch:2.6.0-cuda12.6-cudnn9-devel
ENV DEBIAN_FRONTEND=noninteractive
EXPOSE 50000
ENV TZ=Asia/Shanghai

RUN mkdir -p /app
WORKDIR /app
RUN apt update && apt install -y wget curl net-tools tree git git-lfs 
RUN git clone https://github.com/FunAudioLLM/SenseVoice.git

WORKDIR /app/SenseVoice
RUN pip install -r requirements.txt
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu126 

RUN rm -rf /var/lib/apt/lists/*
CMD ["python", "webui.py"]
