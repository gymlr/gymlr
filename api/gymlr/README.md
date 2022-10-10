## <p align="center">Gymler APi</p>

[![Discord](https://img.shields.io/discord/823720615965622323.svg?style=for-the-badge)](https://discord.gg/UDNcTrBagN)
[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/vkxni)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)](https://github.com/alelievr/Mixture/blob/master/LICENSE)

<p align="center">
<img src="static/ron_benchpress.png"  alt="gymlr" width="200" height="200"/></a>
<p>

<p align="center"> 
<strong>
Get healthier, stronger and better ... with Gymler.
</strong>
</p> 

--- 

<p align="center">
A powerful utility APi Endpoint that returns all sort of health/boost or muscle gainer supplements.

---

## Usage 

Since this is a web based HTTP server, you have to send `GET` requests to the server. 

### Endpoints

`/api/supps/` will return everything (boost, muscles, health) ...

`/api/supps/<>` this will find a specific supplement by name.

- `/api/supps/boost` will return all boost supplements.
- `/api/supps/muscles` will return all muscle gainer supplements.
- `/api/supps/health` will return all health supplements.


<p align="center">
<strong>Examples</strong>
<p>

```
```

JavaScript/TypeScript
    
```js
const fetch = require('node-fetch');

const res = await fetch('https://gymlr.urlcomingsoon.xd/api/supps/boost');
const data = await res.json();
console.log(data);
```

Python
```py
import requests

res = requests.get('https://gymlr.urlcomingsoon.xd/api/supps/boost')
data = res.json()
print(data)
```
