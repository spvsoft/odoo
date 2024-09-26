FROM odoo:17.0

# Cài đặt các gói bổ sung nếu cần
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Sao chép mã nguồn Odoo vào container
COPY . /mnt/extra-addons

# Thiết lập thư mục làm việc
WORKDIR /mnt/extra-addons
