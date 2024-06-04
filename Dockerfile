# # Fetch Ubuntu image
# FROM ubuntu:22.04

# # Install build tools
# RUN apt-get -y update && \
#     apt-get install -y apt-transport-https && \
#     apt-get install -y wget build-essential autoconf automake libtool 

# # Copy projects into image
# RUN mkdir /project
# COPY src /project/src
# COPY tests /project/tests
# COPY Makefile /project/Makefile

# # Dounload and build the CppUTest
# RUN mkdir /project/tools && \
#     wget https://github.com/cpputest/cpputest/releases/download/latest-passing-build/cpputest-latest.tar.gz && \
#     tar fx cpputest-latest.tar.gz && \
#     mv cpputest-latest /tools/cpputest && \
#     cd tools/cpputest/ && \
#     autoconf -i && \
#     ./configure && \
#     make 

# # Execute scrips
# ENTRYPOINT [ "Makefile", "test", "-C", "project/" ] 

# Fetch ubuntu image
FROM ubuntu:22.04

# Install build tools
RUN apt-get update
# RUN apt-get upgrade
RUN apt-get install wget -y
RUN apt install -y build-essential autoconf automake libtool unzip
    
# Copy project into image
RUN mkdir /project
COPY src /project/src
COPY tests /project/tests
COPY Makefile /project/Makefile

# Download and build CppUTest

# RUN mkdir /project/tools && \
#     wget https://github.com/cpputest/cpputest/releases/download/latest-passing-build/cpputest-latest.zip && \
#     mkdir /tools && \
#     unzip cpputest-latest.zip  && \
#     mv cpputest-latest /tools/cpputest && \
#     cd tools/cpputest/ && \
#     autoconf -i && \
#     ./configure && \
#     make


RUN mkdir /project/tools/ && \
    cd /project/ && \
    wget https://github.com/cpputest/cpputest/releases/download/latest-passing-build/cpputest-latest.tar.gz && \
    mkdir /tools && \
    tar fx cpputest-latest.tar.gz && \
    mv cpputest-latest /tools/cpputest && \
    cd /tools/cpputest/ && \
    autoreconf -i && \
    ./configure && \
    make
    
# Execute script
ENTRYPOINT ["make", "test", "-C", "/project/"]


