# trusted-setup
Manta Trusted Setup Docker Version.

# How to run?

### 1、Clone

```shell
git clone git@github.com:skyMetaverse/trusted-setup.git
```

### 2、Enter trusted-setup directory 

```shell
cd trusted-setup
```

### 3、Build

```shell
docker build -t <image names> .
```

### 4、How to register?

```shell
docker run --rm <image names> /run.sh <Twitter username> <Email>
```

### 5、How to contribution?

```shell
docker run --rm <image names> /run.sh <Your Secret>
```

# Don't want to build?

### 1、Pull images

```shell
docker pull syskey66/manta:1.1
```

### 2、Register

```
docker run --rm syskey66/manta:1.1 /run.sh <Twitter username> <Email>
```

### 3、Contribution

```
run --rm syskey66/manta:1.1 /run.sh <Your Secret>
```

