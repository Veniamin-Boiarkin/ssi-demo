## Installation



**1. Make sure you've got Docker installed on your machine**

If you do not have Docker installed, you can download it from [Docker Desktop](https://www.docker.com/products/docker-desktop/)

**2. Create a directory somewhere on your machine**
```
cd ~
mkdir ssi-example && cd ssi-example
```

**2. Clone the repository to the created directory** (`ssi_example`)
```
git clone https://github.com/Veniamin-Boiarkin/ssi-demo.git
```

**3. Go to the directory you've just cloned**
```
cd ssi-demo
```
In this example, your current directory should be `~/ssi-example/ssi-demo`

**4. Build services using docker-compose**
```
docker-compose build --no-cache --progress=plain
```

**5. Run docker services**
```
docker-compose up -d
```

**6. Open your hosts file in your favourite editor**
```
sudo nano /etc/hosts
```

**7. Link the domain name (e.g., ssikit.com) to services run in Docker**

To do so, you need to add a new line at the beginning of your hosts file:
```
0.0.0.0		ssikit.com
```
Now, save the changes and close the file (`/etc/hosts`).
On Windows-based machine, the process of adding a new host is similar, whereas the file you need to edit is `C:\Windows\System32\drivers\etc\hosts`.



## Usage

At this point you should be able to access the following URIs:
1. http://ssikit.com:7000 (Core API)
2. http://ssikit.com:7001 (Signatory API)
3. http://ssikit.com:7002 (Custodian API)
4. http://ssikit.com:7003 (Auditor API)
5. http://ssikit.com:7004 (ESSIF API)
6. http://ssikit.com:7010 (OIDC API)


An example of how to use these endpoints can be found in [Example](example.txt)
