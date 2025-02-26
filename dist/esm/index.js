import { registerPlugin } from '@capacitor/core';
const FirebaseInAppMessaging = registerPlugin('FirebaseInAppMessaging', {
    web: () => import('./web').then(m => new m.FirebaseInAppMessagingWeb()),
});
export * from './definitions';
export { FirebaseInAppMessaging };
//# sourceMappingURL=index.js.map