**Before you start:** rename this file to `unit3d_lastname.md`, using your own last name. Watch the video and read `unit3d_Walkthrough.md`. Commit and push when you're done.

**Name: Michael McCarty**

---

# Unit 3d — Types of Databases

Answer every question. No SQL today.

---

## While you watch the video

**1.** Fill in the table while you watch [7 Database Paradigms – Fireship](https://www.youtube.com/watch?v=W2Z7fbCLSTw).

| Type | One product he names | Good for |
|---|---|---|
| Key-value |Redis |Caching, pub/sub, leaderboards |
| Wide-column |Cassandra |time-series |
| Document |Firestore |Most apps, games, IOT |
| Relational |Postgres SQL |most apps |
| Graph |D Graph |graphs, recommendation engines, knowledge graphs |
| Full-text search |Solr |Search Engines, typaheads |
| Multi-model |Fauna DB |Everything? |

---

## After the video

**2.** Key-value databases keep their data in memory. What does that make them good at? What can't you do with them?

**Answer: reading/get and writing/set with a unique key, you can't join them to other tables**


**3.** What is the downside of a document database, according to the video?

**Answer: Extensive disconnected or highly related that need a complex join**


**4.** A relational database needs a join table to connect many things to many things. In a graph database, what does that job instead?

**Answer: A relationship/Node**


**5.** Name one relational database product from the video.

**Answer: Postgres SQL**


---

## Pick the database

**6.** For each client, pick the best type of database and give one reason. Use the "How to pick one" table in the walkthrough.

**Choose from:** Relational · Document · Graph · Key-value · Full-text search · Wide-column

| # | Client says… | Type | One reason |
|:-:|---|---|---|
| a | "We run a pharmacy. Every prescription must link to one patient and one doctor, and nothing can ever be out of sync." |Relational |it keeps it related to each other |
| b | "Our store sells 40,000 products. Shoes have sizes, laptops have RAM. Every category has different information." |Document |It allows each record to be a self-contained document with different fields |
| c | "We want to suggest new friends: people who are friends with your friends." |Graph |the nodes connect, so you can see what nodes connect to a node you are connected to |
| d | "Our game needs a leaderboard. Scores change thousands of times a second." |Key-Value |it can easily handle the get and set of the scores, and is fast |
| e | "Our website has 50,000 recipes, and people need to search them by any word." |Full-text search |allows you to search for text |
| f | "We have 10,000 weather sensors sending a reading every second." |Wide-Column |It has no fixed layout |

**7.** In 3a, the `teams` + `games` tables stored each team once and linked games to teams with `team_id`. Why is a relational database a good fit for NBA data?

**Answer: It is data that can be relational, and they won't change with the ID**


**8.** You're building an app for our school that keeps track of students, classes, and grades. Which type of database would you pick, and why?

**Answer: Relational, you can have each class have their own table with students and their grade**
