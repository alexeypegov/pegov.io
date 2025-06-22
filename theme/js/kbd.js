document.addEventListener("keydown", (e) => {
  if ((e.altKey || e.ctrlKey) && e.key === "ArrowRight") {
    document.dispatchEvent(
      new CustomEvent("arrow-right", {
        detail: { direction: "right" },
      }),
    );
  }

  if ((e.altKey || e.ctrlKey) && e.key === "ArrowLeft") {
    document.dispatchEvent(
      new CustomEvent("arrow-left", {
        detail: { direction: "left" },
      }),
    );
  }
});
