# IJulia with Jupyter for Appitainer 

#### Build Julia
``docker build -t izone/julia -f Dockerfile .``

``docker build -t izone/julia:1.8.3 -f Dockerfile .``

#### Build Julia for Apptainer
``
apptainer pull ./ijulia.sif docker://izone/julia:latest
``
-----

#### Run
```
docker run --rm --name IJulia --gpus all \
--publish 8888:8888 \
-ti izone/julia jupyter lab \
    --allow-root \
    --no-browser \
    --ip=0.0.0.0 \ 
    --port=8888 \
    --NotebookApp.token='' 
```

