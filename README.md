# Iterating-JSON-APIs

Iterating through JSON APIs can sometimes be daunting. However, this visual guide provides an option on how to loop through JSON, access specific information, and how to explain the process of obtaining it. This guide has two sections, one with a single API response for beginners and another with multiple responses and nested arrays/hashes. 

## Table of Contents
- [Introduction](#introduction)
- [Example JSON Response 1](#example-json-response-1)
  - [Answers](#answers)
- [Example JSON Response 2](#example-json-response-2)
  - [Answers](#answers)

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

## Example JSON Response 1

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
3) all dosage information 


### Answers
1) To obtain the version attribute, we can simply assign the JSON response to a variable and parse it.
<details>
  <summary>Answer 1</summary>
  
```ruby
json = JSON.parse'{
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
            ]
          }
        ]
      }'

puts json['version']
```

From the API response, version is simply a key,value pair (like a hash), so we can use the key `version` to obtain the value (1.5).
</details>

2) To obtain the ID, we need to first go down the chain and get into the hash where the ID is located. The ID has a value of 1002, and it is located inside the `data` array of hashes.
<details>
  <summary>Answer 2</summary>
  
```ruby
json = JSON.parse'{
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
            ]
          }
        ]
      }'

puts json['data'][0]['id']
```
It's a little ugly on how its presented, but we can retrieve the value by first assigning the variable json and parsing it. We then use the `data` key to access the array, access the first index of the array by appending `[0]`, and then use the `id` key to access the number of 1002.
</details>

3) To obtain all the dosage information, we need to follow what we did for the previous question and iterate over the array. 

<details>
  <summary>Answer 3</summary>
  
```ruby
json = JSON.parse'{
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
            ]
          }
        ]
      }'

 json['data'][0]['dosage'].each do |dosage|
  puts dosage
 end
```
</details>


## Example JSON Response 2

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
### Explanation
For this example, we have multiple JSON resources that is returned as an object that contains some data as an array of hashes, more attributes, and a meta hash. 

Print out the following to the console:
1) all generic names 
2) the last resource's image full attribute, the w and h.

### Answers
1) To obtain every generic names in the request, we first need to obtain the data array of hashes, then loop through each result.
<details>
  <summary>Answer 1</summary>
  
```ruby
json['data'].each do |x|
  puts x['generic_name']
end
```
</details>

2) In order to obtain the last image attributes, we first have to access the data array, and then print the specific attributes.
<details>
  <summary>Answer 2</summary>
  
```ruby
puts json['data'][1]['image']['full']
puts json['data'][1]['image']['w']
puts json['data'][1]['image']['h']
```
</details>
