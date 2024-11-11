#!/bin/sh
#
#  Copyright 2023 The original authors
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

if [ -f target/CalculateAverage_ebarlas_image ]; then
    echo "Picking up existing native image 'target/CalculateAverage_ebarlas_image', delete the file to select JVM mode." 1>&2
    target/CalculateAverage_ebarlas_image
else
    echo "Choosing to run the app in JVM mode as no native image was found, use prepare_ebarlas.sh to generate." 1>&2
    java --enable-preview --class-path target/average-1.0.0-SNAPSHOT.jar dev.morling.onebrc.CalculateAverage_ebarlas
fi
