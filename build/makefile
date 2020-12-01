hello:
	echo "hello"


apibrewery:   
	protoc -I ../apibrewery/  --go_out=../apibrewery  \
	--go_opt=paths=source_relative \
	--go-grpc_out=../apibrewery    \
	--go-grpc_opt=paths=source_relative \
	brewery.proto
brewery:
	docker build -f ../brewery/build/package/Dockerfile -t brewery ../	
	docker tag brewery:latest 203502480794.dkr.ecr.us-east-2.amazonaws.com/brewery:latest
dispatch:
	docker build -f ../dispatch/build/package/Dockerfile -t dispatch ../	
	docker tag dispatch:latest 203502480794.dkr.ecr.us-east-2.amazonaws.com/dispatch:latest
findbrewery:
	docker build -f ../findbrewery/Dockerfile -t findbrewery .././findbrewery
	docker tag findbrewery:latest 203502480794.dkr.ecr.us-east-2.amazonaws.com/findbrewery:latest

all: apibrewery brewery dispatch findbrewery	




