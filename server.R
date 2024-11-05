library("shiny")
library("bslib")

# Load needed functions
source(file = "app_functions.R")

server <- function(input, output) {
  output$dna <- renderText({
    gene_dna(length = input$n_bases,base_probs = c(input$prob_A,
                                                   input$prob_T,
                                                   input$prob_C,
                                                   input$prob_G))
  })
  output$rna <- renderText({transcribe_dna(input$dna_seq)})
  output$peptide <- renderText({translate_rna(input$rna_seq)})
}

