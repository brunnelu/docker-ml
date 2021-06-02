
# ML Container

ML Container (includes Ray, jupyter, TF, Pytorch, Pytorch Geometric and other RL libs)  

## Run

The container includes jupyther lab. To mount the local directory in jupyther lab use:

```
docker run --gpus all -it --network=host \
--shm-size=16gb \
-v $PWD:/home/ray brunnelu/ml
```

To run some some other python code from this directory (e.g. main.py):

```
docker run --gpus all -it --network=host \
--shm-size=16gb \
-v $PWD:/home/ray brunnelu/ml \
python3 /home/ray/main.py
```