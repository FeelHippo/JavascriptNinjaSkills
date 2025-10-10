<a id="readme-top"></a>

<!-- README TOP -->
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
        <li><a href="#basic-concepts-of-iam">Basic Concepts of IAM</a></li>
        <li><a href="#authentication-vs-authorization">Authentication vs Authorization</a></li>
        <li><a href="#oauth-2">OAuth 2.0</a></li>
        <li><a href="#open-id-connect">OpenID Connect</a></li>
      </ul>
    </li>
    <li>
        <a href="https://github.com/arialdomartini/Back-End-Developer-Interview-Questions">Back-End Developer Interview Questions</a>
        <summary>My Own Miserable Failures</summary>
        <ul>
            <li><a href="#sqs-consumer-failure">SQS Consumer Failure</a></li>
            <li><a href="#multi-tenant-architecture">Multi Tenant Architecture</a></li>
        </ul>
        <summary>Design Patterns</summary>
        <ul>
            <li><a href="#globals-are-evil">Globals Are Evil</a></li>
            <li><a href="#inversion-of-control">Inversion of Control</a></li>
            <li><a href="#law-of-demeter">Law of Demeter</a></li>
            <li><a href="#active-record">Active Record</a></li>
            <li><a href="#billion-dollar-mistake">Billion Dollar Mistake</a></li>
            <li><a href="#inheritance-vs-composition">Inheritance vs Composition</a></li>
            <li><a href="#anti-corruption-layer">Anti Corruption Layer</a></li>
            <li><a href="#singleton">Singleton</a></li>
            <li><a href="#data-abstraction">Data Abstraction</a></li>
            <li><a href="#dry">DRY</a></li>
            <li><a href="#dependency-hell">Dependency Hell</a></li>
            <li><a href="#robustness-principle">Robustness Principle</a></li>
            <li><a href="#separation-of-concerns">Separation of Concerns</a></li>
        </ul>
        <summary>Code Design</summary>
        <ul>
            <li><a href="#high-cohesion-loose-coupling">High Cohesion, Loose Coupling</a></li>
            <li><a href="#index-zero">Index Zero</a></li>
            <li><a href="#tdd">TDD</a></li>
            <li><a href="#design-vs-architecture">Design Vs Architecture</a></li>
            <li><a href="#multiple-inheritance">Multiple Inheritance</a></li>
            <li><a href="#domain-logic-in-stored-procedures">Domain Logic in Stored Procedures</a></li>
            <li><a href="#oop-took-over-the-world">OOP Took Over the World</a></li>
            <li><a href="#bad-design">Bad Design</a></li>
        </ul>
        <summary>Languages</summary>
        <ul>
            <li><a href="#3-worst-defects">3 Worst Defects</a></li>
            <li><a href="#functional-programming">Functional Programming</a></li>
            <li><a href="#closures">Closures</a></li>
            <li><a href="#generics">Generics</a></li>
            <li><a href="#high-order-functions">High Order Functions</a></li>
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

<!-- OAUTH 2 -->

### OAuth 2

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

