#!/bin/bash

# ffmpeg -i images/${NAME}.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}.mp4
# ffmpeg -i images/${NAME}.gif -filter:v -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}.mp4

NAME=camel_mask
ffmpeg -i images/${NAME}.gif -filter_complex "[0]reverse[r];[0][r]concat=n=2:v=1:a=0" images/${NAME}_loop.gif
ffmpeg -r 12 -i images/${NAME}_loop.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" videos/${NAME}_loop.mp4

NAME=fish_mask
ffmpeg -i images/${NAME}.gif -filter_complex "[0]reverse[r];[0][r]concat=n=2:v=1:a=0" images/${NAME}_loop.gif
ffmpeg -r 12 -i images/${NAME}_loop.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" videos/${NAME}_loop.mp4

NAME=dancer_mask
ffmpeg -i images/${NAME}.gif -filter_complex "[0]reverse[r];[0][r]concat=n=2:v=1:a=0" images/${NAME}_loop.gif
ffmpeg -r 12 -i images/${NAME}_loop.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" videos/${NAME}_loop.mp4

NAME=horse_dense
ffmpeg -i images/${NAME}.gif -filter_complex "[0]reverse[r];[0][r]concat=n=2:v=1:a=0" images/${NAME}_loop.gif
ffmpeg -r 12 -i images/${NAME}_loop.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" videos/${NAME}_loop.mp4

NAME=judo_dense
ffmpeg -i images/${NAME}.gif -filter_complex "[0]reverse[r];[0][r]concat=n=2:v=1:a=0" images/${NAME}_loop.gif
ffmpeg -r 12 -i images/${NAME}_loop.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" videos/${NAME}_loop.mp4

NAME=duck_dense
ffmpeg -i images/${NAME}.gif -filter_complex "[0]reverse[r];[0][r]concat=n=2:v=1:a=0" images/${NAME}_loop.gif
ffmpeg -r 12 -i images/${NAME}_loop.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" videos/${NAME}_loop.mp4


# ffmpeg -i loop.gif -filter:v -c:v libx264 -pix_fmt yuv420p -crf 20 loop.mp4
# ffmpeg -i loop.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 loop.mp4
# ffmpeg -i loop.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" loop.mp4



# ffmpeg -r 8 -i images/${NAME}.gif   -movflags faststart -pix_fmt yuv420p -vf "fps=12;scale=trunc(iw/2)*2:trunc(ih/2)*2" videos/${NAME}.mp4
# ffmpeg -r 8 -i images/${NAME}.gif   -movflags faststart -pix_fmt yuv420p -vf fps=12 videos/${NAME}.mp4

# ffmpeg -i images/${NAME}.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}.mp4
# NAME=fish_mask
# ffmpeg -i images/${NAME}.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}.mp4
# NAME=dancer_mask
# ffmpeg -i images/${NAME}.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}.mp4

# NAME=horse_dense
# ffmpeg -i images/${NAME}.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}.mp4
# NAME=judo_dense
# ffmpeg -i images/${NAME}.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}.mp4
# NAME=duck_dense
# ffmpeg -i images/${NAME}.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}.mp4


# NAME=horse
# ffmpeg -i images/${NAME}_raft.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_raft.mp4
# ffmpeg -i images/${NAME}_dino.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_dino.mp4
# ffmpeg -i images/${NAME}_ours.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_ours.mp4
# ffmpeg -i videos/${NAME}_dino.mp4 -i videos/${NAME}_raft.mp4 -filter_complex hstack videos/${NAME}_temp.mp4
# ffmpeg -i videos/${NAME}_temp.mp4 -i videos/${NAME}_ours.mp4 -filter_complex hstack videos/${NAME}_all.mp4


# NAME=camel
# ffmpeg -i images/${NAME}_raft.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_raft.mp4
# ffmpeg -i images/${NAME}_dino.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_dino.mp4
# ffmpeg -i images/${NAME}_ours.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_ours.mp4
# ffmpeg -i videos/${NAME}_dino.mp4 -i videos/${NAME}_raft.mp4 -filter_complex hstack videos/${NAME}_temp.mp4
# ffmpeg -i videos/${NAME}_temp.mp4 -i videos/${NAME}_ours.mp4 -filter_complex hstack videos/${NAME}_all.mp4


# NAME=dog
# ffmpeg -i images/${NAME}_raft.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_raft.mp4
# ffmpeg -i images/${NAME}_dino.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_dino.mp4
# ffmpeg -i images/${NAME}_ours.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_ours.mp4
# ffmpeg -i videos/${NAME}_dino.mp4 -i videos/${NAME}_raft.mp4 -filter_complex hstack videos/${NAME}_temp.mp4
# ffmpeg -i videos/${NAME}_temp.mp4 -i videos/${NAME}_ours.mp4 -filter_complex hstack videos/${NAME}_all.mp4

# NAME=horse2
# ffmpeg -i images/${NAME}_raft.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_raft.mp4
# ffmpeg -i images/${NAME}_dino.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_dino.mp4
# ffmpeg -i images/${NAME}_ours.gif -filter:v fps=30 -c:v libx264 -pix_fmt yuv420p -crf 20 videos/${NAME}_ours.mp4
# ffmpeg -i videos/${NAME}_dino.mp4 -i videos/${NAME}_raft.mp4 -filter_complex hstack videos/${NAME}_temp.mp4
# ffmpeg -i videos/${NAME}_temp.mp4 -i videos/${NAME}_ours.mp4 -filter_complex hstack videos/${NAME}_all.mp4


NAME=camel_mask
# ffmpeg -i videos/${NAME}.mp4 -filter_complex "[0]reverse[r];[0][r]concat,loop=1:250,setpts=N/25/TB" output.mp4
# ffmpeg -i videos/${NAME}.mp4 -vf reverse reversed.mp4
# ffmpeg -f concat -safe 0 -i videos/${NAME}.mp4 -i reversed.mp4 -c copy merged.mp4
# ffmpeg -i "concat:videos/${NAME}.mp4|reversed.mp4" -c copy output.mp4
# ffmpeg -f concat -safe 0 -i videos/${NAME}.mp4 -i reversed.mp4 -c copy final_revered_video.mp4

# ffmpeg -i videos/${NAME}.mp4 -filter:v fps=60 ${NAME}_fast.mp4




