import { NativeEventEmitter } from "react-native";
import ShareMenu from "./src/NativeShareMenu";
import ShareMenuReactViewNative from "./src/NativeShareMenuReactView";

const EventEmitter = new NativeEventEmitter(ShareMenu);

const NEW_SHARE_EVENT_NAME = "NewShareEvent";

export const ShareMenuReactView = {
  dismissExtension(error = null) {
    ShareMenuReactViewNative?.dismissExtension(error);
  },
  openApp() {
    ShareMenuReactViewNative?.openApp();
  },
  continueInApp(extraData = null) {
    ShareMenuReactViewNative?.continueInApp(extraData);
  },
  data() {
    return ShareMenuReactViewNative ? ShareMenuReactViewNative.data() : Promise.resolve({});
  },
};

export default {
  /**
   * @deprecated Use `getInitialShare` instead. This is here for backwards compatibility.
   */
  getSharedText(callback) {
    this.getInitialShare(callback);
  },
  getInitialShare(callback) {
    ShareMenu.getSharedText(callback);
  },
  addNewShareListener(callback) {
    const subscription = EventEmitter.addListener(
      NEW_SHARE_EVENT_NAME,
      callback
    );

    return subscription;
  },
};