References: [OAuth2 basics](https://supertokens.com/docs/authentication/unified-login/oauth2-basics)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- OPEN ID CONNECT -->

### Open ID Connect

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

<!-- SQS CONSUMER FAILURE -->

## SQS Consumer Failure

From the [DOCS](https://github.com/bbc/sqs-consumer)

- Message Acknowledgment Behavior:
  - When `alwaysAcknowledge` is `false` (the default)
    - Returning `undefined`, an `empty object {}`, or an `empty array []`: Message(s) will **NOT** be deleted (left on queue for retry)
  - When `alwaysAcknowledge` is `true`: All messages will be **acknowledged and deleted** regardless of return value.
- Error Handling: Throwing an error (or returning a rejected promise) from the handler function will cause the message to be **left on the queue**. An SQS redrive policy can be used to move messages that cannot be processed to a dead letter queue.
- Deletion Process: Messages are deleted from the queue once the **handler function has completed successfully** (the above items should also be taken into account).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MULTI TENANT ARCHITECTURE -->

## Multi Tenant Architecture

Clarify the understanding of multi-tenant architecture and how to separate data access between tenants.

Multi-tenant architecture is a design approach that enables multiple user groups — referred to as tenants — access to one instance of an application or system.

Multi-tenant architecture creates distinct, isolated environments within a single physical infrastructure, such as a virtual machine, server, or cloud platform. This is accomplished by partitioning the data storage and processing; providing each tenant with their own dedicated space in the system. A tenant interacts with the application and can access their own data.

Different sets of rules can be applied to each domain in terms of access control, resource allocation, and feature availability.

Poorly implemented multitenancy can lead to issues such as unauthorized access and data misuse. To nullify such threats, these applications require careful design and management to ensure tenant isolation and secure data storage.

The most important thing is to authorize the access of end users. Applications that can be used for this purpose include Okta, Auth0, and Azure Active Directory. Such applications enable organizations to manage authentication, authorization, and identity management capabilities.

See AWS [DOCS](https://aws.amazon.com/solutions/guidance/multi-tenant-architectures-on-aws/)

```text
Tenant data is isolated from access by other tenants in the following ways:
              - the Silo Model separates tenant data into a database instance per tenant;
              - the Bridge Model isolates tenant data into a dedicated schema per tenant;
              - the Pool Model uses the row-level security features of the database engine.
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GLOBALS ARE EVIL -->

## Globals Are Evil

Q: `Why are global and static objects evil? Can you show it with a code example?`

A:
- `Mutable global state is evil for many reasons:`
  - *Bugs from mutable global state* - Mutability can cause a lot of tricky bugs, and makes it difficult to track down where in the codebase they happen. 
  - *Poor testability* - A global mutable state needs to be set up for each test case, limiting the ability to test all scenarios. 
  - *Inflexibility* - A global mutable state supposes that the entire application needs the same shared value at all times. 
  - *Function impurity* - Ideally, all functions should be "pure", i.e. the result depends on the input parameters. A global mutable state presupposes impure functions. 
  - *Code comprehension* - A global mutable state makes it more difficult to understand what a certain bit of code is supposed to do.
  - *Concurrency issues* - A global mutable state requires locking when used in a concurrent situation. This adds complexity to the code.
- `Good alternatives:`
  - *Function parameters* - See `Function impurity` above.
  - *Dependency Injection* - See [this](https://stackoverflow.com/a/3140/10708345) wonderful SO answer.
  - *Immutable global state* - This is effectively just "a Constant".
  - *Immutable singletons* - Same as above, but their instantiation can wait till they are needed. 

[Example](https://medium.com/@sitapati/avoiding-mutable-global-state-in-browser-js-89437eaebaac):

*BAD*
```js
// global variable, declared as var, which means that it can be reassigned at runtime
// moreover, the variable's name should convey its global scope, this doesn't
var memArray = [];
//object    
function member(id, password) {
  this.id          = id; 
  this.pwd         = password
}
  
var memObj1 = new member("m001","123");
memArray.push(memObj1);
```

*GOOD*
```js
// Rather than exposing an array, we should expose an object that encapsulates the state, plus mutation methods.
// And we will not expose the actual state, because local functions can still and may be tempted to mutate it directly.
// Instead we will return a copy of the state, so that the only way to update it is via the object methods
const GlobalMemberStore = (() => {
  let _members = []
  const needsArg = arg => {
    if (!arg) {
      throw new Error (`Undefined passed as argument to Store!`)
    }
    return arg
  }
  const needsId = member => {
    if (!member.id) {
      throw new Error (`Undefined id on member passed as argument to Store!`)
    }
    return member
  }
  const Store = {
    // see https://developer.mozilla.org/en-US/docs/Glossary/Deep_copy
    // because the elements of the array are objects, local functions can still mutate members within the copy,
    // and that will affect the global state — because the array elements are references to objects.
    setMembers: members => (_members = members.map(m => ({...m}))),
    getMembers: () => _members.map(m => ({...m})),
    getMember: id => {
      const member = _members.filter(m => m.id === id)
      return member.length === 1 ? 
        { found: true, member: {...member[0]}} :
        { found: false, member: undefined }
    },
    putMember: member => {
      const m = needsId(needsArg(member))
      if (Store.getMember(m.id).found) {
        throw new Error(`${m.id} already exists!`)
      }
      _members = [..._members, {...m}]
    },
    updateMember: update => {
      const u = needsId(needsArg(update))
      if (!Store.getMember(u.id).found) {
        throw new Error(`${u.id} does not exists!`)
      }
      _members = _members.map(m => m.id === u.id ? 
                              {...update} : m)
    }
  }
  return Object.freeze(Store)
})()
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- INVERSION OF CONTROL -->

## Inversion of Control

The *Inversion-of-Control (IoC) pattern*, is about providing any kind of callback, which "implements" and/or controls reaction, instead of acting ourselves directly (in other words, inversion and/or redirecting control to the external handler/controller).
The *Dependency-Injection (DI) pattern* is `a more specific version of IoC pattern`, and is `all about removing direct and/or hard-coded dependencies from your code, to replace them with inject-able dependencies`.

Every DI implementation can be considered IoC, but one should not call it IoC, because implementing Dependency-Injection is harder than callback (Don't lower your product's worth by using the general term "IoC" instead).

For DI example, say your application has a text-editor component, and you want to provide spell checking. Your standard code would look something like this:


```
public class TextEditor {

    private SpellChecker checker;

    public TextEditor() {
        this.checker = new SpellChecker();
    }
}
```

What we've done here creates a dependency between the TextEditor and the SpellChecker. In an IoC scenario we would instead do something like this:


```
public class TextEditor {

    private IocSpellChecker checker;

    public TextEditor(IocSpellChecker checker) {
        this.checker = checker;
    }
}
```

In the first code example we are instantiating SpellChecker (this.checker = new SpellChecker();), which means the TextEditor class directly depends on the SpellChecker class.

In the second code example we are creating an abstraction by having the SpellChecker dependency class in TextEditor's constructor signature (not initializing dependency in class). This allows us to call the dependency then pass it to the TextEditor class like so:


```
SpellChecker sc = new SpellChecker(); // dependency
TextEditor textEditor = new TextEditor(sc);
```

Now the client creating the TextEditor class has control over which SpellChecker implementation to use because we're injecting the dependency into the TextEditor signature.

For example, we could inject some improved implementation instead of the default implementation, or, depending on user's needs or settings we could even inject a Spanish spellchecker or German spellchecker.

Note that just like IoC being the base of many other patterns, above sample is only one of many Dependency-Injection kinds, for example:

*Constructor Injection*.

Where an instance of IocSpellChecker would be passed to constructor, either automatically or similar to above manually.

*Setter Injection*.

Where an instance of IocSpellChecker would be passed through setter-method or public property.

*Service-lookup and/or Service-locator*.

Where TextEditor would ask a known provider for a globally-used-instance (service) of IocSpellChecker type (and that maybe without storing said instance, and instead, asking the provider again and again).

[Here](https://github.com/FeelHippo/conversational_commerce/blob/main/inversion_of_control/dependency_injection.js) an example of how to implement lazy injection in vanilla JS.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LAW OF DEMETER -->

## Law of Demeter

The [Law of Demeter (the Principle of Least Knowledge)](https://dev.to/devcorner/understanding-the-law-of-demeter-in-object-oriented-design-4feg) states that each unit should have only limited knowledge about other units and it should only talk to its immediate friends (sometimes stated as "don't talk to strangers").
Would you write code violating this principle, show why it is a bad design and then fix it?

The Law of Demeter, also known as the Principle of Least Knowledge, is a guideline for reducing coupling between classes. It states:

A method of an object should only call methods of:

- *Itself*
- *Its own fields (member objects)*
- *Objects passed as arguments*
- *Objects created locally within the method*

- In simple terms:
`A class should only interact with objects it directly knows, not objects retrieved from other objects.`

In Low-Level Design (LLD), LoD is crucial because it:

- *Reduces tight coupling between classes*
- *Makes the system easier to maintain*
- *Simplifies unit testing*
- *Encourages encapsulation, hiding internal details from other classes*

*BAD*

Problem:
Driver knows too much about Car’s internals (the Engine).
This creates tight coupling — any change in Car’s engine structure could break Driver.

```
class Engine {
    public void start() { System.out.println("Engine started"); }
}

class Car {
    private Engine engine = new Engine();
    public Engine getEngine() { return engine; }
}

class Driver {
    public void drive(Car car) {
        car.getEngine().start(); // ❌ Violates LoD
    }
}
```

*GOOD*

Benefits:

Driver only interacts with Car, not Engine.
Car encapsulates its Engine internally.
Changes inside Engine do not affect Driver.

```
class Engine {
    public void start() { System.out.println("Engine started"); }
}

class Car {
    private Engine engine = new Engine();
    public void startEngine() { engine.start(); } // LoD-friendly interface
}

class Driver {
    public void drive(Car car) {
        car.startEngine(); // ✅ Only talks to immediate friend
    }
}
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACTIVE RECORD -->

## Active Record

Active-Record is the design pattern that promotes objects to include functions such as Insert, Update, and Delete, and properties that correspond to the columns in some underlying database table.

In your opinion and experience, which are the limits and pitfalls of the this pattern?

- [Active Record Pattern vs. Repository Pattern: Making the Right Choice](https://medium.com/@shiiyan/active-record-pattern-vs-repository-pattern-making-the-right-choice-f36d8deece94)
- `Active Record Pattern`
  - it is a software architecture pattern that seamlessly integrates both business logic and data persistence within a single object.
  - This object typically mirrors a row in a relational database management system (RDBMS) table. E.g. a User class, and a row in the Users table
  - With this pattern, when developers instantiate an active record object, they are essentially working directly with a corresponding database row.
  - This direct representation makes it straightforward and intuitive for developers to perform create, read, update and delete (CRUD) operations on the databases, thereby simplifying database interactions.
  - `Flexibility`: 
    - When it comes to the flexibility of managing persistence mechanisms, the active record pattern can present more challenges than the repository pattern.
    - The active record pattern is less modular because the domain model is closely tied to a specific persistence mechanism, such as a relational database or a document-based NoSQL database.
  - `Testability`:
    - Testing domain models in repository pattern is undemanding while testing active record models can be complex.
- `Repository Pattern`
  - Understanding the `Data Mapper Pattern`
    - The data mapper pattern, in contrast to the active record pattern, ensures *domain objects only contain business rules*.
    - Any task related to *database operations is handed over to the data mapper layer*.
    - By separating these concerns, developers can make sure that *changes in one don’t unintentionally impact the other*, leading to more modular, flexible, and maintainable applications.
  - The `Repository Layer`
    - it introduces an additional layer upon the data mapper layer.
    - The main purpose of the repository layer is to centralize the query construction code, providing a more object-oriented way of communicating with a collection of objects.
    - Repositories act as domain object collections. This makes data operations — like adding, removing, or querying objects — feel like you’re simply working with in memory collection-like data structures.
    - By pooling all the query construction code into repositories, the codebase remains DRY (Don’t Repeat Yourself).
    - This centralized approach makes changes to data operation localized, reducing the risk of unintended side effects.
- `Active Record Pattern Pitfalls`
  - As complexity grows exponentially, it becomes more challenging to read, understand and debug Active Record Pattern.
  - modifying such a bulky class is risky: with so many functionalities packed into a single place, even minor modifications can lead to unexpected side effects, potentially affecting seemingly unrelated features.
- `Embracing the Repository Pattern and DDD Tactical Design`
  - best to turn to a combination of the Repository pattern and the Domain-Driven Design (DDD) tactical approach
  - By adhering to the Single Responsibility Principle (SRP), we restructure our codebase to ensure each class does only what it’s supposed to:
    1. *Domain*: encapsulates the core business logic of our application.
    2. *Repository*: This is dedicated to data persistence and retrieval tasks. It abstracts away the details of database operations.
    3. *Events*: used to decouple side-effects (actions performed as consequence of a repository operation) from main operations (the actual repository operation)
    4. *Helpers*: handle side effects, for instance a Notifier

*GOOD*
```javascript

// DOMAIN
class User {
  id: number;
  name: string;
  isDeleted: boolean;
  articles: Article[]; // A list of articles associated with this user
  comments: Comment[]; // A list of comments associated with this user
  userLikes: Like[]; // A list of likes associated with this user

  addArticle(title, content) {
    this.articles.push(new Article(this, title, content));
  }

  commentOnArticle(article: Article, commentText: string) {
    const comment = new Comment(this, article, commentText);
    this.comments.push(comment);
    article.addComment(comment);

    // Dispatch an event when a comment is posted
    const event = new CommentPostedEvent(comment);
    event.dispatch();
  }

  likeArticle(article) {
    this.userLikes.push(new Like(this, article));
  }
}

// REPOSITORY
class UserRepository {
    database: any; // This can be a reference to a database connection

    save(user: User) {
        this.database.save(user);
    }

    findById(id: number): User | null {
        return this.database.findById(id);
    }

    findActive(): User[] {
        return this.database.findAllBy({ isDeleted: false });
    }

    // ... Additional CRUD operations ...
}

// EVENT (used in domain)
class CommentPostedEvent {
    comment: Comment;

    dispatch() {
        // Notify the system that a comment has been posted
        // This is just a showcase. Real-world applications mostly use pub/sub pattern here.
        Notifier.sendNotification(this.comment);
    }
}

// NOTIFIER
class Notifier {
    static sendNotification(comment: Comment) {
        // Logic to send notification, e.g., email or push notification
        console.log(
            `Notification: New comment posted by ${comment.user.name} on article ${comment.article.title}`
        );
    }
}

```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- BILLION DOLLAR MISTAKE -->

## Billion Dollar Mistake

Would you discuss the techniques to avoid the null reference, such as the [Null Object Pattern](https://refactoring.guru/introduce-null-object), or Option types?

- `Null Object Pattern`:
  - Problem: since some methods return null instead of real objects, you have many checks for null in your code.
*BAD*
```javascript
if (customer == null) {
  plan = BillingPlan.basic();
}
else {
  plan = customer.getPlan();
}
```
  - Solution: instead of null, return a null object that exhibits the default behavior.
*GOOD*
```javascript
class NullCustomer extends Customer {
  isNull(): boolean {
    return true;
  }
  getPlan(): Plan {
    return new NullPlan();
  }
  // Some other NULL functionality.
}

// Replace null values with Null-object.
let customer = (order.customer != null) ?
  order.customer : new NullCustomer();

// Use Null-object as if it's normal subclass.
plan = customer.getPlan();
```
  - Drawbacks: the price of getting rid of conditionals is creating yet another new class.
- `Option Type`:
  - Instead of using null or undefined, you use a special type that represents two distinct states:
    - `Some`: A value is present, and it's wrapped in this variant.
    - `None`: There is no value, represented explicitly by this variant.
  - This pattern ensures that you must handle both cases explicitly, thereby enhancing type safety and code clarity
  - When you have a variable of type Option<T>, TypeScript knows it could be one of these two variants.
  - This promotes a conscious and explicit handling of the "absence" case, something that using null or undefined doesn't enforce.
*GOOD*
```typescript
type Some<T> = {
  _tag: "Some",
  value: T
}

type None = {
  _tag: "None"
}

type Option<T> = Some<T> | None
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- INHERITANCE VS COMPOSITION -->

## Inheritance vs Composition

[Many state that](https://hackernoon.com/inheritance-vs-composition-in-javascript), in Object-Oriented Programming, composition is often a better option than inheritance. What's you opinion?

- `Inheritance`: it is one of the core concepts of object-oriented programming, it helps avoiding code duplication.
  - The main idea is that we create a base class, which contains logic, that will be reused by our subclasses.
```typescript
class Super {
    create() {}
    remove() {}
}

// SubClass "is-a" Super
class SubClass extends Super {
    // create, remove, etc are available
}
```
- `Composition`: uses a has-a relationship. We collect different pieces of functionality together.

```typescript
class Super {
    constructor(subClass, anotherSubClass) {
        // Super "has-a" SubClass
        this.subClass = subclass;
        this.anotherSubClass = anotherSubClass;
    }
    
    // example
    doSomething() {
        var httpResponse = this.anotherSubClass.get();
        this.subClass.writeFileSystem(httpResponse);
    }
}

class SubClass {
    constructor(type) {
        this.type = type;
    }
    writeFileSystem() {}
}

class AnotherSubClass {
    constructor(type) {
        this.type = type;
    }
    httpCall() {}
}
```
- `Why prefer Composition over Inheritance?`:
  - see [this](https://stackoverflow.com/a/14633709/10708345) wonderful SO answer, for pros and cons
  - most languages, including JS, do not allow multiple inheritance
  - it scales better than inheritance
  - it provides better abstraction and encapsulation, better code reuse
  - it makes it easier to uphold the "Single Responsibility Principle"
    - which is often summarized as "There should never be more than one reason for a class to change."
    - it means that every class exists for a specific purpose and it should only have methods that are directly related to its purpose.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ANTI CORRUPTION LAYER -->

## Anti Corruption Layer

What is an Anti-corruption Layer?

- Microsoft [docs](https://learn.microsoft.com/en-us/azure/architecture/patterns/anti-corruption-layer)
- Isolate the different subsystems by placing an anti-corruption layer between them.
- This layer translates communications between the two systems, allowing one system to remain unchanged while the other can avoid compromising its design and technological approach.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ANTI CORRUPTION LAYER -->

## Anti Corruption Layer

Singleton is a design pattern that restricts the instantiation of a class to one single object. Writing a Thread-Safe Singleton class is not so obvious. Would you try?

[This](https://medium.com/@cancerian0684/singleton-design-pattern-and-how-to-make-it-thread-safe-b207c0e7e368) solution is perfect in a Java environment. This scenario will hardly happen in a NodeJs environment, since by default NodeJs is single thread. 
However, TODO(Filippo): use the following to reproduce the scenario, as an exercise https://nodejs.org/api/worker_threads.html

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DATA ABSTRACTION -->

## Data Abstraction

The ability to change implementation without affecting clients is called [Data Abstraction](https://algs4.cs.princeton.edu/12oop/). Produce an example violating this property, then fix it.

- A client does not need to know how a data type is implemented in order to be able to use it.
- *Creating objects* - Each data-type value is stored in an object. To create (or instantiate) an individual object, we invoke a constructor by using the keyword new.
  - Each time that a client uses new, the system allocates memory space for the object, initializes its value, and returns a reference to the object.
- *Invoking instance methods* - The purpose of an instance method is to operate on data-type values.
  - Instance methods have all of the properties of static methods:
    - arguments are passed by value,
    - method names can be overloaded,
    - they may have a return value, 
    - they may cause side effects. 
  - They have an additional property that characterizes them: *each invocation is associated with an object*.
- *Using objects* - Declarations give us variable names for objects that we can use in code. To use a given data type, we:
  - Declare variables of the type, for use in referring to objects
  - Use the keyword new to invoke a constructor that creates objects of the type
  - Use the object name to invoke instance methods, either as statements or within expressions

*BAD*
```dart
//concrete class
class Car {
  const Car({ required this.brand });
  final String brand;
  void accelerate() {
    print('$brand -> accelerate');
  }
}

void main() {
  Car suzuki = new Car(brand: 'Suzuki');
  suzuki.accelerate();
}

```

*GOOD*
```dart
// abstract class
abstract class Car {  
    void accelerate();  
}  
// concrete class
class Suzuki extends Car{  
    void accelerate(){
        print('Suzuki -> accelerate');
     
    }
}
void main() {
  Car obj = new Suzuki();
  obj.accelerate();
}  
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DRY -->

## DRY

Write a snippet of code violating the Don't Repeat Yourself (DRY) principle. Then, fix it.

*BAD*
```javascript
const price = 99.99;
const total1 = price * 1;
const total2 = price * 2;
```
*GOOD*
```javascript
const price = 99.99;
const calculateTotal = (unitPrice, itemsCount) => {
    return unitPrice * itemsCount;
}
```
*BAD*
```javascript
const price = 99.99;
const vat = 0.21;

const baseTotal = calculateTotal(price, 2);
const vatTotal = calculateTotal(price, 2) * vat;
```
*GOOD*
```javascript
const price = 99.99;
const vat = 0.21;
// option 1
const calculateTotal = (unitPrice, itemsCount) => unitPrice * itemsCount;
const calculateTotalWithVAT = (totWithoutVAT, vat) => totWithoutVAT * vat;
const totalWithVAT = calculateTotalWithVAT(calculateTotal(price * 2), vat);
// option 2
const calculateTotal = (unitPrice, itemsCount, vat) => {
    const totWithoutVAT = unitPrice * itemsCount;
    const totWithVAT = totWithoutVAT * vat;
    return { totWithoutVAT, totWithVAT };
}
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DEPENDENCY HELL -->

## Dependency Hell

How would you deal with [Dependency Hell](https://webflow.sourcegraph.com/blog/nine-circles-of-dependency-hell)?

- Make sure you’re running a check against dependencies' version in your presubmit. Before the pull request is merged is also a great time to vet new dependencies — for licenses or security issues
- Sometimes a little duplication is better than a bit of dependency.
- Instead of eating more dependencies, try to snack on the low-hanging fruit of removing unused dependencies
- Use a single package manager. Use declarative tools to glue everything else together
- Tools like Docker can help capture all of these in one place, all in a mostly reproducible manner.
- If you can, point to a specific github tag
- Avoid monkey patching. If you must, use a third_party directory.
- consider using interfaces, contracts, or dependency injection to provide loose coupling across different packages.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROBUSTNESS PRINCIPLE -->

## Robustness Principle

The [robustness principle](https://medium.com/@mesw1/understanding-the-robustness-principle-postels-law-c1199ea79210) is a general design guideline for software that recommends "be conservative in what you send, be liberal in what you accept".
It is often reworded as "be a tolerant reader and a careful writer". Would you like to discuss the rationale of this principle?

*Examples and Impact*
- *GOOD*
  - *Enhanced Robustness*: Systems that can interpret and process a wide range of input formats are more resilient to unexpected data, reducing the likelihood of crashes or failures.
- *BAD*
  - *Security Risks*: Accepting a broad spectrum of inputs can lead to security vulnerabilities if not handled properly.
  - *Protocol Rigidity*: Over time, being too liberal with accepted inputs can make it challenging to update or evolve protocols, as newer implementations might rely on this flexibility.

- *Implementing Postel’s Law: A Balanced Approach*
    - *Strict Output Standards*: Ensure that the data your system outputs rigorously follows established protocols and standards.
    - *Flexible Input Processing*: Develop mechanisms to handle a variety of inputs gracefully. This includes implementing security checks and validations to guard against potential exploits.
    - *Continuous Monitoring and Updates*: Regularly update your system to address any emerging vulnerabilities, especially those arising from the liberal acceptance of inputs.

*Summary: The Significance of Balance*

The Robustness Principle, while fostering system resilience and flexibility, must be applied with a careful balance.
Overemphasis on either aspect — be it the conservative output or liberal input acceptance — can lead to challenges,
including security vulnerabilities and resistance to protocol evolution. As software engineers,
especially in fields impacting humanity like medical device development,
it’s crucial to implement Postel’s Law judiciously,
ensuring our systems are both robust and secure.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SEPARATION OF CONCERNS -->

## Separation of Concerns

[Separation of Concerns](https://www.geeksforgeeks.org/software-engineering/separation-of-concerns-soc/) is a design principle for separating a computer program into distinct areas, each one addressing a separate concern. There are a lot of different mechanisms for achieving Separation of Concerns (use of objects, functions, modules, or patterns such as MVC and the like). Would you discuss this topic?

Separation of Concerns (SoC) is a fundamental principle in software engineering and design aimed at breaking down complex systems into smaller, more manageable parts. The goal is to organize a system's components in a way that each part addresses a single concern, or a cohesive aspect of functionality, rather than mixing multiple concerns together. This approach enhances modularity, maintainability, and scalability of software systems.

Concerns might include user interface presentation, data storage and retrieval, business logic processing, error handling, security, etc. Each concern represents a cohesive aspect that can be managed independently.

Separation of Concerns (SoC) is important in software engineering for several reasons:
- *Modularity* - SoC encourages breaking down complex systems into smaller, more manageable parts,
- *Maintainability* - changes and updates to one aspect of the system are less likely to impact other parts,
- *Scalability* - Modularity promotes a design that allows for easy scalability,
- *Reusability* - Separating concerns often leads to the creation of reusable components,
- *Parallel Development* - SoC facilitates parallel development by providing clear boundaries between different parts of the system,
- *Understanding and Debugging* - With concerns separated into distinct modules, it becomes easier to understand and debug software systems.

Here's how SoC can be applied to system design:
- *Layered Architecture* - Divide the system into layers, each responsible for a specific concern or aspect of functionality,
- *Microservices Architecture* - Decompose the system into smaller, independent services, each responsible for a specific business function or domain,
- *Component-Based Design* - Design the system as a collection of reusable, self-contained components, each addressing a specific concern,
- *Service-Oriented Architecture (SOA)* - Organize the system into loosely coupled, interoperable services that communicate through standardized interfaces,
- *Clear Interfaces and Contracts* - Define clear interfaces and contracts between different components or layers of the system,
- *Domain-Driven Design (DDD)* - Identify and model the core domains and business concerns of the system.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- HIGH COHESION LOOSE COUPLING -->

## High Cohesion, Loose Coupling

It is often said that one of the most important goals in Object-Oriented Design (and code design in general) is to have High Cohesion and Loose Coupling. 

What does it mean? Why is it that important and how is it achieved?

From [this](https://stackoverflow.com/a/74189337/10708345) wonderful SO answer:

![See it here](https://i.sstatic.net/n2dIU.png)

- *Cohesion* is a measure of the number of relationships that parts of a component have with each other. High cohesion means that all parts that are needed to deliver the component's functionality are included in the component

- *Coupling* is a measure of the number of relationships that one component has with other components in the system. Low coupling means that components do not have many relationships with other components

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- INDEX ZERO -->

## Index Zero

Q: `Why do array indexes start with '0' in most languages?`

A: I don't think any of us can provide a stronger argument than Edsger W. Dijkstra's article ["Why numbering should start at zero"](https://www.cs.utexas.edu/~EWD/transcriptions/EWD08xx/EWD831.html).

```text
When dealing with a sequence of length N, the elements of which we wish to distinguish by subscript,
the next vexing question is what subscript value to assign to its starting element.

Adhering to convention a) (i.e 2 ≤ i < 13) yields, when starting with subscript 1, the subscript range 1 ≤ i < N+1; 

e.g. N == 5
1 ≤ i < 6

starting with 0, however, gives the nicer range 0 ≤  i < N. 

e.g. N == 5
0 ≤ i < 5

So let us let our ordinals start at zero: an element's ordinal (subscript) equals the number of elements preceding it in the sequence.
And the moral of the story is that we had better regard —after all those centuries!— zero as a most natural number.
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- TDD -->

## TDD

How do tests and TDD influence code design?

Refer tpo [this](https://github.com/testdouble/contributing-tests/wiki/Tests'-Influence-on-Design) article.

```text
Almost any test has the capability of providing helpful design cues about the subject it directly interacts with. 
To make the most of that capability requires a keen awareness by the developer of the level of coupling they're aiming for 
in their test and the implications of that coupling on the design and malleability of their code.
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DESIGN VS ARCHITECTURE -->

## Design Vs Architecture

[What is the difference between design and architecture?](https://medium.com/@concisesoftware/whats-the-difference-between-software-architecture-and-design-b705c2584631)

- *Software architecture* focuses on developing the skeleton and high-level infrastructure of software. 
- *Software design*, concentrates on the code level design. It addresses problems like the functions of individual modules, the scope of classes, the purposes of different functions, and the like.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DESIGN VS ARCHITECTURE -->

## Design Vs Architecture

Neither Typescript nor Dart support multiple "implementation" inheritance. They do, however, support multiple interfaces.

For implementation, there is only a single super-class chain that a class can inherit member implementations from.

*Typescript* gives us a [wonderful pattern](https://blog.bitsrc.io/multiple-inheritance-or-typescript-mixins-10076c4f136a) allowing us to create the function that will extend a base class.

- define the type `Constructor` and interfaces that classes A and C implement:
```typescript
type Constructor<T = any> = new (...args: any[]) => T;

interface HasMethodA {
  propA: number;
  a(): void;
}

interface HasMethodC {
  c(): void;
}
```

- create a mixin function for class A:
```typescript
function mixinA<T extends Constructor>(base: T): Constructor<HasMethodA> & T {
  return class extends base {
    protected _propA: number;

    get propA(): number {
      return this._propA;
    }

    constructor(...args: any[]) {
      super(...args);
    }

    a(): void {
      console.log('Method "a"');
      this._propA = 42;
    }
  };
}
```

- create mixin for class C:
````typescript
function mixinC<T extends Constructor>(base: T): Constructor<HasMethodC> & T {
  return class extends base {
    constructor(...args: any[]) {
      super(...args);
    }

    c(): void {
      console.log('Method "c"');
    }
  };
}
````

- construct our resulting class D:
```typescript
const Dbase = mixinC(mixinA(class {}));

class D extends Dbase {}

const d = new D();
d.a();
d.c();
console.log(d.propA);
```

*Dart* does have mixins, which allows implementation to be used by multiple classes, but not through inheritance as much as by mixin application.

```dart
abstract class A {
  String get foo;
}
class A1 implements A {
  String get foo => "A1";
}
class A2 implements A {
  String get foo => "A2";
}
mixin B on A {
  String get foo => "B:${super.foo}";
}
class C extends A1 with B {
  String get foo => "C:${super.foo}";
}
class D extends A2 with B {
  String get foo => "D:${super.foo}";
}
void main() {
  print(C().foo); // C:B:A1
  print(D().foo); // D:B:A2
}
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DOMAIN LOGIC IN STORED PROCEDURES -->

## Domain Logic in Stored Procedures

What are the pros and cons of holding domain logic in Stored Procedures?

A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.

See [this](https://softwareengineering.stackexchange.com/a/158565) wonderful SO answer for the pros and cons of having the business logic in stored procedures.

*GOOD*
- [See this](https://softwareengineering.stackexchange.com/a/263479) wonderful SO answer
- use the Domain Driven Design, leveraging on ORM
- use the Repository Pattern
- wrap the Domain Model into a Service Layer

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- OOP TOOK OVER THE WORLD -->

## OOP Took Over the World

In your opinion, why has Object-Oriented Design dominated the market for so many years?

See [this](https://stackoverflow.blog/2020/09/02/if-everyone-hates-it-why-is-oop-still-so-widely-spread/) wonderful SO article. 

```text
OOP is still one of the dominant paradigms right now. But that might be due to the success of languages who happen to be OOP. Java, C++ and Kotlin rule mobile for Android and Swift and Objective-C for iOS so you can’t develop software for mobile unless you understand the object-oriented approach. For the web, it’s JavaScript, Python, PHP and Ruby.

Asking why so many widely-used languages are OOP might be mixing up cause and effect. Richard Feldman argues in his talk that it might just be coincidence. C++ was developed in the early 1980s by Bjarne Stroustrup, initially as a set of extensions to the C programming language. Building on C , C++ added object orientation but Feldman argues it became popular for the overall upgrade from C including type-safety and added support for automatic resource management, generic programming, and exception handling, among other features.

Then Java wanted to appeal to C++ programmers and doubled down on the OOP part. Ultimately, Sun Microsystems wanted to repeat the C++ trick by aiming for greatest familiarity for developers adopting Java.

Millions of developers quickly moved to Java due to its exclusive integration in web browsers at the time. Seen this way, OOP seems to just be hitching a ride, rather than driving the success.
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- BAD DESIGN -->

## Bad Design

What would you do to understand if your code has a bad design?

See [this](https://medium.com/globant/characteristics-of-a-poor-software-design-de71e7b7a73c) interesting article from Medium

```text
- Breaking of one functionality during development of another one.
- Existing code not supporting future enhancements.
- Complexity in understanding and maintaining the code.
- Difficult to test feature in isolation
- Difficult to add new features
```

According to Robert C. Martin, there are 4 important characteristics of a bad design:
- Rigidity: when a change in a class requires changes in some other coupled classes.
- Immobility: when certain components cannot be reused and are not generic enough. 
- Fragility: when a change somewhere in the codebase breaks something else where. 
- Viscosity: when it's easier to come up with a hack rather than good code (not rigid, not immobile, and not fragile). 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- 3 WORST DEFECTS -->

## 3 Worst Defects

Dart is an object-oriented, class-based, garbage-collected language with C-style syntax.

It can compile to machine code, JavaScript, or WebAssembly.

It supports interfaces, mixins, abstract classes, reified generics and type inference.

- It's verbose.
  - See `null safety` [here](https://dart.dev/null-safety), lots to consider and additional syntax to deal with it.

```dart
// Unless you tell Dart that a variable can have a null value, it is non-nullable.
String name = null; // not allowed, compiler will complain
String? lastname = null; // OK, but from this point on you are in charge of double checking

if (lastName != null && lastName.isNotEmpty) {
  // you can now use your variable
  String nonNullLastName = lastname;
}

// assertion operator !
String nonNullLastName = lastname!; // You force the compiler to think the variable is not null. Common source of bugs

// All the non-nullable variables must be initialized after their declaration.
// To counter this issue the late keyword is used. It allows lazy initializing a variable.
// However, it is then the Developer's job to ensure that it is initialized before it is used.
late String lateLastName; // not assigned yet, the compiler trusts you!
lateLastName = "Smith";
print(lateLastName); // all good

// additional operators

// conditional member access
late SomeObject? object;
int? someObjectValue = object?.someValue; // will obtain the value only if it's NOT null

// if null
int actualValue = someObjectValue ?? 0; // if value is null, by default return 0
```
  - Instead of [sum types](https://medium.com/axon-insights/mastering-sum-types-b588a3bc165b), it encourages [class hierarchy](https://staff.fnwi.uva.nl/a.j.p.heck/Courses/JAVAcourse/ch3/s1.html). See <a href="#inheritance-vs-composition">Inheritance</a>.

```typescript
// Typescript provides sum types
type Value = string | number

const a: Value = 'John'
const b: Value = 70
const c: Value = false // Won't compile

function program(a: Value) {
    if (typeof a === 'string') {
        // In this conditional block the type of `a` is `string`
        a.toUpperCase()
    } else {
        // In this conditional block the type of `a` is `number`
        a.toExponential()

        // Won't compile because there's no such property on the `number` type
        a.toUpperCase()
    }
}
```

  - See how to equate objects (override `==``):

```dart
class Person {
  const Person(this.name);

  final String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person &&
              runtimeType == other.runtimeType &&
              name == other.name;

  @override
  int get hashCode => name.hashCode;
}
```
- It is heavily [influenced by C and Java](https://news.ycombinator.com/item?id=19748982) -- as opposed to modern languages like Swift and Rust. See <a href="#oop-took-over-the-world">OOP vs FP</a>.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUNCTIONAL PROGRAMMING -->

## Functional Programming

Why is there a rising interest on Functional Programming?

See [this](https://softwareengineering.stackexchange.com/a/71291) wonderful SO answer.

Q: In which scenarios should I consider a functional programming languages better suited to do a given task?

A: Anything that involves creating sequence of derived data elements using a number of transformation steps. Essentially, the "spreadsheet problem". You have some initial data and set of row-by-row calculations to apply to that data.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CLOSURES -->

## Closures

What is a closure, and what is useful for? What's in common between closures and classes?

See my little [snippet](https://github.com/FeelHippo/JavascriptNinjaSkills/blob/main/js/closure.js). 
I would say that what they have in common in encapsulation. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GENERICS -->

## Generics

What are generics useful for?

See this item from Oracle [DOCS](https://docs.oracle.com/javase/tutorial/java/generics/why.html)

In a nutshell, generics enable types (classes and interfaces) to be parameters when defining classes, interfaces and methods. Much like the more familiar formal parameters used in method declarations, type parameters provide a way for you to re-use the same code with different inputs. The difference is that the inputs to formal parameters are values, while the inputs to type parameters are types.

Benefits@
- Stronger type checks at compile time
- Elimination of casts

```dart
List<String> list = <String>['a', 'b'];
list.add("hello");
String s = list.last; // no cast
print(s);
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- HIGH ORDER FUNCTIONS -->

## High Order Functions

What are higher-order functions? What are they useful for? Write one, in your preferred language.

A higher-order function is a function that does one of the following:

- Takes another *function as an argument*.
- Returns another *function as its result*.

```typescript
// takes a function as parameter
function noisy(f) {
  return (...args) => {
    console.log("calling with", args);
    let result = f(...args);
    console.log("called with", args, ", returned", result);
    return result; // returns a function
  };
}
noisy(Math.min)(3, 2, 1); // invokation: takes in a function, and executes the returned one
// → calling with [3, 2, 1]
// → called with [3, 2, 1] , returned 1
```

See Dart version [here](https://github.com/FeelHippo/JavascriptNinjaSkills/blob/main/dart/HOF.dart)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

