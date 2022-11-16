require 'json'

json = JSON.parse'{
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
      }'
