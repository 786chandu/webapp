FROM golang 
WORKDIR /app
COPY main.go /app
RUN go build main.go

FROM alpine
COPY --from=build /app/main /app
CMD["./app/main"]
