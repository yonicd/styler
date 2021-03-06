library("testthat")
context("correctly treats comments")

test_that("spacing within comments is done correctly", {
  expect_warning(test_collection("parse_comments",
                                 "within_spacing_with_force",
                                 transformer = style_text,
                                 style = tidyverse_style,
                                 start_comments_with_one_space = TRUE), NA)

  expect_warning(test_collection("parse_comments",
                                 "within_spacing_without_force",
                                 transformer = style_text,
                                 style = tidyverse_style,
                                 start_comments_with_one_space = FALSE), NA)

  expect_warning(test_collection("parse_comments",
                                 "eol_eof_spaces",
                                 transformer = style_text), NA)
})

test_that("comments are treated corectly", {
  expect_warning(test_collection("parse_comments",
                                 "mixed",
                                 transformer = style_empty), NA)

  expect_warning(test_collection("parse_comments",
                                 "just_comments",
                                 transformer = style_empty), NA)


  expect_warning(test_collection("parse_comments",
                                 "with_indention",
                                 transformer = style_text,
                                 write_back = TRUE), NA)

  # top-level test with indention
})
