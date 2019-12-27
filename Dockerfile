FROM golang as build 
WORKDIR /app
COPY main.go /app
RUN go build main.go

FROM alpine
WORKDIR /app
COPY --from=build /app/main /app
CMD ["./app/main"]
