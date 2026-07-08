# --- azurerm_route_table ---
output "route_tables" {
  description = "All route_table resources"
  value       = module.route_tables.route_tables
}
output "route_tables_bgp_route_propagation_enabled" {
  description = "List of bgp_route_propagation_enabled values across all route_tables"
  value       = [for k, v in module.route_tables.route_tables : v.bgp_route_propagation_enabled]
}
output "route_tables_location" {
  description = "List of location values across all route_tables"
  value       = [for k, v in module.route_tables.route_tables : v.location]
}
output "route_tables_name" {
  description = "List of name values across all route_tables"
  value       = [for k, v in module.route_tables.route_tables : v.name]
}
output "route_tables_resource_group_name" {
  description = "List of resource_group_name values across all route_tables"
  value       = [for k, v in module.route_tables.route_tables : v.resource_group_name]
}
output "route_tables_route" {
  description = "List of route values across all route_tables"
  value       = [for k, v in module.route_tables.route_tables : v.route]
}
output "route_tables_subnets" {
  description = "List of subnets values across all route_tables"
  value       = [for k, v in module.route_tables.route_tables : v.subnets]
}
output "route_tables_tags" {
  description = "List of tags values across all route_tables"
  value       = [for k, v in module.route_tables.route_tables : v.tags]
}


# --- azurerm_route ---
output "routes" {
  description = "All route resources"
  value       = module.routes.routes
}
output "routes_address_prefix" {
  description = "List of address_prefix values across all routes"
  value       = [for k, v in module.routes.routes : v.address_prefix]
}
output "routes_name" {
  description = "List of name values across all routes"
  value       = [for k, v in module.routes.routes : v.name]
}
output "routes_next_hop_in_ip_address" {
  description = "List of next_hop_in_ip_address values across all routes"
  value       = [for k, v in module.routes.routes : v.next_hop_in_ip_address]
}
output "routes_next_hop_type" {
  description = "List of next_hop_type values across all routes"
  value       = [for k, v in module.routes.routes : v.next_hop_type]
}
output "routes_resource_group_name" {
  description = "List of resource_group_name values across all routes"
  value       = [for k, v in module.routes.routes : v.resource_group_name]
}
output "routes_route_table_name" {
  description = "List of route_table_name values across all routes"
  value       = [for k, v in module.routes.routes : v.route_table_name]
}



