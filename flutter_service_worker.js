'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "10078929edd7cf75765cc03c1ee69928",
"index.html": "bf759ca30597eea0363ea81a367534cf",
"/": "bf759ca30597eea0363ea81a367534cf",
"firebase-messaging-sw.js": "2b32a21597bba65eb4ac72abb724fadf",
"main.dart.js": "3781c02adb29b765b5d878c95afabf04",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "ed7f91c950612d28da93da2f6c07dd37",
"assets/AssetManifest.json": "669cbd4dfe535cb94f23062d22b7733d",
"assets/NOTICES": "bae250da85601229e40bf27fbcc8593f",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/assets/Group%25202889.png": "b8a95ddbe1d10d318a9886062e189a9f",
"assets/assets/info.png": "6824d463e3065df7834b43d069f9ad13",
"assets/assets/tour3web.png": "f9d6a3cc4e7b4207bfc616e51ca5dcd8",
"assets/assets/Add.png": "a8b0799fc771491b39ce683cf7d871e6",
"assets/assets/activeChat.png": "9fa14d60e1eb78580f79d42105575f67",
"assets/assets/site2.png": "83c0ef24251586a3d7dc6cf721354025",
"assets/assets/check.png": "0d3dc322adadbeb13d01e747c46d3623",
"assets/assets/Group%2520288.png": "9f5948d874972be6c9bd2e21501ff443",
"assets/assets/down_black.png": "9947c8ac1233a1cf69034838401253df",
"assets/assets/pop-sound.mp3": "73581d1a84a7c8df583926d5e44b2a47",
"assets/assets/site1.png": "ce2803b3cff760d1847629d8610b0f98",
"assets/assets/down1.png": "897e2b5e57dc4d26125fc4e808c091f4",
"assets/assets/tourlastweb.png": "623f487439b1b396b887ddf5ee37c8b3",
"assets/assets/mail.png": "a378df7413a4e6f167860f07b5bc4b23",
"assets/assets/tour1web.png": "243ed00800d4d55326fc6ed26f048111",
"assets/assets/pen.png": "9fbb11bd70fc815a522b01c1706ff4ad",
"assets/assets/requestIndicator.png": "0a3d142d96c68a9f75f0d88d78326895",
"assets/assets/Question.png": "981c7b8a4c95c37bb78fd7cd789f019c",
"assets/assets/arrowupcontainer.png": "31a637fc5c2b5007190610696515e8d3",
"assets/assets/tour1.png": "d24e4bdfe2e33269e33a2fe2cadc9b90",
"assets/assets/welcome1.png": "bb4cf8f8040f5ca73193b4278864b04d",
"assets/assets/tour0.png": "28fa40fa80830fdb188979aa8d992eec",
"assets/assets/Group_1.png": "b205adc8d6a7ba350257b9f45d32aa70",
"assets/assets/activeNotification.png": "f68e1ff929358611b1d2f14e154e94ec",
"assets/assets/Vector.png": "b50c6101e69a1ea8d9e7bcd79dc7337b",
"assets/assets/profil.png": "93d8dde11bc9515f65afb7c5a5d98c14",
"assets/assets/tour2.png": "f18eb7a21d0fd94ab774d555eafbfae8",
"assets/assets/down.png": "8f58c4ee2c45a8849539facc39415ef4",
"assets/assets/Ellipse%252049.png": "4b448e80c69bde1a2d44ff001df263d6",
"assets/assets/tour5web.png": "04113ff180a5a24fc4f833cce4b94691",
"assets/assets/tour3.png": "c7c3d02fcf8b694280c999fce5bc0109",
"assets/assets/site21.png": "5eb33efb208c15e605a6d82e2f18313d",
"assets/assets/webbg.svg": "ea75b883bc9131c10c1adba7df4c00fd",
"assets/assets/home.png": "654e14d26f05f0936c6e510378b62198",
"assets/assets/arrow.png": "ff988c1cb6bae19eef4b8a417d5155dd",
"assets/assets/newchat.png": "57d2f0b984404fc9c2cf42e9e828c461",
"assets/assets/tour4.png": "92e4ad0aae0b5718ee841cfa3ad17127",
"assets/assets/tour5.png": "4e2f7325147eb7dc0f30781681fadeb5",
"assets/assets/arrowup1.png": "d2c653ef40f9d20b4caf3c9349b57bdc",
"assets/assets/search.png": "2db49c8ea6910d26c8e7a9c1ca5d0b2b",
"assets/assets/activeHome.png": "2838c4b47a8bac15828e52f6b62f3c50",
"assets/assets/Logo%25202%25201.svg": "280e9acfb06f41da62aa332b0c8bf376",
"assets/assets/rightcontainer.png": "e7229bb5befc2f83ad489f9e4e303b87",
"assets/assets/Minus.png": "29314c82fe14ff6aad1bf0ae1b88ab05",
"assets/assets/Request.png": "182dd4211072e19a69c4a86ae6dc6f33",
"assets/assets/tick_animation.json": "8d68d665739b6f286d3a85b0c50e8282",
"assets/assets/downcontainer.png": "bf79a48329cd619166e2c0077e863dbc",
"assets/assets/tour2web.png": "7474dacd4933214304423fbc83f2486a",
"assets/assets/Forward.png": "4149104d19e47afac066342f7bcdb694",
"assets/assets/mesicon.png": "ec91b11f4b8d2cb1bb2033d8e29200bc",
"assets/assets/call_out.png": "c194e55c15a9f048e72b9a6ba7b637d3",
"assets/assets/Layer%25201.png": "142462c1967d13b9181f2994cff167d9",
"assets/assets/activeProfile.png": "8f17852553da572cd6f70ab189181947",
"assets/assets/Ellipse%252045.png": "ace6a6364d0fb349c5e8cfd3c3391352",
"assets/assets/view.png": "8422447ed153b1b5a04827208276fefe",
"assets/assets/site11.png": "8b9e6aa200f298111762bab5a85a882d",
"assets/assets/tour0web.png": "a3f5c115ed353594ddfd73fa208b8a09",
"assets/assets/forgetpass.png": "a176076c0edb0ce5ba80154e66f330bf",
"assets/assets/profile.png": "5a9e47f987790aa254111139617bc771",
"assets/assets/Phone.png": "68a6c7371fe36ba351f884b817f85309",
"assets/assets/call.png": "b3ed6de778330e413fbeae0c60eedd81",
"assets/assets/delete.png": "d465661f54250b2f7a2ebe58e9a7cc09",
"assets/assets/right1.png": "8904657930c3674adcbcabe7f4188f4e",
"assets/assets/tour4web.png": "87e56e14f8f41ac472b5895f368923ea",
"assets/assets/retour.png": "2d12ebb9c54603479fbadd2bb43484d4",
"assets/assets/Rectangle%2520518.png": "580cc368cc986a3c6471dc209f8e5269",
"assets/assets/containertop.png": "65840a92f5f7fe80739b2a04eebfad78",
"assets/assets/Group%2520268.png": "1ed6640eee2c428fbf778b3985412b39",
"assets/assets/Group%2520308.png": "21d181630b4461dcc052c70764041b9f",
"assets/assets/trash.png": "e3fbb39ee7789fd32047b0c1ca75224f",
"assets/assets/image1.png": "f990ee1f86a334d145862dd74df4ce51",
"assets/assets/Camera.png": "68574dcdfffc5ec90ba7d42a84720d5d",
"assets/assets/send.png": "d4fd8decfb1578276c01c3d45b69a479",
"assets/assets/addblue.png": "b57000466f5e0ac4f5b76c6ddff447f8",
"assets/assets/message.png": "85571c29e1c171c6cf095f56156bfea4",
"assets/assets/Group%2520287.png": "0f257aba17f73e10fb24ccfe6596f33d",
"assets/assets/Rectangle%2520522.png": "b43c7c351bda0f6c8f812b1bc9d15081",
"assets/assets/Logo%25202%25202.png": "80f08216041089e4783f38ee943a5333",
"assets/assets/Image.png": "48de2219ab7b8c32ad487d37aba0df8b",
"assets/assets/editImg.png": "32285a28eb42ae135b359343e3945ad3",
"assets/assets/site.png": "6b226bc2d954dfb4e252490c91942bba",
"assets/assets/Group%252068.png": "52b76f020023585d5811b5bccf1eea1a",
"assets/assets/mailsent.png": "da9da9fed77b98d49d24a39840981f96",
"assets/assets/edit_pen.png": "37fedb27f9a44bdb728d737903b66d36",
"assets/assets/Logo%25202%25201.png": "50df6c2d6eb24ed98ec705a38bfb7f9e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
