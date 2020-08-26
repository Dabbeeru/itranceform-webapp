# The MIT License
#
#  Copyright (c) 2015-2017, CloudBees, Inc.
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in
#  all copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#  THE SOFTWARE.

# Add addtional packages 
# Install selected extensions and other stuff 
RUN apt-get update \ 
&& apt-get -y --no-install-recommends install \ 
maven \ 
&& apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* 
## Install terraform 
ARG TF_VERSION=0.11.13 
RUN wget -q https://releases.hashicorp.com/terraform/0.11.13/terraform_${TF_VERSION}_linux_amd64.zip -O terraform.zip && \ 
unzip terraform.zip && \ 
mv terraform /usr/local/bin/terraform 
## install helm 
ARG HELM_VERSION= 
RUN wget -q https://storage.googleapis.com/kubernetes-helm/helm-v2.13.1-linux-amd64.tar.gz -O helm.tar.gz && \ 
tar -zxvf helm.tar.gz && \ 
mv linux-amd64/helm /usr/local/bin/helm && \ 
mv linux-amd64/tiller /usr/local/bin/tiller && \ 
rm -rf linux-adm/ 
## End of adding packages ### 
