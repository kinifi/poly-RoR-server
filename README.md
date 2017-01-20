# Poly - Server
## A Engine Agnostic Game Package Manager

![Game Package Manager](http://i.imgur.com/dU0w44o.png)

#### A Package Manager for Game Developers. Have you ever needed a small script or plugin and had to go find it? Poly makes all this easier.
#### The web has NPM, Bower and a million others. I dont want all of their shit. I want only gamedev related packages and I want to install them where I want to!

---

##What is this?

This is a package manager made for game devs. Most game devs just want to easily pull down plugins and put them in their desired location. NPM makes it convenient by putting everything in a "nodemodules" folder but they aren't writing games for 6+ SKU's on different hardware. We need to easily pull down plugins, scripts, and placeholder art and put them in a location *we choose*.

---

##How does this work?

The first implementation will store gpm.json files into a database the contains a bunch of information but more importantly Git Repo links. When you type commands like

```
gpm install steamworksdotnet
```

The assets for that git repo are stored on github, bitbucket, or whatever else. Soon to be on our own servers.

---

##What is a Poly?

Poly - a package that contains assets to be consumed in a game project.

---

##What if I dont have internet?

You can install *polys* locally to a general GPM directory on your computer with the ```gpm install steamworksdotnet -g``` command. This will save that *poly* for later use. So incase you aren't connected to the internet or have slow internet you can call ```gpm install steamworksdotnet -l```

---
