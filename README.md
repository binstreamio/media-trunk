# media-trunk

media-trunk is a media trunk with different protocols and formats for test purpose.




## How to use

### Start docker
``` bash
docker run --shm-size=256m -d -p 8080:8080 -p 1935:1935 -p 1950:1950/udp -p 1952:1952/udp binstreamio/media-trunk
```

## Available formats

| protocols | formats | codecs | test |
| ------------- | ------------- | ------------- | ------------- |
| RTMP | flv | H.264/AAC | ffplay rtmp://127.0.0.1/live/avc |
| HTTP | flv | H.264/AAC | ffplay http://127.0.0.1:8080/live/avc.flv |
| HLS | mpegts | H.264/AAC | ffplay http://127.0.0.1:8080/live/avc.m3u8 |
| HLS | mpegts | H.265/AAC | ffplay http://127.0.0.1:8080/live/hevc.m3u8 |
| SRT | mpegts | H.264/AAC | ffplay srt://127.0.0.1:1950/live/test?paket_size=1316&mode=caller |
| SRT | mpegts | H.265/AAC | ffplay srt://127.0.0.1:1952/live/test?paket_size=1316&mode=caller |


## Links
1. https://github.com/FFmpeg/FFmpeg -- FFmpeg is a collection of libraries and tools to process multimedia
2. https://github.com/immortal/immortal --  A *nix cross-platform (OS agnostic) supervisor
3. https://github.com/ossrs/srs -- SRS is a live streaming cluster, high efficiency, stable and simple.
4. https://peach.blender.org -- Peach was the first Open Project hosted by the new Blender Institute in Amsterdam.
5. https://github.com/docker -- Docker Engine is the industry’s de facto container runtime that runs on various Linux 
6. https://github.com/Haivision/srt -- Secure, Reliable, Transport