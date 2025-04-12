FROM nvcr.io/nvidia/pytorch:25.03-py3

EXPOSE 28000

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && apt update && apt install python3-tk -y

RUN mkdir /app

WORKDIR /app
RUN git clone --recurse-submodules https://github.com/Akegarasu/lora-scripts

WORKDIR /app/lora-scripts
RUN pip uninstall -y einops && pip install xformers==0.0.27.post2 --no-deps && pip install -U -r requirements.txt

RUN pip install opencv-fixer==0.2.5 && python -c "from opencv_fixer import AutoFix; AutoFix()" \
    pip install opencv-python-headless && apt install ffmpeg libsm6 libxext6 libgl1 -y

WORKDIR /app/lora-scripts

CMD ["python", "gui.py", "--listen"]
