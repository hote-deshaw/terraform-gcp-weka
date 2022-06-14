resource "google_project_service" "secret_manager" {
  service  = "secretmanager.googleapis.com"
}

resource "google_secret_manager_secret" "secret_weka_password" {
  secret_id = "${var.prefix}_password"
  replication {
    automatic = true
  }
  depends_on = [google_project_service.secret_manager]
}

resource "google_secret_manager_secret_version" "password_secret_key" {
  secret      = google_secret_manager_secret.secret_weka_password.id
  secret_data = random_password.password.result
}

resource "google_secret_manager_secret" "secret_weka_username" {
  secret_id = "${var.prefix}_username"
  replication {
    automatic = true
  }
  depends_on = [google_project_service.secret_manager]
}

resource "google_secret_manager_secret_version" "user_secret_key" {
  secret      = google_secret_manager_secret.secret_weka_username.id
  secret_data = var.weka_username
}