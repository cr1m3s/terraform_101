terraform {
  backend "gcs" {
    bucket = "cr1m3s-example-1"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/cr1m3s/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}
