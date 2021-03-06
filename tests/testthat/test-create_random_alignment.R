test_that("use", {

  expect_silent(
    create_random_alignment(
      n_taxa = 5,
      sequence_length = 20,
      rate = 0.1
    )
  )

  expect_silent(
    create_random_alignment(
      n_taxa = 5,
      sequence_length = 20,
      rate = 0.1,
      taxa_name_ext = "_aco"
    )
  )

})

test_that("checks input", {

  expect_silent(
    create_random_alignment(
      n_taxa = 5,
      sequence_length = 20,
      rate = 0.1
    )
  )

  expect_error(
    create_random_alignment(
      n_taxa = 0, #Error
      sequence_length = 20,
      rate = 0.1
    )
  )

  expect_error(
    create_random_alignment(
      n_taxa = 5,
      sequence_length = 0, # Error
      rate = 0.1
    )
  )

  expect_error(
    create_random_alignment(
      n_taxa = 5,
      sequence_length = 20,
      rate = -0.1 #Error
    )
  )

  expect_error(
    create_random_alignment(
      n_taxa = 5,
      sequence_length = 20,
      rate = 1.1 # Error
    )
  )

  result <- create_random_alignment(
      n_taxa = 5,
      sequence_length = 20,
      rate = 0.1
    )
  expect_equal(class(result), "DNAbin")
})
