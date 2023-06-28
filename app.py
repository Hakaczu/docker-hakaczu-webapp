from flask import Flask, render_template
import requests
import json
app = Flask(__name__)

def get_meme():
    url = "https://meme-api.com/gimme"
    response = json.loads(requests.request("GET", url).text)
    print(response)
    meme_large = response["preview"][-2]
    subreddit = response["subreddit"]
    title = response["title"]
    author = response["author"]
    return meme_large, subreddit, title, author

@app.route("/")
def index():
    try:
        meme_pic, subreddit, title, author = get_meme()
        return render_template("meme_index.html", meme_pic=meme_pic, subreddit=subreddit, meme_title=title, author=author)
    except:
        return render_template("error.html")

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=5050)
