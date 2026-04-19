# Makefile برای اجرای آسان اسکریپت

.PHONY: help install run clean test

help:
	@echo "دستورات موجود:"
	@echo "  make install    - نصب وابستگی‌ها"
	@echo "  make run        - اجرای اسکریپت با سال‌های پیش‌فرض (2000-2026)"
	@echo "  make run-2020   - اجرای اسکریپت برای سال‌های 2020-2026"
	@echo "  make clean      - حذف فایل‌های JSON خروجی"
	@echo "  make test       - تست اتصال به API"

install:
	pip install -r requirements.txt

run:
	python igdb_complete_scraper.py 2000 2026

run-2020:
	python igdb_complete_scraper.py 2020 2026

clean:
	rm -f complete_games_archive_*.json

test:
	python -c "import requests; print('✅ requests installed successfully')"
