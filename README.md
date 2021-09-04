## Machine Learing

下面以 jupyterlab 的使用为例，简单介绍一下环境的使用。

- 安装 `jupyterlab`  设置 `访问密码`
    - 安装 jupyterlab
        ```
        sudo pip install --no-cache-dir -i https://mirrors.aliyun.com/pypi/simple jupyterlab
        ```
    - 设置登录密码
        ```
        jupyter notebook password
        ```
    - 指定工作目录
        ```
        jupyter notebook --generate-config
        vi /Users/yuxiang/.jupyter/jupyter_notebook_config.py 
        ## 修改配置用于笔记本和内核的目录。
        c.NotebookApp.notebook_dir = '/Users/yuxiang/Documents/explore/ai'
        ```

- 启动 jupyterlab
    - 启动
        ```
        nohup jupyter notebook --ip=0.0.0.0 --port=8080 > /dev/null 2>&1 &
        ```
 
- 访问 & 登录 jupyter
    - 将端口号设置为 `8080`
    - 浏览器地址栏里粘贴 & 后边输入 /lab

- 更新 jupyterlab
    ```
    sudo pip install --no-cache-dir --upgrade -i https://mirrors.aliyun.com/pypi/simple jupyterlab 
    ```
- python3 环境更新 pip 模块
    ```
    sudo python3 -m pip install --upgrade -i https://mirrors.aliyun.com/pypi/simple pip
    ```

## Git 添加远程仓库
    ```
    git remote add [github|仓库名] git@github.com:honghuhu/explore.git
    git pull [github|仓库名] [分支]
    ```

## pip 安装依赖并指定版本号
    ```
    pip install --no-cache-dir -i https://mirrors.aliyun.com/pypi/simple tensorflow==1.12.0
    ```

## Ubuntu 安装 pip3
    ```
    apt-get install python3-pip
    ```

## pip 源
```
    https://mirrors.aliyun.com/pypi/simple
    https://pypi.tuna.tsinghua.edu.cn/simple
```
