from flask import Flask, render_template

app = Flask(__name__)

print("hi")

#Dice Main page
@app.route('/')
def dice_page():
	print("noep=")
	return render_template('dice_page.html')

#Testing to check if it works
@app.route('/test')
def test():
    return "Works!"
