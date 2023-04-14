# ☁️ Cats in clouds

## 🐱 Introduction

Chonker is a colloquial term for a fat but photogenic cat. I have made a website that allows the user to assess the thickness of the cats in the photos according to a six-point scale. It is a form of fun and a reference to internet memes. That being said, I do not support fattening animals on purpose, by malnutrition or negligence.

## ⚒️ Technologies:
- Python 3.10.1
- Flask 2.0.2
- Terraform
- Docker
- Google Cloud Platform
    - Photos of the cats are kept in Google Cloud Storage Bucket
- sqlite3

## 🚀 To Do
- Push to Artifact Registry
- Deploy App to GKE using Terraform resources

## 🐾 How does my site work?
Upon entering the website, the user may register (*Register* tab), which is recommended but not necessary. Unregistered users can rate cats, but they will not be included in the ranking (*Leaderboard* tab). All you need to register is a username and password. You can change your password at any time (*Change password* tab). A registered user can log in (*Log in* tab). Images of cats are displayed randomly on the main page, without repetition. Under the image there is chart of cat body-fat indexes. The user can decide which category the cat in the photo belongs to:
 - A Fine Boi,
 - He Chomnk,
 - A Heckin' Chonker,
 - H E F T Y C H O N K,
 - M E G A C H O N K E R,
 - OH LAWD HE COMIN.

 After voting, two pieces of information are displayed instead of the chonk chart - users vote and community raiting. The ranking (*Leaderboard* tab) includes the ten users who rated the highest number of photos. In case of an error on the website, a relevant apology message is displayed.
