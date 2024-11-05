library("shiny")
library("bslib")



ui <- page_fluid(
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Virtual Central Dogma"),
      style = "background-color: #f0f0f0; padding: 15px;"
    )),
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("About"),
      helpText("Generate a random DNA sequnce, with cutomizable length and base probabilities.")
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Gene Generator"),
      sliderInput(inputId = "n_bases",
                  label = "Number of bases:",
                  min = 1,
                  max = 60,
                  value = 30,
                  width = "100%"),
      layout_columns(
        col_widths = c(3, 3, 3, 3),
        numericInput(inputId = "prob_A",
                     label = "Probability of A",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "prob_T",
                     label = "Probability of T",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "prob_C",
                     label = "Probability of C",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "prob_G",
                     label = "Probability of G",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1)
      ))),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Gene output"),
      mainPanel(
        verbatimTextOutput(outputId = "dna")
      )
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Copy and paste the DNA sequence you want to transcribe to RNA"),
      textInput(inputId="dna_seq",
                label = "DNA",
                value="")

    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual RNA Polymerase output"),
      mainPanel(
        verbatimTextOutput(outputId = "rna")
      ))),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Copy and paste the RNA sequence you want to translate to peptide"),
      textInput(inputId="rna_seq",
                label = "RNA",
                value="")

    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Ribosome output"),
      mainPanel(
        verbatimTextOutput(outputId = "peptide")
      ))),
)
