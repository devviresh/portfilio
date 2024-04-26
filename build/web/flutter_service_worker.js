'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "5c8fbf80ef9cbff2d52367e0fd8c6f25",
"assets/AssetManifest.bin.json": "3fa25bba549e58137d7919f8cb3bdbbe",
"assets/AssetManifest.json": "6ab724453856969a32c2761b9a97a0c7",
"assets/assets/gif/app.json": "48a323cce8dbf676ff0407a6af0c0037",
"assets/assets/gif/blog.json": "7f191c72ff75c9307a329cf5011cbdc3",
"assets/assets/gif/success.json": "4f052988ef78c567589a328eb185ef91",
"assets/assets/gif/web.json": "25eb770913697a28e58ae633b51349c4",
"assets/assets/gif/work_in_progress.json": "5cab7542f421bcb5a518c8922157f35c",
"assets/assets/image/apc.png": "564cb7885dce8ae07b5ea5f7d7a855c4",
"assets/assets/image/atlas-copco.png": "ca163334a1634453d081634ffc7a3adf",
"assets/assets/image/bcet.png": "1802e8ff9ec3710b96fafc32ec218bc9",
"assets/assets/image/bit01.jpg": "5a576849a7b9dc3e9454a991f8346b11",
"assets/assets/image/cc.png": "f60fa55a241832aca862e8f282f1aa99",
"assets/assets/image/ccbcet.png": "1f67359d4a74a469f243191b89273c7e",
"assets/assets/image/chess.png": "82c1e15a98bdc79423705952dba84d08",
"assets/assets/image/climate-x.jpg": "3fee962a187438c20f89d9a755941d7d",
"assets/assets/image/coc.png": "c86ab31daed51dedb35b51a94fb323f2",
"assets/assets/image/dashboard.png": "ea8106a1e0b652aa3e357491fd76d636",
"assets/assets/image/desicart.png": "d85b1627b7ce2d2fdd9b0f847dab1300",
"assets/assets/image/flappy.png": "3e854e9167ec1f4c6fe8cae1cb39a630",
"assets/assets/image/hacktoberfest.png": "1df33c8b531d355ee8dfde11479afe88",
"assets/assets/image/hf.png": "5eb4878f1a368176c2a20176f95b50bb",
"assets/assets/image/logo.png": "02aa11e7e05510f57e18d1b8657c38b7",
"assets/assets/image/movie-cite.jpg": "2f72a7d779a17126dca636f1161b7ff5",
"assets/assets/image/profile.jpg": "04b166a38eeba06597233589f92fe23b",
"assets/assets/image/profile.png": "894da23b57229ce213ddd35fb29c29c0",
"assets/assets/image/profileblack.jpeg": "3831daf98307edfde2df1d7d8a097774",
"assets/assets/image/profileblack.jpg": "2055d67f2c1e5aa59ee1d660a407af56",
"assets/assets/image/rent-house.png": "aa0c9df4394b77f1656ff903bc1cbb12",
"assets/assets/image/templify.jpg": "1f97ddc3344e62edff8c056634c18aca",
"assets/assets/image/templifyyyy.png": "81f102de0e9d635da5344684db0beb4e",
"assets/assets/image/tictic.jpg": "c29cdeba491f8909b1be94c7c43564b0",
"assets/assets/image/vd.png": "600f2428d706f567eacb6751ecf432a7",
"assets/assets/svg/aws.svg": "d4a5d177d71713e2085bb3d2a3adf5b4",
"assets/assets/svg/codechef.svg": "a6f47f3ddde014a36d07e71651405c1b",
"assets/assets/svg/css.svg": "09e4ec27756a18c936f92f4e2957e822",
"assets/assets/svg/fb.svg": "da4342f0818a45f5c7e1bfb91fe140b4",
"assets/assets/svg/firebase.svg": "a8ff1bd95b2218ff022b469c9b52532b",
"assets/assets/svg/flutter.svg": "faf8f499559f6b2f815f454a5794eae3",
"assets/assets/svg/git.svg": "96f4c70dbba91447363cab560a33762c",
"assets/assets/svg/hackerrank.svg": "df4e1cbc31ccd7c8972fa34e15ff3213",
"assets/assets/svg/html.svg": "a2d427be56a5448f2788d0e0f68aba0c",
"assets/assets/svg/ig.svg": "2413ceef2f7bf562aa0478f7f5dfe852",
"assets/assets/svg/in.svg": "f535ca06ca0537d5b8019231d90f3727",
"assets/assets/svg/javascript.svg": "61ed8b054178d0e8d1285ad8f29f4045",
"assets/assets/svg/leetcode.svg": "64f6d1433ee332652ff1185ef68b8f72",
"assets/assets/svg/ln.svg": "4f2bc978122ea69dc7033f2f60cb0fe5",
"assets/assets/svg/material-ui.svg": "82291019f34ab54a677c456a84127cc3",
"assets/assets/svg/mongodb.svg": "c2a864c96dbfc449ec45dd7ac4438628",
"assets/assets/svg/nodejs.svg": "a123152868245dee71c441124a98ac3e",
"assets/assets/svg/python.svg": "79ddc3d4363aebb071e76abf9f6850cb",
"assets/assets/svg/react.svg": "c3fbd71b12b726e00eec2b59f3c76786",
"assets/assets/svg/tailwind.svg": "cc158cf4095e982db9f0a790bfede80d",
"assets/assets/svg/wp.svg": "7df26f94e18f904a97fe6ea520e814f5",
"assets/assets/svg/x.svg": "97ed412c4c042ac52f2e535879df51aa",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "13673eeaca635f5edc41bc68979110e7",
"assets/NOTICES": "76f794a773e6d45a0758be00008626d7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "f377ab169a341dc3b280b45e9f504722",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "f377ab169a341dc3b280b45e9f504722",
"icons/Icon-512.png": "05e9b3874cb602a214ca8cc39b087bd7",
"icons/Icon-maskable-192.png": "f377ab169a341dc3b280b45e9f504722",
"icons/Icon-maskable-512.png": "05e9b3874cb602a214ca8cc39b087bd7",
"index.html": "5d4992406df0e142dabcbc6864ebf903",
"/": "5d4992406df0e142dabcbc6864ebf903",
"main.dart.js": "ac61074247f573ded03ca879bb4f0574",
"manifest.json": "8ef8ed356ebf89d83bcbf2cc56fc1179",
"version.json": "9b818ca9511483c901bed1545384376c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
