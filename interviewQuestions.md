<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Common interview questions</summary>
  <ul>
    <li>
      <a href="#what-is-rest">What is REST</a>
      <ul>
        <li><a href="#uniform-interface">Uniform Interface</a></li>
        <li><a href="#client-server">Client Server</a></li>
        <li><a href="#stateless">Stateless</a></li>
        <li><a href="#cacheable">Cacheable</a></li>
        <li><a href="#layered-system">Layered System</a></li>
        <li><a href="#code-on-demand">Code on Demand</a></li>
      </ul>
    </li>
    <li>
      <a href="#what-is-acid">What is ACID</a>
      <ul>
        <li><a href="#atomicity">Atomicity</a></li>
        <li><a href="#consistency">Consistency</a></li>
        <li><a href="#isolation">Isolation</a></li>
        <li><a href="#durability">Durability</a></li>
      </ul>
    </li>
    <li>
      <a href="#data-structure">Data Structure</a>
      <ul>
        <li><a href="#array">Array</a></li>
        <li><a href="#linked-list">Linked List</a></li>
        <li><a href="#binary-tree">Binary Tree</a></li>
        <li><a href="#lifo">LIFO</a></li>
        <li><a href="#fifo">FIFO</a></li>
        <li><a href="#binary-search-tree">Binary Search Tree</a></li>
        <li><a href="#doubly-linked-lists">Doubly Linked Lists</a></li>
      </ul>
    </li>
    <li>
      <a href="https://auth0.com/docs/get-started/identity-fundamentals">Identity Fundamentals</a>
      <ul>
        <li><a href="#iam">Basic concepts of IAM</a></li>
        <li><a href="#authentication-vs-authorization">Authentication vs Authorization</a></li>
        <li><a href="#oauth2">OAuth 2.0</a></li>
        <li><a href="#open-id-connect">OpenID Connect</a></li>
      </ul>
    </li>
  </ul>
</details>

<!-- WHAT IS REST -->

## What is REST

**REST** is an acronym for **RE**presentational **S**tate **T**ransfer and an architectural **style** for distributed hypermedia systems.

**REST is not a protocol or a standard**, it is an architectural style. During the development phase, API developers can implement REST in a variety of ways.

A Web API (or Web Service) conforming to the REST architectural style is called a REST API (or RESTful API).

REST is based on some constraints and principles that promote simplicity, scalability, and statelessness in the design. There are six guiding principles:

The key **abstraction of information** in REST is a **resource**. Any information that we can name can be a resource. For example, a REST resource can be a document or image, a temporal service, a collection of other resources, or a non-virtual object (e.g., a person).

The state of the resource, at any particular time, is known as the **resource representation**. The resource representations consist of:

- the **data**
- the **metadata** describing the data
- and the **hypermedia links** that can help the clients transition to the next desired state.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- UNIFORM INTERFACE -->

### Uniform Interface

REST defines a consistent and uniform interface for interactions between clients and servers. 

For example, the HTTP-based REST APIs make use of the standard HTTP methods (**GET, POST, PUT, DELETE**, etc.) and the URIs (**Uniform Resource Identifiers**) to **uniquely** identify resources.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CLIENT SERVER -->

### Client Server

The client-server design pattern enforces the separation of concerns, which helps the client and the server components evolve independently.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- STATELESS -->

### Stateless

Statelessness mandates that each request from the client to the server must contain all of the information necessary to understand and complete the request.

The server cannot take advantage of any previously stored context information on the server.

For this reason, the client application must entirely keep the session state.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CACHEABLE -->

### Cacheable

The cacheable constraint requires that a response should implicitly or explicitly label itself as cacheable or non-cacheable.

If the response is cacheable, the client application gets the right to reuse the response data later for equivalent requests and a specified period.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LAYERED SYSTEM -->

### Layered System

In a layered system, each component cannot see beyond the immediate layer they are interacting with.

