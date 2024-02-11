---
title: Error - Nextjs className did not match server and client
pubDate: 10 Feb 2024
description: solves error produced (fonts not loading properly)
---

### Error

```js
Warning: Prop `className` did not match. Server: "__className_c31de6" Client: "__className_9d05d0"
    at span
    at a
    at div
    at div
    at nav
    at Navbar (webpack-internal:///(app-pages-browser)/./app/components/Navbar.tsx:17:88)
    at InnerLayoutRouter (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/layout-router.js:240:11)
    at RedirectErrorBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/redirect-boundary.js:72:9)
    at RedirectBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/redirect-boundary.js:80:11)
    at NotFoundErrorBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/not-found-boundary.js:54:9)
    at NotFoundBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/not-found-boundary.js:62:11)
    at LoadingBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/layout-router.js:315:11)
    at ErrorBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/error-boundary.js:130:11)
    at InnerScrollAndFocusHandler (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/layout-router.js:151:9)
    at ScrollAndFocusHandler (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/layout-router.js:226:11)
    at RenderFromTemplateContext (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/render-from-template-context.js:15:44)
    at OuterLayoutRouter (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/layout-router.js:325:11)
    at body
    at html
    at RedirectErrorBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/redirect-boundary.js:72:9)
    at RedirectBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/redirect-boundary.js:80:11)
    at NotFoundErrorBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/not-found-boundary.js:54:9)
    at NotFoundBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/not-found-boundary.js:62:11)
    at DevRootNotFoundBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/dev-root-not-found-boundary.js:32:11)
    at ReactDevOverlay (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/react-dev-overlay/internal/ReactDevOverlay.js:66:9)
    at HotReload (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/react-dev-overlay/hot-reloader-client.js:295:11)
    at Router (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/app-router.js:159:11)
    at ErrorBoundaryHandler (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/error-boundary.js:100:9)
    at ErrorBoundary (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/error-boundary.js:130:11)
    at AppRouter (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/components/app-router.js:436:13)
    at ServerRoot (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/app-index.js:128:11)
    at RSCComponent
    at Root (webpack-internal:///(app-pages-browser)/./node_modules/next/dist/client/app-index.js:144:11)
window.console.error @ app-index.js:34
console.error @ hydration-error-info.js:41
printWarning @ react-dom.development.js:94
error @ react-dom.development.js:68
warnForPropDifference @ react-dom.development.js:32523
hydrateAttribute @ react-dom.development.js:34091
diffHydratedGenericElement @ react-dom.development.js:34497
diffHydratedProperties @ react-dom.development.js:34916
hydrateInstance @ react-dom.development.js:35925
prepareToHydrateHostInstance @ react-dom.development.js:7287
completeWork @ react-dom.development.js:19675
completeUnitOfWork @ react-dom.development.js:25793
performUnitOfWork @ react-dom.development.js:25598
workLoopConcurrent @ react-dom.development.js:25573
renderRootConcurrent @ react-dom.development.js:25529
performConcurrentWorkOnRoot @ react-dom.development.js:24382
workLoop @ scheduler.development.js:261
flushWork @ scheduler.development.js:230
performWorkUntilDeadline @ scheduler.development.js:534
Show 19 more frames
Show less
```

## Solution

the solution solves error of Next/fonts not loading properly.

```js
// next.config.js
module.exports = {
  compiler: {
    // Enables the styled-components SWC transform
    styledComponents: true
  }
}
```