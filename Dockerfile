# Copyright (c) 2019, NVIDIA CORPORATION.  All rights reserved.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

ARG FROM_IMAGE_NAME=pytorch/pytorch
FROM ${FROM_IMAGE_NAME}

RUN apt-get update && apt-get install --no-install-recommends -y -q \
	git

ADD requirements.txt .
RUN pip install -r requirements.txt


WORKDIR /code
ADD . .
