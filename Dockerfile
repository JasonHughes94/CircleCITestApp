FROM microsoft/dotnet:latest
MAINTAINER Jason Hughes

COPY ./ /TestCircleCi

RUN cd /TestCircleCi/ && \
dotnet restore

EXPOSE 5000
WORKDIR /TestCircleCi/src/TestCircleCi/
ENTRYPOINT ["dotnet", "run", "--server.urls=http://0.0.0.0:5000"]