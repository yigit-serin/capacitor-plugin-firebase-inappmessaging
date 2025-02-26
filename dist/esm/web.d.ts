import { WebPlugin } from '@capacitor/core';
import type { FirebaseInAppMessagingPlugin } from './definitions';
export declare class FirebaseInAppMessagingWeb extends WebPlugin implements FirebaseInAppMessagingPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
}
