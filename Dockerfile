FROM tensorflow/serving
COPY ./notebooks/classifier ./notebooks/test_data /models/
ENV MODEL_NAME=my_model