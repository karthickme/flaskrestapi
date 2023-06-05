from flask import jsonify

def myModelFunc(input_json):
    dictToReturn = {'Hiiii Hello!!!!':input_json["name"]}
    return jsonify(dictToReturn)