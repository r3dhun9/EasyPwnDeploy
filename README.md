![](https://i.imgur.com/3L9cpJv.png)

<div align="center">
<a href="https://www.facebook.com/philip.chen.581"><img src="https://img.shields.io/badge/author-Redhung-green"></a>
</div>

---

# Features
* You can deploy pwn challenges rapidly

* You may modify the directory's name to whatever you want

---

# Installation
> First, change your binary and flag into ctf-pwn directory

```bash=
git clone https://github.com/r3dhun9/EasyPwnDeploy.git
cd EasyPwnDeploy/ctf-pwn
vim flag                     # modify your flag
vim run.sh                   # modify ${this_is_your_binary}
rm this_is_your_binary       # replace the binary into yours
```


> Second, build the challenge's image from Dockerfile

```dockerfile=
sudo docker build -t ${your_image_name} . --no-cache
```

> And lastly, run this command

```bash=
sudo docker run --name ${your_containers_name} -d -p ${your_port}:9999 -it ${your_images_name} /bin/bash -c "su - pwn -c 'ncat -ve /home/ctf-pwn/run.sh -klp 9999'"
```

---

# More maintenance
* You should restart the container every month or every week
* Add your restart script into your crontab is a good choice

---

# TODO
- [ ] using tcpdump to check the exploits
