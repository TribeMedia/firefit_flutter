# Chat System Design

This document outlines the design and flow of the chat system, focusing on handling two streams: persisted messages and LLM responses.

## Overview

The chat system is designed to handle user queries and process responses from a Large Language Model (LLM). The system consists of the following key components:

1. **User Input**: Users enter their queries in the input box.
2. **Message Persistence**: User messages are persisted in the database and displayed in the chat window.
3. **Query Processing**: Queries are sent to the LLM, and the system listens for the response stream.
4. **Response Handling**: Responses from the LLM are processed and displayed in the chat window.

## Detailed Flow

1. **User Input**: 
   - The user enters a query in the input box.
   - The query is captured and prepared for processing.

2. **Message Persistence**:
   - The user's message is saved to the database for persistence.
   - The message is immediately displayed in the chat window to provide feedback to the user.

3. **Query Processing**:
   - The captured query is sent to the LLM for processing.
   - The system establishes a stream to receive the response from the LLM.

4. **Response Handling**:
   - The system listens to the response stream from the LLM.
   - As chunks of the response are received, they are processed and displayed in the chat window.
   - The system continues to listen until the response stream is complete.

## Optimizing the Setup

- **Persisted Messages Stream**: Use a single stream to handle messages stored in the database. This stream updates the chat window with all messages, including user queries and LLM responses.
- **LLM Response Stream**: Use a separate stream to handle real-time responses from the LLM. This stream updates the chat window as the LLM processes the query.
- **Simplifying Architecture**: Eliminate unnecessary wrappers and types by directly using streams and providers to manage state and data flow.

This design ensures that user queries are handled efficiently and responses are processed in real-time, providing a seamless chat experience.
