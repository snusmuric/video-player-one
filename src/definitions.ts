declare global {
  interface PluginRegistry {
    VideoPlayerOne?: VideoPlayerOnePlugin;
  }
}

export interface VideoPlayerOnePlugin {
  /**
   * Playing a video
   * @param {VideoPlayerOneOptions} options { url: string }
   * @returns {Promise<VideoPlayerOneResult>} {result: boolean}
   */
  play(options: VideoPlayerOneOptions): Promise<VideoPlayerOneResult>;
}

export interface VideoPlayerOneOptions {
  /**
   * The url of the video to play
   */
  url: string;
}
export interface VideoPlayerOneResult {
  /**
   * result set to true when successful else false
   */
  result?: boolean;
}

