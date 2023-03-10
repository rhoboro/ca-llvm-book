LLVM_PROJECT_DIR:=$$(pwd)/llvm-project

.env:
	echo "UID=$$(id -u ${USER})" >> .env
	echo "GID=$$(id -g ${USER})" >> .env
	echo "UNAME=${USER}" >> .env

run: .env
	(cd ${LLVM_PROJECT_DIR}; git checkout llvm-myriscvx120)
	docker run --env-file .env --rm -v $$(pwd)/program:/llvm_book/program/ -v ${LLVM_PROJECT_DIR}:/llvm_book/llvm-project/ -it msyksphinz/support_llvm:ubuntu_2204_onlyenv "/bin/bash"
