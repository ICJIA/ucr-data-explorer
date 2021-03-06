.current_area_ui <- function() {
  h1(textOutput("current_area"), style="margin:0 0 10px 0; display:inline-block;")
}

.description_ui <- function() {
  list(
    p(
      strong("Uniform Crime Report (UCR) Index Offense Explorer"),
      "offers an interactive interface to the",
      a(
        strong("Crime in Illinois Annual Uniform Crime Report"),
        ICON_EXTERNAL_LINK,
        href = URLS$ucr,
        target = "_blank"
      ),
      paste0("Index Crime offense data (", min(APP_DATA$year), "-", max(APP_DATA$year), ") "),
      "originally published by Illinois State Police.",
      "All data used in the Explorer are available at",
      a(
        strong("ICJIA Research Hub"),
        ICON_EXTERNAL_LINK,
        ".",
        href = paste0(URLS$home, "researchhub/datasets"),
        target="_blank"
      ),
      "Learn more about the UCR data by reading",
      a(
        strong("this article"),
        ICON_EXTERNAL_LINK,
        href = paste0(URLS$home, "researchhub/articles/about-uniform-crime-reporting-program-data"),
        target="_blank"
      ),
      " (Hughes, 2016)."
    ),
    p(
      strong("Use the filters on the side menu"),
      "to explore and analyze patterns in criminal offenses.",
      "You can toggle the side menu using the menu button on the top left.",
      "Also, clicking the \"Download\" button on the side menu will download the filtered data."
    )
  )
}

intro_ui <- function() {
  fluidRow(
    style = "margin: 0 auto;",
    column(
      12,
      .current_area_ui(),
      .description_ui()
    )
  )
}
