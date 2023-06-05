from flask import jsonify

def myModelFunc(input_json):
    dictToReturn = {'Hiiii':input_json["name"]}
    return jsonify(dictToReturn)