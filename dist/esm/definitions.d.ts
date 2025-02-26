import type { PluginListenerHandle } from '@capacitor/core';
export interface FirebaseInAppMessagingPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    /**
     * Listen for when an in-app message is clicked
     * @since 1.0.0
     */
    addListener(eventName: 'inAppMessagingMessageClicked', listenerFunc: (data: any) => void): Promise<PluginListenerHandle>;
    /**
     * Listen for when an in-app message is dismissed
     * @since 1.0.0
     */
    addListener(eventName: 'inAppMessagingMessageDismissed', listenerFunc: (data: any) => void): Promise<PluginListenerHandle>;
    /**
     * Remove all listeners for this plugin
     * @since 1.0.0
     */
    removeAllListeners(): Promise<void>;
}
