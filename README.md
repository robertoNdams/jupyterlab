# jupyterlab
Lab for engineers and scientists with kernels python2, python3, R, go, Spark (py, scala, sql, r)

-----
## Build image
    docker build -t lab .
    
## Run lab
    PORT=xxxx
    PASSWORD=xxxxx
    BASEURL=$USER (you can change when you want)
    docker run -it --rm -p $PORT:8888 -e PASSWORD=$PASSWORD -e BASEURL=$BASEURL --name jupyterlab lab
  
  or
  
    docker run -it --rm -p $PORT:8888 -e PASSWORD=$PASSWORD -e BASEURL=$BASEURL --name jupyterlab gillesndams/jupyterlab
  
    
## kernels
You can work with a variety of kernels
- Python (2,3)
- Go
- R
- Apache Toree (scala, SQL, R)
- PySpark 

-----

## How to use external frameworks (graphframes, databricks, etcc..)

-  **In PySpark** :  [Demo Graphframe](http://nbviewer.jupyter.org/github/robertoNdams/jupyterlab/blob/856e2362bda4f84593340b1fb5b6299cb30c6cfe/examples/DemoGraphframeIPY.ipynb)
-  **with Apache Toree**: [Toree scala](https://github.com/robertoNdams/jupyterlab/blob/master/examples/ToreeScala.ipynb) 


- Working with (golang): [Golang](https://github.com/robertoNdams/jupyterlab/blob/master/examples/Golang.ipynb)