A layman’s example of a layered system is the [MVC pattern](https://developer.mozilla.org/en-US/docs/Glossary/MVC). The MVC pattern allows for a clear separation of concerns, making it easier to develop, maintain, and scale the application.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CODE ON DEMAND -->

### Code on Demand (Optional)

REST also allows client functionality to extend by downloading and executing code in the form of applets or scripts.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- WHAT IS ACID -->

## What is ACID

ACID (atomicity, consistency, isolation, durability) is a **set of properties of database transactions** intended to **guarantee data validity** despite errors, power failures, and other mishaps. 

In the context of databases, a sequence of database operations that satisfies the ACID properties (which can be perceived as a single logical operation on the data) is called a transaction. For example, a transfer of funds from one bank account to another, even involving multiple changes such as debiting one account and crediting another, is a single transaction.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ATOMICITY -->

### Atomicity

Transactions are often composed of multiple statements. Atomicity guarantees that **each transaction is treated as a single "unit"**, which either succeeds completely or fails completely: if **any** of the statements constituting a transaction fails to complete, the **entire transaction fails** and the database is left unchanged.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONSISTENCY -->

### Consistency

Consistency ensures that a transaction can only bring the database **from one consistent state to another**, and any data written to the database must be valid according to all defined rules.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ISOLATION -->

### Isolation

Transactions are often executed concurrently (e.g., multiple transactions reading and writing to a table at the same time). Isolation ensures that **concurrent execution of transactions leaves the database in the same state that would have been obtained if the transactions were executed sequentially**.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DURABILITY -->

### Durability

Durability guarantees that once a transaction has been committed, it will **remain committed even in the case of a system failure**.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DATA STRUCTURE -->

## Data Structure

A storage format that defines the way data is stored, organized, and manipulated.

Some popular data structures are Arrays, Trees, and Graphs

The amount of memory that is to be reserved or allocated depends on the data type being stored in that variable

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ARRAY -->

### Array

Is commonly referred to as a collection of items stored at contiguous memory locations

Items stored are of the same type

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LINKED LIST -->

### Linked List

Refers to a linear data structure in which the elements are not necessarily stored in a contiguous manner

It is basically a sequence of nodes, each node points towards the next node forming a chain-like structure

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- BINARY TREE -->

### Binary Tree

Is an extension of the linked list structure where each node has at most two children

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIFO -->

### LIFO

LIFO is an abbreviation for Last In First Out
It extracts the data that was stored last, first.

A stack refers to a linear data structure performing operations in a LIFO

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FIFO -->

### FIFO

FIFO stands for First In First Out
The data that was stored first is extracted first

A queue refers to a linear data structure that performs operations in a FIFO order

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- BINARY SEARCH TREE -->

### Binary Search Tree

Is used to store data in a manner that it can be retrieved very efficiently. 

The left sub-tree contains nodes whose keys are less than the node’s key value.

The right sub-tree contains nodes whose keys are greater than or equal to the node’s key value

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DOUBLY LINKED LISTS -->

### Doubly Linked Lists

Are categorized as a special type of linked list in which traversal across the data elements can be done in both directions. 

This is made possible by the presence of two links in every node, one that links to the node next to it and another that connects to the node before it.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- BASIC CONCEPTS OF IAM -->

### Basic concepts of IAM

Identity and access management provides control over user validation and resource access. Commonly known as IAM, this technology ensures that the right people access the right digital resources at the right time and for the right reasons.

- A digital resource is any combination of applications and data in a computer system.
  - web applications
  - APIs
  - platforms
  - devices
  - databases
- In IAM, a user account is a digital identity. User accounts can also represent non-humans, such as software, Internet of Things devices, or robotics
  - Authentication is the verification of a digital identity. Someone (or something) authenticates to prove that they’re the user they claim to be
  - Authorization is the process of determining what resources a user can access

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHENTICATION VS AUTHORIZATION -->

### Authentication vs Authorization

In simple terms, authentication is the process of verifying who a user is, while authorization is the process of verifying what they have access to.

|**Authentication**                                       | **Authorization**                                             |
| ------------------------------------------------------- | ------------------------------------------------------------- |
|Determines whether users are who they claim to be        | Determines what users can and cannot access                   |
|Challenges the user to validate credentials              | Verifies whether access is allowed through policies and rules |
|Usually done before authorization                        | Usually done after successful authentication                  |
|Generally, transmits info through an ID Token            | Generally, transmits info through an Access Token             |
|Generally governed by the OpenID Connect (OIDC) protocol | Generally governed by the OAuth 2.0 framework                 |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- OAUTH 2.0 -->

### OAuth 2.0

- it is a [**specification**](https://oauth.net/articles/authentication/)
- defines a **delegation protocol**
  - conveys authorization decisions across a network of web-enabled applications and APIs
  - wide variety of applications, including providing mechanisms for user authentication
- **OAuth 2.0 is not an authentication protocol**
  - OAuth is used *inside* of authentication protocols
- OAuth uses tokens to grant access, which can be revoked at any time by the user, providing a more secure and convenient alternative to traditional password-based authentication
- OAuth 2 is a newer version of OAuth that simplifies the authorization process and provides better support for mobile and cloud-based applications
- Access tokens as proof of authentication:
  - Since an authentication usually occurs ahead of the issuance of an access token, it is tempting to consider reception of an access token of any type proof that such an authentication has occurred
  - However, mere possession of an access token doesn't tell the client anything on its own
  - In OAuth, the token is designed to be opaque to the client, but in the context of a user authentication, the client needs to be able to derive some information from the token
  - This problem stems from the fact that the client is not the intended *audience* of the OAuth access token. Instead, it is the *authorized presenter* of that token, and the audience is in fact the *protected resource*
- general OAuth does **not** define a specific format or structure for the access token itself
  - protocols like OpenID Connect's ID Token and Facebook Connect's Signed Response provide a secondary token along side the access token that communicates the authentication information directly to the client
  - This allows the primary access token to remain opaque to the client, just like in regular OAuth
- Access of a protected API as proof of authentication:
  - the token was freshly minted in the context of a user being authenticated at the authorization server, or
  - Refresh tokens and assertions can be used to get access tokens without the user being present, or
  - in some cases access grants can occur without the user having to authenticate at all

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- OPENID CONNECT -->

### OpenID Connect

- [how it works](https://openid.net/developers/how-connect-works/)
  - *It simplifies the way to verify the identity of users based on the authentication performed by an Authorization Server and to obtain user profile information in an interoperable and REST-like manner.*
  - *OpenID Connect enables application and website developers to launch sign-in flows and receive verifiable assertions about users across Web-based, mobile, and JavaScript clients*
- an open standard published in early 2014 that defines an **interoperable way to use OAuth 2.0 to perform user authentication**
- built directly on OAuth 2.0 and in most cases is deployed right along with (or on top of) an OAuth infrastructure
- uses the JSON Object Signing And Encryption (JOSE) suite of specifications for carrying signed and encrypted information around in different places
  - an OAuth 2.0 deployment with JOSE capabilities is already a long way to defining a fully compliant OpenID Connect system
  - the delta between the two is relatively small
  - that delta makes a big difference, and OpenID Connect manages to avoid many of the pitfalls discussed above by adding **several key components** to the OAuth base:
    - [**ID Tokens**](https://jwt.io/introduction)
      - The OpenID Connect ID Token is a **signed JSON Web Token (JWT)** that is given to the client application along side the regular OAuth access token
      - The ID Token contains a set of claims about the authentication session:
        - *identifier for the user (sub)*
        - *identifier for the identity provider who issued the token (iss)*
        - *the identifier of the client for which this token was created (aud)*
        - information about the token's valid (and usually short) *lifetime*
        - it is issued in addition to (and not in lieu of) an access token, allowing the access token to remain *opaque* to the client as it is defined in regular OAuth
    - UserInfo Endpoint
      - clients are not *required* to use the **access token**, since the **ID Token** contains all the necessary information for *processing the authentication event*. However, in order to provide *compatibility with OAuth* and *match the general tendency* for authorizing identity and other API access in parallel, **OpenID Connect always issues the ID token along side an OAuth access token**.
      - In addition to the claims in the ID Token, **OpenID Connect defines a standard protected resource** that contains claims about the **current user**
      - The claims here are **not part of the authentication process**, as discussed above, but instead provide **bundled identity attributes** that make the authentication protocol more valuable to application developers
      - OpenID Connect defines a set of standardized OAuth scopes that map to subsets of these attributes:
        - *profile*
        - *email*
        - *phone*
        - *address*
    - Dynamic server discovery and client registration
      - With OpenID Connect, a common protected API is deployed across a wide variety of clients and providers, all of which need to know about each other to operate
      - OpenID Connect defines a **discovery protocol** that allows clients to easily **fetch information on how to interact with a specific identity provider**
      - On the other side of the transaction, OpenID Connect defines a **client registration protocol** that allows **clients to be introduced to new identity providers**
      - By using these two mechanisms and a common identity API, OpenID Connect can function at internet scale, where no parties have to know about each other ahead of time
    - Compatibility with OAuth 2.0
      - Even with all of this robust authentication capability, OpenID Connect is (by design) still compatible with plain OAuth 2.0, making it a very good choice to deploy on top of an OAuth system with minimal developer effort
      - To facilitate the building of good client applications, the OpenID Connect working group has published documents on building a [basic OpenID Connect client](https://openid.net/specs/openid-connect-basic-1_0.html) using the authorization code flow as well as building an [implicit OpenID Connect client](https://openid.net/specs/openid-connect-implicit-1_0.html)
      - Both of these documents walk the developer through building a basic OAuth 2.0 client and adding the handful of components necessary for OpenID Connect.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[What are four basic principles of Object Oriented Programming?](https://medium.com/@cancerian0684/what-are-four-basic-principles-of-object-oriented-programming-645af8b43727)
[The Main Differences Between HTTP and TCP](https://www.goanywhere.com/blog/http-vs-tcp-whats-the-difference)