document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("guestbook-form");
    const entrySection = document.getElementById("guestbook-entries");

    form?.addEventListener("submit", async (e) => {
        e.preventDefault();
        const username = document.getElementById("username").value;
        const content = document.getElementById("content").value;
        const password = document.getElementById("password");



        const response = await fetch("http://localhost:8080/api/guestbook", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ username, content, password })
        });

        if (response.ok) {
            alert("등록 완료!");
            form.reset();
            loadEntries();
        } else {
            alert("오류 발생");
        }
    });

    async function loadEntries() {
        const res = await fetch("http://localhost:8080/api/guestbook");
        const data = await res.json();

        entrySection.innerHTML = data.map(entry => `
            <div>
              <strong>${entry.username}</strong>
              <p>${entry.content}</p>
              <small>${new Date(entry.createdAt).toLocaleString()}</small>
            </div>
                `).join("");
    }

    loadEntries();
});