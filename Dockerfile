FROM tensorflow/serving
COPY ./notebooks/classifier /models/
ENV MODEL_NAME=my_model