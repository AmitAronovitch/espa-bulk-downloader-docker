FROM python:3-alpine
MAINTAINER amit <amit@satellogic.com>
RUN cd /usr/src \
    && python -c "import urllib.request; urllib.request.urlretrieve('https://github.com/USGS-EROS/espa-bulk-downloader/archive/2.2.5.tar.gz', '2.2.5.tar.gz')" \
    && tar -zxvf 2.2.5.tar.gz \
    && rm 2.2.5.tar.gz \
    && cd -
RUN pip install /usr/src/espa-bulk-downloader-2.2.5
ENTRYPOINT ["/usr/local/bin/python", "/usr/local/bin/download_espa_order.py"]
CMD ["--help"]
