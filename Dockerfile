
# Start with a Miniconda base image
FROM continuumio/miniconda3:latest

# Set working directory
WORKDIR /app

# Add the required conda channels
RUN conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda config --add channels conda-forge

# Install ETE3
RUN conda install -y ete3

# Install any additional dependencies (if needed)
# Example: RUN conda install -y matplotlib biopython

# Copy project files into the container (optional)
# COPY . /app

# Set the entrypoint or command for your container
# CMD ["python", "your_script.py"]

# Optional: Expose a port if you have a web-based app using ETE3
# EXPOSE 8080