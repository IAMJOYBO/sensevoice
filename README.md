# 秋叶 SD-Trainer
Docker镜像自动构建并上传到阿里云（最新Docker镜像前往 [GitHub Action](../../actions) 查看）
## Docker镜像下载
```bash
docker pull registry.cn-hangzhou.aliyuncs.com/joybo/sensevoice:latest
```
# 使用方法
```bash
git clone https://github.com/FunAudioLLM/SenseVoice.git
cd SenseVoice
modelscope download --model iic/SenseVoiceSmall --local_dir ./models/iic/SenseVoiceSmall
```
将 SenseVoice 映射至 Docker 中的 /app/sensevoice 即可，默认端口：7860
# 更多用法
[https://github.com/FunAudioLLM/SenseVoice.git](https://github.com/FunAudioLLM/SenseVoice.git)

# Star History

[![Star History Chart](https://api.star-history.com/svg?repos=IAMJOYBO/ktransformers&type=Date)](https://www.star-history.com/#IAMJOYBO/ktransformers&Date)
