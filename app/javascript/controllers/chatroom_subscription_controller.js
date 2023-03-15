import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static values = { chatroomId: Number, currentUserId: Number }
  static targets = ["messages"]

  connect() {
    console.log("Connected to the chatroom")
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    this.#scrollDown()
  }

  resetForm(event) {
    console.log("resetForm", event)
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
    #insertMessageAndScrollDown(data) {
      console.log("insertMessageAndScrollDown")
      if (data.message === "") { return }
      const currentUserIsSender = this.currentUserIdValue === data.sender_id
      const messageElement = this.#buildMessageElement(currentUserIsSender, data.message)
      this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  #scrollDown() {
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  #buildMessageElement(currentUserIsSender, message) {
    console.log("buildMessageElement")
    return `
      <div class="message-row d-flex ${this.#justifyClass(currentUserIsSender)}">
        <div class="${this.#userStyleClass(currentUserIsSender)}">
          ${message}
        </div>
      </div>
    `
  }

  #justifyClass(currentUserIsSender) {
    console.log("justifyClass")
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }

  #userStyleClass(currentUserIsSender) {
    console.log("userStyleClass")
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }
}
