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
dispatch:
	docker build -f ../dispatch/build/package/Dockerfile -t dispatch ../	
findbrewery:
	docker build -f ../findbrewery/Dockerfile -t findbrewery .././findbrewery

all: apibrewery brewery dispatch findbrewery	




