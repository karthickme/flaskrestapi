from flask import Flask, request
app = Flask(__name__)
import sample, mymodel

@app.route('/')
def hello():
	return sample.fun()

@app.route('/api/startjob', methods=['POST'])
def endpoint():
    input_json = request.get_json(force=True) 
    # force=True, above, is necessary if another developer 
    # forgot to set the MIME type to 'application/json'
    return mymodel.myModelFunc(input_json)
    
if __name__ == '__main__':
	app.run(debug=True,host='0.0.0.0', port=8000)
