# Sử dụng image chính thức của Odoo 17
FROM odoo:17.0

# Cài đặt các gói phụ thuộc bổ sung nếu cần
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Sao chép mã nguồn từ repository vào Docker image
COPY . /mnt/extra-addons

# Thiết lập thư mục làm việc
WORKDIR /mnt/extra-addons
