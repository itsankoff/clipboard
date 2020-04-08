# Browser Clipboard example

## Run
```
docker build -t docker-static .
docker run --rm --name=clipboard -p 90:90 -v $(pwd)/demo:/usr/share/nginx/html -d docker-static
```

## Browser support
* **Chrome** `Version 80.0.3987.163 (Official Build) (64-bit)`  
    * ✅ `navigator.clipboard.writeText`
    * ✅ `navigator.clipboard.readText`
    * ✅ Copy/Cut/Paste keyboard shortcuts
* **Firefox** `75.0 (64-bit)`  
    * ✅ `navigator.clipboard.writeText`
    * ❌ `navigator.clipboard.readText`
    * ❌ Past keyboard shortcut
* **Safari** `Version 13.1 (14609.1.20.111.8)`  
    * ✅ `navigator.clipboard.writeText`
    * ✅ `navigator.clipboard.readText`
    * ❌ Past keyboard shortcut
