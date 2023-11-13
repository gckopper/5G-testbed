FROM ubuntu:22.04 as apted

RUN apt-get update && apt-get install -y wget cmake swig libsctp-dev cmake-curses-gui libpcre2-dev python3 python3-dev build-essential gcc-10

FROM apted as gited

COPY . /flexric/

FROM gited as build

RUN cd flexric && mkdir build && cd build && CC=gcc-10 cmake ../ -DBUILDING_LIBRARY=STATIC -DCMAKE_BUILD_TYPE=Release && make -j 8 && make install

FROM ubuntu:22.04 as final

COPY --from=apted /usr/lib/x86_64-linux-gnu/libsctp* /usr/lib/x86_64-linux-gnu/
COPY --from=apted /usr/share/doc/libsctp1/* /usr/share/doc/libsctp1/
COPY --from=build /usr/local/lib /usr/local/lib
COPY --from=build /flexric/build/examples/ric/nearRT-RIC /usr/local/bin/nearRT-RIC
COPY --from=build /flexric/build/examples/xApp/c/monitor/xapp_kpm_moni /usr/local/bin/xapp_kpm_moni
COPY --from=build /usr/local/etc/flexric/flexric.conf /usr/local/etc/flexric/flexric.conf

CMD ["sleep 3600"]
