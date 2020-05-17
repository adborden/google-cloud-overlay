
license: licenses/google-cloud-sdk

licenses/google-cloud-sdk:
	lynx -hiddenlinks=ignore -nolist -dump https://cloud.google.com/terms/ > $@

.PHONY: license
