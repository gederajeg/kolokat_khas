library(tidyverse)

coll_cxn_ngram <- function(sent_dbase, colloc_rgx='regex for colloc', cxn_rgx='regex for word', var_colloc='colnames for COLLOCATES', var_cxn='colnames for WORD/CXN', strip_tag=F) {
  var_colloc <- enquo(var_colloc)
  var_cxn <- enquo(var_cxn)
  
  # get the sentences containing the collocates
  if (is.null(cxn_rgx)==TRUE) {
    filtered_dbase <- sent_dbase %>% 
      filter(str_detect(!!var_colloc, colloc_rgx))
  } else {
    filtered_dbase <- sent_dbase %>% 
      filter(str_detect(!!var_colloc, colloc_rgx), str_detect(!!var_cxn, cxn_rgx))
  }
  
  # extract the collocational pattern from the matched sentences
  colloc_pattern <- filtered_dbase %>% 
    .$MATCHED_SENTENCE %>% 
    str_extract(pattern = '<c.*?<\\/n.*?>|<n.*?<\\/c.*?>')
  
  # check if the tagging want to be stripped off
  if (strip_tag==F) {
    # maintain tagging
    filtered_dbase <- colloc_pattern %>%
      tibble(COLLOC_NGRAM = .) %>%
      mutate(COLLOC_NGRAM = str_replace_all(COLLOC_NGRAM, "<", "\\\\<"),
             COLLOC_NGRAM = str_replace_all(COLLOC_NGRAM, ">", "\\\\>")) %>% 
      bind_cols(filtered_dbase, .)
  } else {
    # strip-off tagging
    filtered_dbase <- colloc_pattern %>% 
      str_replace(pattern = "<n.*?</node>", replacement = "<node_word>") %>% # strip tagging for NODE
      str_replace(pattern = "<c.*?span=\\W?\\d>", replacement = "") %>% # strip open-tag for COLLOCATES
      str_replace(pattern = "</c.*?>", replacement = "") %>% # strip close-tag for COLLOCATES
      tibble(COLLOC_NGRAM = .) %>% 
      bind_cols(filtered_dbase, .)
  }
  
  colloc_pattern_count <- filtered_dbase %>%
    count(COLLOC_NGRAM, !!var_cxn) %>%
    spread(key=!!var_cxn, value=n, fill=0L)
  
  cxn.length <- filtered_dbase %>% 
    select(!!var_cxn) %>% 
    unlist() %>% 
    unique() %>% 
    unname() %>%
    length()
  
  if (cxn.length > 1) {
    colloc_pattern_count <- colloc_pattern_count %>%
      ungroup() %>% 
      mutate(sum = rowSums(.[,-1])) %>%
      arrange(desc(sum))
  } else {
    colloc_pattern_count <- colloc_pattern_count %>%
      ungroup() %>%
      arrange_at(2, ~desc(.))
  }
  
  cxn_tokens <- colloc_pattern_count %>% 
    summarise_if(is.numeric, sum)
  
  results <- list(filtered_dbase, colloc_pattern_count, cxn_tokens)
  names(results) <- c('matched_sentences', 'colloc_cxn_pattern', 'cxn_tokens')
  return(results)
  
}
# example
# source("scripts/script_for-retrieving-ngrams.R")
# full_sent_root <- readr::read_tsv("data/full_sentence_root.tsv")
# full_sent_nominalised <- readr::read_tsv("data/full_sentence_nominalised.tsv")
# coll_cxn_ngram(full_sent_root, "^anak-anak$", "^bahagia$", COLLOCATES, WORDS)
# coll_cxn_ngram(full_sent_nominalised, "^anak-anak$", "^keceriaan$", COLLOCATES, WORDS)

ngram_tidy <- function(sentence_dbase, colloc_regex='specify colloc regex', output='colloc_only') {
  
  # get the sentences containing the collocates
  filtered_dbase <- sentence_dbase %>% 
    filter(str_detect(COLLOCATES, colloc_regex))
  
  # extract the collocational pattern from the matched sentences
  colloc_pattern <- filtered_dbase %>% 
    .$MATCHED_SENTENCE %>% 
    str_extract(pattern = '<c.*?<\\/n.*?>|<n.*?<\\/c.*?>')
  
  # replace the node word with just <node> and remove the collocates tag
  filtered_dbase <- colloc_pattern %>% 
    str_replace(pattern = "<n.*?</node>", replacement = "<node_word>") %>%
    str_replace(pattern = "<c.*?span=\\W?\\d>", replacement = "") %>%
    str_replace(pattern = "</c.*?>", replacement = "") %>%
    tibble(COLLOC_NGRAM = .) %>% 
    bind_cols(filtered_dbase, .)
  colloc_pattern_count <- filtered_dbase %>%
    count(COLLOC_NGRAM, WORDS) %>%
    spread(key='WORDS', value = 'n', fill = 0) %>%
    ungroup() %>% 
    mutate(sum = rowSums(.[,-1])) %>%
    arrange(desc(sum))
  if (is.null(output)==TRUE) {
    results <- list(filtered_dbase, colloc_pattern_count)
    names(results) <- c('matched.sentences', 'colloc.cxn.pattern')
    return(results)
  } else {
    return(colloc_pattern_count)
  }
}
# example
# source("scripts/script_for-retrieving-ngrams.R")
# full_sent_root <- readr::read_tsv("data/full_sentence_root.tsv")
# full_sent_nominalised <- readr::read_tsv("data/full_sentence_nominalised.tsv")
# res <- ngram_tidy(sentence_dbase = full_sent_nominalised, colloc_regex = "^duniawi$", output = NULL)
# res <- ngram_tidy(sentence_dbase = full_sent_root, colloc_regex = "^duniawi$", output = NULL)


# get the full sentence for the ngram output by `ngram_tidy()`
full_sent_colloc_tidy <- function(ngram_result_list=NULL, ngram_pattern=c("list vector of NGRAM PATTERN")) {
  results <- ngram_result_list
  results[[1]] %>%
    filter(COLLOC_NGRAM %in% ngram_pattern) %>% 
    select(MATCHED_SENTENCE, CORPUS, SENTENCE_NUM) %>%
    return()
}
# example
# source("scripts/script_for-retrieving-ngrams.R")
# full_sent_nominalised <- readr::read_tsv("data/full_sentence_nominalised.tsv")
# res <- ngram_tidy(sentence_dbase = full_sent_nominalised, colloc_regex = "^duniawi$", output = NULL)
# full_sent_colloc_tidy(ngram_result_list = res, 
#                       ngram_pattern = "<node_word> mewakili kebutuhan duniawi"
#                       ) %>% 
#   as.data.frame()


