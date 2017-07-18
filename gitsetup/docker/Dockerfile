# Use latest centos
FROM centos:latest

# Install git command
RUN yum -y install git

# Add user for work
RUN useradd dev

# Setup files
RUN mkdir /workspace
COPY nationalparks.tar  /workspace/nationalparks.tar
COPY run.sh /workspace/run.sh
RUN chown -R dev /workspace
RUN chmod 777 /workspace
RUN chmod 555 /workspace/run.sh

# Switch User
USER dev

# Set the default command
CMD ["sh"]
