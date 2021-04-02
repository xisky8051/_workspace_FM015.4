// We enclose this in window.onload.
// So we don't have ridiculous errors.
window.onload = function () {
  // username = "HuangPoKai"; //哪個會員
  // databaseOnline = "chats1/"; //第幾的文章
  // count = 0;
  // productName = "棉麻上衣";
  // article = "2";

  var firebaseConfig = {
    apiKey: "AIzaSyD4vkfI8o_EmLytik1YYcbONqsyhoKl0ic",
    authDomain: "my-first-project-hpk.firebaseapp.com",
    databaseURL: "https://my-first-project-hpk-default-rtdb.firebaseio.com",
    projectId: "my-first-project-hpk",
    storageBucket: "my-first-project-hpk.appspot.com",
    messagingSenderId: "646700042028",
    appId: "1:646700042028:web:9794d1ac0d86ed88704e89",
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  // This is very IMPORTANT!! We're going to use "db" a lot.
  var db = firebase.database();
  // We're going to use oBjEcT OrIeNtEd PrOgRaMmInG. Lol
  class MEME_CHAT {
    // Home() is used to create the home page
    // home(){
    // First clear the body before adding in
    // a title and the join form
    // document.body.innerHTML = ''
    // this.create_join_form()
    // }
    // chat() is used to create the chat page
    chat() {
      // document.body.innerHTML = ''
      var parent = this;

      parent.save_name(username); ///------!!!!!!!!!!!!

      parent.create_chat();
      // this.create_chat()
    }

    // create_chat() creates the chat container and stuff
    create_chat() {
      // Again! You need to have (parent = this)
      var parent = this;
      // GET THAT MEMECHAT HEADER OUTTA HERE

      // Make the title smaller by making it 'chat_title'
      // title.classList.add('chat_title')//-----------------!!!!!!

      var chat_container = document.getElementById("chatStart");
      chat_container.setAttribute("id", "chat_container");

      var chat_inner_container = document.createElement("div");
      chat_inner_container.setAttribute("id", "chat_inner_container");

      var chat_content_container = document.createElement("div");
      chat_content_container.setAttribute("id", "chat_content_container"); //在refresh_chat裡有取用

      var chat_input_container = document.createElement("div");
      chat_input_container.setAttribute("id", "chat_input_container");

      var chat_input_send = document.createElement("button");
      chat_input_send.setAttribute("id", "chat_input_send");
      chat_input_send.setAttribute("disabled", true);
      // chat_input_send.innerHTML = `<i class="fas fa-paper-plane" style="z-index=999">GOGO</i>`
      chat_input_send.innerHTML = `送出`;

      // var article = "2";

      // var input_Select = document.getElementById("input_Select");
      // var strSelect = input_Select.options[input_Select.selectedIndex].text;

      //寫入訊息的地方!!!!!!
      var chat_input = document.createElement("input");
      chat_input.setAttribute("id", "chat_input");
      // Only a max message length of 1000
      chat_input.setAttribute("maxlength", 1000);
      // Get the name of the user
// ==========================!!!!!
      if(`${parent.get_name()}` == "Unknow"){
        chat_input.placeholder = `請先登入`;
        chat_input.setAttribute("disabled", true);
        chat_input_container.setAttribute("style","background-color:gray;");
      }else{
        chat_input.placeholder = `${parent.get_name()}. Say something...`;
      }
// ==========================!!!!!
      // chat_input.placeholder = `${parent.get_name()}. Say something...`;
      chat_input.onkeyup = function () {
        if (chat_input.value.length > 0) {
          chat_input_send.removeAttribute("disabled");
          chat_input_send.classList.add("enabled");
          chat_input_send.onclick = function () {
            chat_input_send.setAttribute("disabled", true);
            chat_input_send.classList.remove("enabled");
            if (chat_input.value.length <= 0) {
              return;
            }
            // Enable the loading circle in the 'chat_content_container'
            // Send the message. Pass in the chat_input.value
            // parent.send_message(chat_input.value +"-->"+"("+strSelect+")"); ////--------!!!!!!!!!!
            // parent.send_message(chat_input.value +"-->"+"("+")"); ////--------!!!!!!!!!!
            parent.send_message(chat_input.value); ////--------!!!!!!!!!!
            // Clear the chat input box
            chat_input.value = "";
            // Focus on the input just after
            chat_input.focus();
          };
        } else {
          chat_input_send.classList.remove("enabled");
        }
      };

      chat_input_container.append(chat_input, chat_input_send);
      chat_inner_container.append(chat_content_container, chat_input_container);
      chat_container.append(chat_inner_container);
      // document.body.append(chat_container)
      // After creating the chat. We immediatly create a loading circle in the 'chat_content_container'
      // then we "refresh" and get the chat data from Firebase
      parent.refresh_chat();
    }

    // Sends message/saves the message to firebase database
    send_message(message) {
      var parent = this;
// =======================================!!!!!!
      var input_Select = document.getElementById("input_Select");
      // alert([input_Select.selectedIndex].input_Select);
      // var strSelect = input_Select.options[(input_Select).selectedIndex].text;
      // var strSelect = (e) => {
      //     return input_Select.options[e.selectedIndex].text;
      // };
      // alert($("#input_Select option:selected").text());

// =======================================!!!!!!

      // if the local storage name is null and there is no message
      // then return/don't send the message. The user is somehow hacking
      // to send messages. Or they just deleted the
      // localstorage themselves. But hacking sounds cooler!!
      if (parent.get_name() == null && message == null) {
        return;
      }

      // Get the firebase database value
      db.ref(databaseOnline).once("value", function (message_object) {
        if($("#input_Select option:selected").text() != "請選擇你要登記的物品"){
        // This index is mortant. It will help organize the chat in order
        var index = parseFloat(message_object.numChildren()) + 1;
        db.ref(databaseOnline + `message_${index}`)
          .set({
            name: parent.get_name()+"("+$("#input_Select option:selected").text()+")",
            message: message,
            index: index,
          })
          .then(function () {
            // After we send the chat refresh to get the new messages
            parent.refresh_chat();
          });
        }else if(username == "Unknow"){
          alert("請先登入");
        }else{
            alert($("#input_Select option:selected").text());
        }
      });
    }

    // Save name. It literally saves the name to localStorage
    save_name(name) {
      // Save name to localStorage
      localStorage.setItem("name", name);
    }

    // Get name. Gets the username from localStorage
    get_name() {
      // Get the name from localstorage
      if (localStorage.getItem("name") != null) {
        return localStorage.getItem("name");
      } else {
        this.home();
        return null;
      }
    }

    // Refresh chat gets the message/chat data from firebase
    refresh_chat() {
      var chat_content_container = document.getElementById(
        "chat_content_container"
      );

      // Get the chats from firebase
      db.ref(databaseOnline).on("value", function (messages_object) {
        // When we get the data clear chat_content_container
        chat_content_container.innerHTML = "";
        // if there are no messages in the chat. Retrun . Don't load anything
        if (messages_object.numChildren() == 0) {
          return;
        }

        // OK! SO IF YOU'RE A ROOKIE CODER. THIS IS GOING TO BE
        // SUPER EASY-ISH! I THINK. MAYBE NOT. WE'LL SEE!

        // convert the message object values to an array.
        var messages = Object.values(messages_object.val());
        var guide = []; // this will be our guide to organizing the messages
        var unordered = []; // unordered messages
        var ordered = []; // we're going to order these messages

        for (var i, i = 0; i < messages.length; i++) {
          // The guide is simply an array from 0 to the messages.length
          guide.push(i + 1);
          // unordered is the [message, index_of_the_message]
          unordered.push([messages[i], messages[i].index]);
        }

        // Now this is straight up from stack overflow 🤣
        // Sort the unordered messages by the guide
        guide.forEach(function (key) {
          var found = false;
          unordered = unordered.filter(function (item) {
            if (!found && item[1] == key) {
              // Now push the ordered messages to ordered array
              ordered.push(item[0]);
              found = true;
              return false;
            } else {
              return true;
            }
          });
        });

        // Now we're done. Simply display the ordered messages
        ordered.forEach(function (data) {
          var name = data.name;
          var message = data.message;
          count = data.index;

          var message_container = document.createElement("div");
          message_container.setAttribute("class", "message_container");

          var message_inner_container = document.createElement("div");
          message_inner_container.setAttribute(
            "class",
            "message_inner_container"
          );

          var message_user_container = document.createElement("div");
          message_user_container.setAttribute(
            "class",
            "message_user_container"
          );

          var message_user = document.createElement("p");
          message_user.setAttribute("class", "message_user");
          message_user.textContent = `${name}`;

          var message_content_container = document.createElement("div");
          message_content_container.setAttribute(
            "class",
            "message_content_container"
          );

          var message_content = document.createElement("p");
          message_content.setAttribute("class", "message_content");
          message_content.textContent = `${message}`;

          var reviews_title = document.getElementById("test1"); //!!!!!
          reviews_title.textContent =
            `${count}` + " 則留言索取 " + `${productName}`;

          message_user_container.append(message_user);
          message_content_container.append(message_content);
          message_inner_container.append(
            message_user_container,
            message_content_container
          );
          message_container.append(message_inner_container);

          chat_content_container.append(message_container);
        });
        // Go to the recent message at the bottom of the container
        chat_content_container.scrollTop = chat_content_container.scrollHeight;
      });
    }
  }
  // So we've "built" our app. Let's make it work!!
  var app = new MEME_CHAT();
  // If we have a name stored in localStorage.
  // Then use that name. Otherwise , if not.
  // Go to home.
  // if(app.get_name() != null){
  app.chat();
  // }
};
