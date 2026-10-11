# Python 3.12-ийн хөнгөн хувилбарыг үндсэн image болгон ашиглана.
FROM python:3.12-slim

# Аппликейшны ажиллах хавтсыг /app болгоно.
WORKDIR /app

# Сангуудын жагсаалтыг эхэлж хуулна.
COPY requirements.txt .

# Шаардлагатай Python сангуудыг суулгана.
RUN pip install --no-cache-dir -r requirements.txt

# Аппликейшны бусад файлыг image дотор хуулна.
COPY . .

# Аюулгүй байдлын үүднээс appuser хэрэглэгч үүсгэнэ.
RUN useradd -m appuser

# Аппликейшныг root биш хэрэглэгчээр ажиллуулна.
USER appuser

# Сайтын үндсэн гарчиг болон өнгийг тохируулна.
ENV APP_TITLE="Dukie's Little Garden" \
    THEME_COLOR="#C084FC"

# Аппликейшн 5000-р портыг ашиглахыг зарлана.
EXPOSE 5000

# Контейнер эхлэхэд аппликейшныг ажиллуулна.
CMD ["python", "app.py"]
