FROM tensorflow/tensorflow:latest-gpu-jupyter
# Set the working directory
WORKDIR /app
ENV PORT=8888
EXPOSE 8888
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt

# Run jupyter notebook when the container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]