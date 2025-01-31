build:
	echo '[' > tmp.json; \
	first=true; \
	for i in presets/*.json; do \
		if $$first; then \
			first=false; \
		else \
			echo ',' >> tmp.json; \
		fi; \
		cat "$$i" >> tmp.json; \
	done; \
	echo ']' >> tmp.json
	mkdir build
	jq -c . tmp.json > build/index.json