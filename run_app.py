from app import app
import os

if __name__ == '__main__':

    #0.0.0.0 wich from the server perspective or context means
    # all ip adresses on this network interface
    # os.environ.get("PORT",5000) to bind the port that heroku provide. If port not set use 50000

    port = os.environ.get("PORT", 5000)
    print("ICI PORT dans run_app", port)
    app.run(debug=False, host="0.0.0.0", port = port)