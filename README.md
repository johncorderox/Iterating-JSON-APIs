# Iterating-JSON-APIs

Iterating through JSON APIs can sometimes be daunting. However, this visual guide provides an option on how to loop through JSON, access specific information, and how to explain the process of obtaining it. This guide has two sections, one with a single API response for beginners and another with multiple responses and nested arrays/hashes. 

## Table of Contents
- [Introduction](#introduction)
- [Example JSON Response 1](#example-json-response-1)

## Introduction
There are a few things you might want to know and understand before getting on to the examples, but if you already have a general understanding, you can skip this part.

- Array - a data structure that can hold a list of values.
```ruby
api = ["pass1", "pass2", "pass3"]
puts api[0]
=> "pass1"
```
- Hash - a data structure that works with key and value pairs for information.
```ruby
json = { a: "cool", b: "beans", c: "dude" }
puts json[:a]
=> "cool"
```

- JSON.parse() - after requiring the json library in the ruby file, `JSON.parse()` will analyze the argument and transform the JSON array into a ruby array.

```ruby
a = '[id: 1, language: "spanish"]'
json = JSON.parse(a)
json => [id: 1, language: "spanish"]
json.class => Array

```

## Example JSON Response 1 (Easy)

```javascript
{
    "type": "item",
    "version": "1.5",
    "data":[
          {
              "id":1002,
              "generic_name": "ACETAMINOPHEN",
              "brand_name": "Tylenol",
              "film_coated": true,
              "dosage": [
                          200,
                          400,
                          500,
                          1000
              ],
             },
            ],
 }
```

### Explanation
For this example, we have a single JSON resource that is returned as an object that contains a `type`, `version`, and an array of hashes for `data`. We can see that we have a nested array for `dosage` inside the hash too! Let's start with requests:

Print out the following to the console:
1) the version attribute 
2) the id number from the data attribute




```javascript
{
    "type": "item",
    "version": "1.7.20",
    "data":[
          {
              "id":1002,
              "generic_name": "ACETAMINOPHEN",
              "brand_name": "Tylenol",
              "film_coated": true,
              "dosage": [
                          200,
                          400,
                          500,
                          1000
              ],
              "purpose": "pain reliever/fever reducer",
              "uses": [
                        "headache",
                        "muscular aches",
                        "backache",
                        "minor pain of arthritis",
                        "the common cold",
                        "toothache",
                        "premenstrual and menstrual cramps",
                        "temporarily reduces fever"
                        
              ],
              "image": {
                "full": "tylenol.png",
                "small": "tylenol_small.png",
                "x":0,
                "y":0,
                "w":100,
                "h":100
              },
              "tags": [
                "pain",
                "OTC",
                "cramps"
              ],
              "purpose": "treat motion sickness",
              "uses": [
                        "vomiting",
                        "motion sickness",
                        "nausea"
                        
              ],
              "image": {
                "full": "dramamine.png",
                "small": "dramamine_small.png",
                "x":0,
                "y":0,
                "w":250,
                "h":250
              }
            },
            {
              "id": 1003,
              "generic_name": "MECLIZINE",
              "brand_name": "Dramamine",
              "film_coated": false,
              "dosage": [
                          25,
                          50
              ],
              "purpose": "treat motion sicknessx",
              "uses": [
                        "vomiting",
                        "motion sickness",
                        "nausea"
                        
              ],
              "image": {
                "full": "dramamine.png",
                "small": "dramamine_small.png",
                "x":0,
                "y":0,
                "w":250,
                "h":250
              },
              "tags": [
                "motion sickness",
                "OTC",
                "vertigo"
              ]
            }
          ],
        "meta": {
          "total_count": 2,
          "call_type": "GET"
        }
      }
```
