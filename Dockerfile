FROM centos:7
RUN yum update -y
RUN yum install -y centos-release-scl
RUN yum install -y rh-python36
RUN scl enable rh-python36 bash
RUN yum groupinstall -y 'Development Tools'
CMD ["python3"]
