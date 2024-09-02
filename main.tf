locals {
    datahub_name = "datahub"
  
    datahub_chart      = "datahub"
    datahub_namespace  = "datahub"
    datahub_repository = "https://helm.DataHubproject.io/"
    datahub_version    = "0.2.165"
  
    eks_cert = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJRnp3alk2SlpVUTh3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TkRBNE1qY3dNRE0wTWpsYUZ3MHpOREE0TWpVd01ETTVNamxhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURMOXJjM21CanZWNmNxU0cwS2F5UzZFSTRsWXZFQkpkajJKLzVjNUxkWkNTbjdpY2dJWllCU0pCdHQKcFJab3o3WE9FTjBYbHEvOXZaY2d5RFp3ckZEcWNVbEVFVmg4SFlBM0xZbHZpRFRKR1lvM0VjeVJldVd6UlRzWApha2pNQUxMUngyaGZtTVhPMkNuOXc4WkFSWFlHd2lMNXduekIxdWpGekVuQnA2YmxiZ0l3eDd1MCt6OFF2VGdRCnFBam9RTXdNbkdSRlkzM2RYc0NEam10c2Q2UDFHeFVmWXh2ZjU5ZEdMMUxSazM3S04zUHQraFBxazBGaVh1K2MKb2Npd2VZSFozYlJWQXl5ZzVCQ05TemR0NXRxQTh1YmhyWlRuc1cxMmsrQ2Iza0hLd2doYUgwOHdkcE42elZ0TgphbTl1L0RIZ1RlcUd0cXlxV2R2NjhqRHcyUnZMQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUL3ZvL09nYld2WXZRaEwrODFidUZ2cHRGbldqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQUErSTRNeHluVgpJMXZmVkxPMkExTHhEV3J1ek5FVzdWWjk5c0VNTUREdDNCODl4WmJuNS8rRS9tRmw3c3I2YkloUHA1enNTams5CmlRalQxKzltZ1B4Zk51cEFqbXlObEhKbUlEVCtaL1NDb0gyZ0dwdkhZUnZ4N3hmcGVCN0RNTHFUdzNlaGFoV3IKQm9YWXpPeExnYVdaTDRGYXQwOUNsOVZldVhyTU90S3VpTWlmNWxwR29zeVFOK2srZ3VFcjNqSmtFelBuOEdSeApXMFQxM1I4aWhjaEkxdmZ2T3ZwcFh3MGp0TDRMVXJwdmJGc1NlbHN6Yk1HY2hQcmJaWDlXa0Nqc01lM2gyUGN1CmRxdnJXaFdTd0s2a1VrNU1jU01QaWFMMmtQd0puYjRDL3FxOUZCZHRaRGhZbjlSWGJqM3o1SXVTUzd0MXRIWmYKYkdpaHpyYnFGWmYyCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
    
    eks_token =   "k8s-aws-v1.aHR0cHM6Ly9zdHMuYW1hem9uYXdzLmNvbS8_QWN0aW9uPUdldENhbGxlcklkZW50aXR5JlZlcnNpb249MjAxMS0wNi0xNSZYLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFTSUEzR1A3UFFESVlISVY2VEdSJTJGMjAyNDA4MjglMkZ1cy1lYXN0LTElMkZzdHMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDgyOFQyMzI1MzlaJlgtQW16LUV4cGlyZXM9NjAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JTNCeC1rOHMtYXdzLWlkJlgtQW16LVNlY3VyaXR5LVRva2VuPUlRb0piM0pwWjJsdVgyVmpFQ0FhQ1hWekxXVmhjM1F0TVNKSU1FWUNJUUNjMDVsaU5WSFNtRFNwYk1QaWVzand0bnhuMVhJSFI3JTJCSnY2Q3FLcGRuTkFJaEFMNlMwZXAxbFpQUFNGVm1hc2MlMkYyOXgyNG5BVWQwTWlEYkMlMkZoUFhsVWhYaktxd0NDRGdRQVJvTU56WTVPRGN4T0RBMk5qY3pJZ3p3ME5GM3JYZ25oYjhEUklncWlRTHZMQVRjTTAwY2dWOEN5cFA5ekpZRUxDZWh5SDFZcE9xNnlDQmlpeXJkZkUxV3RVRlBiWGVlUGJTbElsTjh3TkpKNnQzM1dmRlVhdU4wZmNCM3JjTG1USCUyRkQ4ejRSaWFia2wxRVBGU1FJcnV4cU1mQVRDMThKRnBnOWJWREQ1aHBTN1lDcU13NE8zMlg3T0FXTm9oY2p1aHV3VW9FR1VVOVliSFpUTmklMkJaVyUyQlFTUGx5SkY1MW9rcFJ4clVVTUx3QmpuZGV3d0V1NnFNWDVLRlU1VzhhNWlHTEZjQzl1YnlxZHNyJTJGZVdoSE5mS041Q1g0ZWNvM2ZCUVRwNlZKUUg4dGsySmM0TlJBNU5VUVJldm9pUWR1a3RUN24lMkJTNm5vN004R25Ia0dweHlqJTJGaHhEZ2h4WVBWVEJJeFlLZDRLekFqRm11eHBXSmxhUFhWU2t0ZFZxNUt6aHFHYXpOdWpSZlZmTUxYZHZyWUdPcHdCYVB5aEFLNzhtJTJCN21vQmhIUzlRU2FsMGVCZ0FUdEtNJTJGaGxnMFFwQXZEbmElMkJPZHMlMkJzMUhHdXF3ZWlaY0RNMXl2SThOeVpGYlB5V3pSU3F2JTJGd0tLRXZxb3AxVTRCOVdMVVhOVXczT1BQcldySng4UmhUdkdOalVHb0x6eFd6YVNTcnRjcWwlMkZwV2s4cm11NDdmb2pMTEt2MlR3cXNHVlBjRE1Zamh3MUFnZEZNdFZlJTJCVTAlMkJEWmJ0Skl4R1R5QWRFNXF0OHd5TkdxWW1oZTdoUDcmWC1BbXotU2lnbmF0dXJlPWM1NWNhYmZjYmY0YTNiOTk2ZDQ5NmVlYjRlNDNlYjA2MzY4OTA3M2ZmNThiODEzZDE4Yzc4NDQ4OTY3NWViYzM"
  
    datahub_merged_values_yaml = yamlencode(merge(
      yamldecode(templatefile("${path.module}/datahub_values.yaml", {
        es_endpoint                  = "vpc-datahub-es-jtxmimwhknrmlieeparj4clppi.us-east-1.es.amazonaws.com"
        msk_bootstrap_brokers        = "b-1.datahubmsk.hcvocv.c10.kafka.us-east-1.amazonaws.com:9092,b-2.datahubmsk.hcvocv.c10.kafka.us-east-1.amazonaws.com:9092"
        msk_zookeeper_connect_string = "z-3.datahubmsk.hcvocv.c10.kafka.us-east-1.amazonaws.com:2181,z-2.datahubmsk.hcvocv.c10.kafka.us-east-1.amazonaws.com:2181,z-1.datahubmsk.hcvocv.c10.kafka.us-east-1.amazonaws.com:2181"
        msk_partitions               = 2
        datahub_rds_address          = "datahub-mysql.c2z9vkdbxb5s.us-east-1.rds.amazonaws.com"
        datahub_rds_endpoint         = "datahub-mysql.c2z9vkdbxb5s.us-east-1.rds.amazonaws.com:3306"
      })),
      try(yamldecode(var.datahub_helm_config.values[0]), {})
    ))
  
  }
  
  provider "kubernetes" {
      host                   = "https://FEB4418C5B2FB89E9EE884073AED9FE5.gr7.us-east-1.eks.amazonaws.com"
      cluster_ca_certificate = base64decode(local.eks_cert)
      token                  = local.eks_token
  }  
  
  provider "helm" {
    kubernetes {
      host                   = "https://FEB4418C5B2FB89E9EE884073AED9FE5.gr7.us-east-1.eks.amazonaws.com"
      cluster_ca_certificate = base64decode(local.eks_cert)
      token                  = local.eks_token
    }
  }
  
  
  resource "kubernetes_namespace" "datahub" {
    metadata {
      annotations = {
        name = local.datahub_namespace
      }
  
      labels = {
        mylabel = local.datahub_namespace
      }
  
      name = local.datahub_namespace
    }
  }
  
  resource "kubernetes_secret" "datahub_es_secret" {
    depends_on = [kubernetes_namespace.datahub]
    metadata {
      name      = "elasticsearch-secrets"
      namespace = local.datahub_namespace
    }
  
    data = {
      elasticsearch_password = "P@ssw0rd12345"
    }
  
  }
  
  resource "kubernetes_secret" "datahub_rds_secret" {
    depends_on = [kubernetes_namespace.datahub]
    metadata {
      name      = "mysql-secrets"
      namespace = local.datahub_namespace
    }
  
    data = {
      mysql_root_password = "Passw0rd12345"
    }
  }
  
  resource "random_password" "auth_secrets" {
    length      = 32
    special     = false
    min_upper   = 0
    min_lower   = 1
    min_numeric = 1
  }
  
  resource "random_password" "auth_secrets_key" {
    length      = 32
    special     = false
    min_upper   = 0
    min_lower   = 1
    min_numeric = 1
  }
  
  resource "random_password" "auth_secrets_salt" {
    length      = 32
    special     = false
    min_upper   = 0
    min_lower   = 1
    min_numeric = 1
  }
  
  resource "kubernetes_secret" "datahub_auth_secrets" {
    depends_on = [kubernetes_namespace.datahub]
    metadata {
      name      = "datahub-auth-secrets"
      namespace = local.datahub_namespace
    }
  
    data = {
      system_client_secret      = random_password.auth_secrets.result
      token_service_signing_key = random_password.auth_secrets_key.result
      token_service_salt        = random_password.auth_secrets_salt.result
    }
  
  }
  
  
  resource "helm_release" "datahub" {
    depends_on = [kubernetes_secret.datahub_es_secret, kubernetes_secret.datahub_rds_secret, kubernetes_secret.datahub_auth_secrets]
  
    name                       = try(var.datahub_helm_config["name"], local.datahub_name)
    repository                 = try(var.datahub_helm_config["repository"], local.datahub_repository)
    chart                      = try(var.datahub_helm_config["chart"], local.datahub_chart)
    version                    = try(var.datahub_helm_config["version"], local.datahub_version)
    timeout                    = try(var.datahub_helm_config["timeout"], 300)
    values                     = [local.datahub_merged_values_yaml]
    create_namespace           = try(var.datahub_helm_config["create_namespace"], false)
    namespace                  = local.datahub_namespace
    lint                       = try(var.datahub_helm_config["lint"], false)
    description                = try(var.datahub_helm_config["description"], "")
    repository_key_file        = try(var.datahub_helm_config["repository_key_file"], "")
    repository_cert_file       = try(var.datahub_helm_config["repository_cert_file"], "")
    repository_username        = try(var.datahub_helm_config["repository_username"], "")
    repository_password        = try(var.datahub_helm_config["repository_password"], "")
    verify                     = try(var.datahub_helm_config["verify"], false)
    keyring                    = try(var.datahub_helm_config["keyring"], "")
    disable_webhooks           = try(var.datahub_helm_config["disable_webhooks"], false)
    reuse_values               = try(var.datahub_helm_config["reuse_values"], false)
    reset_values               = try(var.datahub_helm_config["reset_values"], false)
    force_update               = try(var.datahub_helm_config["force_update"], false)
    recreate_pods              = try(var.datahub_helm_config["recreate_pods"], false)
    cleanup_on_fail            = try(var.datahub_helm_config["cleanup_on_fail"], false)
    max_history                = try(var.datahub_helm_config["max_history"], 0)
    atomic                     = try(var.datahub_helm_config["atomic"], false)
    skip_crds                  = try(var.datahub_helm_config["skip_crds"], false)
    render_subchart_notes      = try(var.datahub_helm_config["render_subchart_notes"], true)
    disable_openapi_validation = try(var.datahub_helm_config["disable_openapi_validation"], false)
    wait                       = try(var.datahub_helm_config["wait"], true)
    wait_for_jobs              = try(var.datahub_helm_config["wait_for_jobs"], false)
    dependency_update          = try(var.datahub_helm_config["dependency_update"], false)
    replace                    = try(var.datahub_helm_config["replace"], false)
  
    postrender {
      binary_path = try(var.datahub_helm_config["postrender"], "")
    }
  
  
    dynamic "set_sensitive" {
      iterator = each_item
      for_each = try(var.datahub_helm_config["set_sensitive"], [])
  
      content {
        name  = each_item.value.name
        value = each_item.value.value
        type  = try(each_item.value.type, null)
      }
    }
  }
  