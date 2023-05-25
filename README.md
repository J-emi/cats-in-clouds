# ☁️ Cats in clouds

## 🐱 Introduction

Chonker is a colloquial term for a fat but photogenic cat. I have made a website that allows the user to assess the thickness of the cats in the photos according to a six-point scale. It is a form of fun and a reference to internet memes. That being said, I do not support fattening animals on purpose, by malnutrition or negligence.

🌎 **See the page [here](http://34.88.94.239)**
*Currently the link is not working as my trial on the Google Cloud Platform has expired. Sorry!*

## 🐾 How does my site work?
Upon entering the website, the user may register (*Register* tab), which is recommended but not necessary. Unregistered users can rate cats, but they will not be included in the ranking (*Leaderboard* tab). All you need to register is a username and password. You can change your password at any time (*Change password* tab). A registered user can log in (*Log in* tab). Images of cats are displayed randomly on the main page, without repetition. Under the image there is chart of cat body-fat indexes. The user can decide which category the cat in the photo belongs to:
 - A Fine Boi,
 - He Chomnk,
 - A Heckin' Chonker,
 - H E F T Y C H O N K,
 - M E G A C H O N K E R,
 - OH LAWD HE COMIN.

 After voting, two pieces of information are displayed instead of the chonk chart - users vote and community raiting. The ranking (*Leaderboard* tab) includes the ten users who rated the highest number of photos. In case of an error on the website, a relevant apology message is displayed.

 <p align="center">
    <img src="https://i.ibb.co/jfjXwNC/Zrzut-ekranu-2023-04-17-o-22-38-01.png" alt="example screenshot of the website layout" height="400"/>
</p>

 ## ⚒️ Technologies:
<p align="left">
    <a href="https://cloud.google.com" target="_blank"> <img src="https://static-00.iconduck.com/assets.00/google-cloud-icon-512x412-8rnz6wkz.png" alt="google cloud platform" width="40" height="40"/> </a>
    <a href="https://www.w3.org/html/" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original-wordmark.svg" alt="html5" width="40" height="40"/> </a>
    <a href="https://www.w3schools.com/css/" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original-wordmark.svg" alt="css3" width="40" height="40"/> </a>
    <a href="https://www.python.org" target="_blank"> <img src="https://cdn3.iconfinder.com/data/icons/logos-and-brands-adobe/512/267_Python-512.png" alt="python" width="40" height="40"/> </a>
    <a href="https://flask.palletsprojects.com/en/2.2.x/" target="_blank"> <img src="https://www.pngkey.com/png/detail/98-985032_flask-logo-flask-python-icon.png" alt="flask" width="40" height="40"/> </a>
    <a href="https://git-scm.com" target="_blank"> <img src="https://git-scm.com/images/logos/downloads/Git-Icon-1788C.png" alt="git" width="40" height="40"/> </a>
    <a href="https://www.docker.com" target="_blank"> <img src="https://www.docker.com/wp-content/uploads/2022/03/Moby-logo.png" alt="docker" width="40" height="40"/> </a>
    <a href="https://www.terraform.io" target="_blank"> <img src="https://www.datocms-assets.com/2885/1620155116-brandhcterraformverticalcolor.svg" alt="terraform" width="40" height="40"/> </a>
    <a href="https://kubernetes.io" target="_blank"> <img src="https://upload.wikimedia.org/wikipedia/labs/thumb/b/ba/Kubernetes-icon-color.svg/2110px-Kubernetes-icon-color.svg.png" alt="kubernetes" width="40" height="40"/> </a>
</p>

- Backend API and frontend written in Python using Flask framework
- Application is prepared for remote deployment using Docker
- Infrastructure configuration managed with Terraform
- Cat photos are managed and hosted in a Google Cloud Storage bucket
- Continuous Integration through GitHub Actions and Google Cloud Artifact Registry
- Deployment onto a 2-node Linux-based Kubernetes Cluster with a Load Balancer Service in Google Kubernetes Engine

## Architecture graph

<img src="https://i.imgur.com/CurfNV5.png" alt="Conceptual graph of project architecture" height="400">

 ## 🚀 To Do
- PostgreSQL database
- CSS enhancement
