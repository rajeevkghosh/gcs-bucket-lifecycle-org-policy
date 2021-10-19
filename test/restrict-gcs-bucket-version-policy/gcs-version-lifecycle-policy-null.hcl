module "tfplan-functions" {
  source = "../../tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-gcs-version-null.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
