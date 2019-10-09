FROM jupyter/scipy-notebook

RUN conda install --quiet --yes \
    'geotext' \
    'pycountry' \
    'geopy' \
    'altair' \
    'textdistance'

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

WORKDIR /code

