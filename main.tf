data "google_storage_bucket_object_contents" "storage_bucket_object_contents_lookup" {
  for_each = var.storage_bucket_object_contents_lookup

  bucket     = each.value.bucket
  match_glob = each.value.match_glob
  prefix     = each.value.prefix
}

