## 欢迎来到 Cloud Studio

我们在 Machine Learing 环境中为您预先安装了 IPython、jupyter、ggplot、pandas、
tensorflow、scikit-learn，您可以方便地在您的专用小主机中使用它们。

下面以 jupyterlab 的使用为例，简单介绍一下环境的使用。

## 1.安装 `jupyterlab`  设置 `访问密码`
- 安装 jupyterlab
```
sudo pip install -i https://pypi.tuna.tsinghua.edu.cn/simple jupyterlab
```
- 设置登录密码
```
jupyter notebook password
```

## 2.启动 jupyterlab
- 由于 pandas 库问题。需要先运行
 ```
 sudo sed -i 's/pandas.lib/pandas/g' /usr/local/lib/python3.5/dist-packages/ggplot/stats/smoothers.py
 ```
 - 启动
 ```
 nohup jupyter lab --ip=0.0.0.0 --port=8080 > /dev/null 2>&1 &
 ```
## 3.创建访问链接 & 登录 jupyter
- 将端口号设置为 `8080`, 点击【创建链接】生成访问链接。
- 浏览器地址栏里粘贴 & 后边输入 /lab

## 更新 jupyterlab
```
sudo pip install --upgrade -i https://pypi.tuna.tsinghua.edu.cn/simple jupyterlab 
```
## python3 环境更新 pip 模块
```
sudo python3 -m pip install --upgrade -i https://pypi.tuna.tsinghua.edu.cn/simple pip
```
