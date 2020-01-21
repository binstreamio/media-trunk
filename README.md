# media-trunk

media-trunk is a media trunk with different protocols and formats for test purpose.




## How to use

### Start docker
``` bash
docker run -d -p 8080:8080 -p 1935:1935 binstreamio/media-trunk
```

## Available formats

| protocols | formats | codecs | test |
| ------------- | ------------- | ------------- | ------------- |
| RTMP | flv | H.264/AAC | ffplay rtmp://127.0.0.1/live/avc |
| HTTP | flv | H.264/AAC | ffplay rtmp://127.0.0.1:8080/live/avc.flv |
| HLS | mpegts | H.264/AAC | ffplay rtmp://127.0.0.1:8080/live/avc.m3u8 |
| HLS | mpegts | H.265/AAC | ffplay rtmp://127.0.0.1:8080/live/hevc.m3u8 |


## Links
1. https://github.com/FFmpeg/FFmpeg -- FFmpeg is a collection of libraries and tools to process multimedia
2. https://github.com/immortal/immortal --  A *nix cross-platform (OS agnostic) supervisor
3. https://github.com/ossrs/srs -- SRS is a live streaming cluster, high efficiency, stable and simple.
4. https://peach.blender.org -- Peach was the first Open Project hosted by the new Blender Institute in Amsterdam.