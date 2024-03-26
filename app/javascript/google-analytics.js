"use-strict";

document.addEventListener("turbo:load", function (event) {
  const cookieBanner = document.getElementById("cookie-consent-banner");
  const cookieConsentStatus = window.localStorage.getItem("analytics-allowed");

  document
    .getElementById("accept-analytics")
    .addEventListener("click", function (e) {
      e.preventDefault();
      window.localStorage.setItem("analytics-allowed", "true");
      cookieBanner.style.display = "none";
      window.location.reload();
    });

  document
    .getElementById("reject-analytics")
    .addEventListener("click", function (e) {
      e.preventDefault();
      window.localStorage.setItem("analytics-allowed", "false");
      cookieBanner.style.display = "none";
    });

  if (window.localStorage.getItem("analytics-allowed") !== null) {
    cookieBanner.style.display = "none";
  }

  window.dataLayer = window.dataLayer || [];
  function gtag() {
    dataLayer.push(arguments);
  }
  gtag("js", new Date());

  if (cookieConsentStatus !== "true") {
    gtag("consent", "default", {
      ad_storage: "denied",
      analytics_storage: "denied",
    });
    gtag("config", "G-CSMHNJ2LL4", {
      anonymize_ip: true,
      page_location: event.detail.url,
    });
  } else {
    gtag("config", "G-CSMHNJ2LL4", { page_location: event.detail.url });
  }
});
