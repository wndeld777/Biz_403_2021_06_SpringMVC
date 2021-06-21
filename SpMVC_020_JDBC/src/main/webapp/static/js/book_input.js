document.addEventListener("DOMContentLoaded", () => {
  let modal = document.querySelector("div#modal");
  modal.querySelector("span").addEventListener("click", (e) => {
    modal.style.display = "none";
  });
  document.querySelector("form#book_input").addEventListener("keydown", (e) => {
    let key = e.key;
    let tagName = e.target.tagName;
    let id = e.target.id;

    if (key === "Enter" && tagName === "INPUT") {
      let text = e.target.value;

      if (id === "bk_ccode") {
        /* fetch : ajax 비동기기법 */
        fetch(`${rootPath}/comp/list`)
          .then((res) => {
            return res.text();
          })
          .then((result) => {
            let div = document.createElement("div");
            /* TEXT를 HTML 형식으로 바꿔라 */
            div.innerHTML = result;
            modal.appendChild(div);
          });
        modal.style.display = "block";
      } else if (id === "bk_acode") {
        modal.style.display = "block";
      }
    }
  });
});
