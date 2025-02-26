var capacitorFirebaseInAppMessaging = (function (exports, core) {
    'use strict';

    const FirebaseInAppMessaging = core.registerPlugin('FirebaseInAppMessaging', {
        web: () => Promise.resolve().then(function () { return web; }).then(m => new m.FirebaseInAppMessagingWeb()),
    });

    class FirebaseInAppMessagingWeb extends core.WebPlugin {
        async echo(options) {
            console.log('ECHO', options);
            return options;
        }
    }

    var web = /*#__PURE__*/Object.freeze({
        __proto__: null,
        FirebaseInAppMessagingWeb: FirebaseInAppMessagingWeb
    });

    exports.FirebaseInAppMessaging = FirebaseInAppMessaging;

    Object.defineProperty(exports, '__esModule', { value: true });

    return exports;

})({}, capacitorExports);
//# sourceMappingURL=plugin.js.map
