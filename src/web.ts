import { WebPlugin } from '@capacitor/core';

import type { FirebaseInAppMessagingPlugin } from './definitions';

export class FirebaseInAppMessagingWeb extends WebPlugin implements FirebaseInAppMessagingPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
