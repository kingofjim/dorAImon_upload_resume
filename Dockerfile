# 使用官方的 Python 映像作為基礎映像
FROM python:3.11-slim

# 設定工作目錄
WORKDIR /app

# 將本地檔案複製到映像中的 /app 目錄
COPY . /app

# 安裝 Python 相依套件
RUN pip install --no-cache-dir -r requirements.txt

# 開放應用程式的指定 port
EXPOSE 5000

# 定義啟動指令
CMD ["python", "app.py"]