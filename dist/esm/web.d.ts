import { WebPlugin } from '@capacitor/core';
import { VideoPlayerOnePlugin, VideoPlayerOneOptions, VideoPlayerOneResult } from './definitions';
export declare class VideoPlayerOneWeb extends WebPlugin implements VideoPlayerOnePlugin {
    private _videoEl;
    private _videoContainer;
    private _container;
    private _url;
    constructor();
    play(options: VideoPlayerOneOptions): Promise<VideoPlayerOneResult>;
    private _initializeVideoPlayer;
}
declare const VideoPlayerOne: VideoPlayerOneWeb;
export { VideoPlayerOne };
