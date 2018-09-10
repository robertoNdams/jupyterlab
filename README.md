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
    
## kernels
You can work with a variety of kernels
- Python (2,3)
- Go
- R
- Spark (PySpark, scala, SQL, R)

------------------------------------

## Some awesome features of this lab.

--------------------------------------

### Pixiedust as How to use external frameworks (graphframes, databricks, etcc..) in PySpark 
![Demo Graphframe](/jupyterlab/blob/master/DemoGraphframeIPY.pdf)


