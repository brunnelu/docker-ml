
# ML Container

My ml container based on the ray ml container with some extra modules

## Run

The container includes jupyther lab. To mount the local directory in jupyther lab use:

```
docker run --gpus all -it --network=host \
--shm-size=16gb \
-v $PWD:/home/ray brunnelu/ml
```