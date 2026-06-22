# Unbuilt

Things this project deliberately does **not** do, and why — so they are not
silently re-added later. Newest entries at the bottom.

> Example ledger for a small SaaS web API. Copy the shape, not the contents.

## Multi-tenancy — 2026-02-10
**Left unbuilt:** per-tenant data isolation and tenant routing.
**Why:** one customer in private beta; a single shared schema is far simpler to run.
**Revisit if:** we sign a second customer who needs hard isolation.

## Response caching — 2026-02-18
**Left unbuilt:** a Redis / in-memory cache in front of the API.
**Why:** traffic is tiny and every response is already under 50ms.
**Revisit if:** p95 latency climbs, or a read endpoint gets genuinely hot.

## GraphQL endpoint — 2026-03-02
**Left unbuilt:** a GraphQL layer alongside the REST API.
**Why:** the three current clients are happy with REST; GraphQL doubles the surface to secure, document, and rate-limit.
**Revisit if:** a client needs flexible nested queries we can't serve well over REST.

## Soft deletes — 2026-03-15
**Left unbuilt:** a `deleted_at` column and soft-delete logic everywhere.
**Why:** hard deletes plus daily backups cover our actual recovery needs.
**Revisit if:** we get an audit/compliance requirement to retain deleted records.
