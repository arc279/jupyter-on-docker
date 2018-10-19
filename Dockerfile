FROM continuumio/miniconda3
MAINTAINER motonobu.kuryu <revision279@gmail.com>

RUN apt-get update \
    && apt-get install -y gettext gcc make wget

# ------------------------------------
# for matplotlib
RUN wget -P /usr/local/share/fonts/ -nc \
    https://github.com/byrongibson/fonts/raw/master/backup/truetype.original/takao-gothic/TakaoPGothic.ttf
RUN wget -P /usr/local/share/fonts/ -nc \
    https://github.com/blagarde/midori/raw/master/fonts-japanese-gothic.ttf
COPY matplotlibrc /root/.config/matplotlib/

# ------------------------------------
# for jupyter
COPY requirements.txt /root/
COPY custom.css /root/.jupyter/custom/

RUN pip install --upgrade pip && pip install --ignore-installed -r /root/requirements.txt
RUN mkdir /root/notebooks

EXPOSE 8888

COPY run-jupyter.sh /root/
CMD ["bash", "/root/run-jupyter.sh"]
