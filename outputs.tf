# --- azurerm_route_table ---
output "route_tables_id" {
  description = "Map of id values across all route_tables, keyed the same as var.route_tables"
  value       = module.route_tables.route_tables_id
}

output "route_tables_bgp_route_propagation_enabled" {
  description = "Map of bgp_route_propagation_enabled values across all route_tables, keyed the same as var.route_tables"
  value       = module.route_tables.route_tables_bgp_route_propagation_enabled
}

output "route_tables_location" {
  description = "Map of location values across all route_tables, keyed the same as var.route_tables"
  value       = module.route_tables.route_tables_location
}

output "route_tables_name" {
  description = "Map of name values across all route_tables, keyed the same as var.route_tables"
  value       = module.route_tables.route_tables_name
}

output "route_tables_resource_group_name" {
  description = "Map of resource_group_name values across all route_tables, keyed the same as var.route_tables"
  value       = module.route_tables.route_tables_resource_group_name
}

output "route_tables_route" {
  description = "Map of route values across all route_tables, keyed the same as var.route_tables"
  value       = module.route_tables.route_tables_route
}

output "route_tables_subnets" {
  description = "Map of subnets values across all route_tables, keyed the same as var.route_tables"
  value       = module.route_tables.route_tables_subnets
}

output "route_tables_tags" {
  description = "Map of tags values across all route_tables, keyed the same as var.route_tables"
  value       = module.route_tables.route_tables_tags
}

# --- azurerm_route ---
output "routes_id" {
  description = "Map of id values across all routes, keyed the same as var.routes"
  value       = module.routes.routes_id
}

output "routes_address_prefix" {
  description = "Map of address_prefix values across all routes, keyed the same as var.routes"
  value       = module.routes.routes_address_prefix
}

output "routes_name" {
  description = "Map of name values across all routes, keyed the same as var.routes"
  value       = module.routes.routes_name
}

output "routes_next_hop_in_ip_address" {
  description = "Map of next_hop_in_ip_address values across all routes, keyed the same as var.routes"
  value       = module.routes.routes_next_hop_in_ip_address
}

output "routes_next_hop_type" {
  description = "Map of next_hop_type values across all routes, keyed the same as var.routes"
  value       = module.routes.routes_next_hop_type
}

output "routes_resource_group_name" {
  description = "Map of resource_group_name values across all routes, keyed the same as var.routes"
  value       = module.routes.routes_resource_group_name
}

output "routes_route_table_name" {
  description = "Map of route_table_name values across all routes, keyed the same as var.routes"
  value       = module.routes.routes_route_table_name
}


