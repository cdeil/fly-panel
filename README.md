# fly-panel

Example Panel app deployment on Fly.

* https://panel.holoviz.org/how_to/deployment/
* https://fly.io/docs/python/

This is not working yet. BokehJS from the browser will not be able to establish a WS connection:

```
WebSocket connection to 'wss://example-panel.fly.dev/app/ws' failed
[bokeh 3.4.2] Failed to connect to Bokeh server: Could not open websocket
```

There is an old blog post here:

https://fly.io/blog/websockets-and-fly/

Probably the `fly.toml` config here is bad.

Can anyone fix it?
