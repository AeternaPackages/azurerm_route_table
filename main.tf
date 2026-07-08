locals {
  route_tables = { for k1, v1 in var.route_tables : k1 => { bgp_route_propagation_enabled = v1.bgp_route_propagation_enabled, location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, route = v1.route, tags = v1.tags } }

  routes = merge([
    for k1, v1 in var.route_tables : {
      for k2, v2 in coalesce(v1.routes, {}) :
      "${k1}/${k2}" => merge(v2, {
        route_table_name = module.route_tables.route_tables["${k1}"].name
      })
    }
  ]...)
}

module "route_tables" {
  source       = "git::https://github.com/AeternaModules/azurerm_route_table.git?ref=v4.80.0"
  route_tables = local.route_tables
}

module "routes" {
  source     = "git::https://github.com/AeternaModules/azurerm_route.git?ref=v4.80.0"
  routes     = local.routes
  depends_on = [module.route_tables]
}

