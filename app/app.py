# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.

from flask import Flask

# def print_hello(name):
#     # Use a breakpoint in the code line below to debug your script.
#     print("Hello :", name)

#
# # Press the green button in the gutter to run the script.
# if __name__ == '__main__':
#     print_hello('hiring manager, Nice to meet you :)')

# See PyCharm help at https://www.jetbrains.com/help/pycharm/




app = Flask(__name__)

@app.route('/')
def hello():
    return "Greetings from James. This is another test"

if __name__ == '__main__':
    app.run()
