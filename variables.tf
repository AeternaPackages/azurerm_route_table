variable "route_tables" {
  description = <<EOT
Map of route_tables, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - bgp_route_propagation_enabled
    - tags
    - route (block)
Nested routes (azurerm_route):
    Required:
        - address_prefix
        - name
        - next_hop_type
        - resource_group_name
    Optional:
        - next_hop_in_ip_address
EOT

  type = map(object({
    location                      = string
    name                          = string
    resource_group_name           = string
    bgp_route_propagation_enabled = optional(bool)
    tags                          = optional(map(string))
    route = optional(list(object({
      address_prefix         = optional(string)
      name                   = optional(string)
      next_hop_in_ip_address = optional(string)
      next_hop_type          = optional(string)
    })))
    routes = optional(map(object({
      address_prefix         = string
      name                   = string
      next_hop_type          = string
      resource_group_name    = string
      next_hop_in_ip_address = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.route_tables) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.route_tables : [for kk in keys(coalesce(v0.routes, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
