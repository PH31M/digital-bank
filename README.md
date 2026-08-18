## A digital banking system built with Spring Boot 3 microservices, modeling real-world use cases: customer onboarding, account management, transactions, and payments.

## Architecture & Design Principles
Domain-Driven Design — domains split along business boundaries (Customer, Accounts, Payments...)
Event-driven architecture with Kafka (sagas, retries, asynchronous processing)
Zero Trust security: OAuth2 + JWT via Auth0, covering both user-facing and service-to-service communication
Idempotency & optimistic locking for financial write operations
Ledger-based transaction history, separating balance from transaction records

## Tech stack

Spring Boot 3 · PostgreSQL · Kafka · Auth0 · REST APIs
