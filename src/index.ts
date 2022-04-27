import { registerPlugin } from '@capacitor/core';

import type { FirebaseInAppMessagingPlugin } from './definitions';

const FirebaseInAppMessaging = registerPlugin<FirebaseInAppMessagingPlugin>('FirebaseInAppMessaging', {
  web: () => import('./web').then(m => new m.FirebaseInAppMessagingWeb()),
});

export * from './definitions';
export { FirebaseInAppMessaging };
