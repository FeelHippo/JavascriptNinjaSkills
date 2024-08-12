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
        <li><a href="#doubly-linked-lists"> Doubly Linked Lists</a></li>
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

[What are four basic principles of Object Oriented Programming?](https://medium.com/@cancerian0684/what-are-four-basic-principles-of-object-oriented-programming-645af8b43727)