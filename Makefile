test:
	find ./terminal -type f -name "*.sh" -print0 | while IFS= read -r -d '' file; do \
		echo "▶️ Execute $$file..."; \
		chmod +x "$$file"; \
		bash "$$file" || exit 1; \
		echo "✅ Success!"; \
		clear; \
	done