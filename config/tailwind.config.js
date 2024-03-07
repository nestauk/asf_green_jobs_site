const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Averta", ...defaultTheme.fontFamily.sans],
      },
      colors: {
        brand: {
          a11green: "#148572",
          aqua: "#97d9e3",
          blue: "#0000ff",
          gray: "#646363",
          green: "#18a48c",
          navy: "#0f294a",
          purple: "#9a1bbe",
          sand: "#d2c9c0",
          violet: "#a59bee",
        },
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
  ],
};
