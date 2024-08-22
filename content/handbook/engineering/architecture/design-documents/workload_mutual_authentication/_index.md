---
title: "Workload mutual authentication"
status: proposed
creation-date: "2024-07-01"
authors: [ "@daveyleach" ]
coach: "@sxuereb"
approvers: [ "@andrewn", "@glopezfernandez" ]
owning-stage: "~devops::<stage>"
participating-stages: []
toc_hide: true
---

We require that all communication between services and both parties are identified 
and verified as identified in threat modelling exercises.

Mutual TLS fits this requorement this document is a work in progess and represents 
a early discussions of exploring mTLS as an option for authentication between services

## Goals

The purpose of implementing mutual TLS (mTLS) is to ensure all communication
between services is secure and both parties identities are verified. This 
enhances overall system security by mitigating risks associated with 
unauthorized access and data interception. All services that communicate with 
each other should use mTLS where it's feasible to do so as a secure 
authentication mechanism

1. **Scope**
    
    mTLS secures CDNs and load balancers to their backends and secures communication 
    between internal services. But it doesn't secures communication from outside 
    clients to GitLab services. Communication between services inside a cell and those 
    outside a cell should be considered and discussed separately as the requirements
    are likely to be very different.

1. **Technology**
    
    The certificate authority should be able to be integrated with a CDN provider, 
    Kubernetes, Runway and cloud managed load balancers/services that support mTLS. 
    Recommending using a Docker sidecar where feasible. Existing open source 
    software or cloud provided mechanisms should be used for managing certificates

1. **Ease of use.**

    The management of mTLS should be able to be handled transparently to developers 

1. **Authorization**

    Using mTLS headers as an option for authorization as well as authentication should 
    be considered

## Requirements

| Requirement                            | Description                                                                     | Priority |
| ---------------------------------------| --------------------------------------------------------------------------------| -------- |
| Security                               | Only authorized services can communicate with one another                       | high     |
| High availability                      | Certificates can be rotated automatically without service interruption          | high     |
| Cells support                          | Can be used for all cells services                                              | high     |
| Transparent to application developers  | Application developers get mTLS security for their services with minimal setup  | high     |
| Authorization support                  | Application Developers can use mTLS for authorization                           | high     |
| Provision certificates within seconds  | We can create a new certificate in seconds                                      | high     |
| Multiple Protocol support              | Support HTTP/1.1, HTTP/2, gRPC                                                  | high     |
| Gradual Adoption                       | First allow traffic without a certificate to be accepted                        | med      |
| Auditable                              | Can validate all services are using secure authentication via mTLS              | med      |
| Cloud-managed                          | Can be integrated with cloud services                                           | med      |
| Self-managed                           | Can be eventually used in self managed scenarios                                | med      |

## Non-Goals

- mTLS should not be considered for managing user level authorization

## Architecture

```mermaid
sequenceDiagram
    participant client as Client
    participant server as Server
    client->>server: Client connects to server
    server->>client: Server presents TLS certificate
    client->>client: Client verifies servers certificate
    client->>server: Client presents TLS certificate
    server->>server: Server validates TLS certificate
    client->>server: Communicates over encrypted TLS connection
    server->>client: Communicates over encrypted TLS connection
```
