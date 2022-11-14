# Iterating-JSON-APIs
A visual-based guide on iteration JSON APIs with Ruby.
https://www.reddit.com/user/johncorderox/comments/.json

Test JSON API Response
```javascript
{
    "type": "item",
    "version": "1.7.20",
    "data":{
      "1002":{
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
          notes: null
        },
        "1003":{
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
          ],
          notes: "great for vertigo relief"
        }
      },
      meta: {
        "total_count": 2,
        "call_type": "GET",
        "called_at": "2022-10-31T18:25:19.519Z"
      }
    }
}'
```
