const revealNodes = document.querySelectorAll(".reveal");

const observer = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add("visible");
        observer.unobserve(entry.target);
      }
    });
  },
  {
    threshold: 0.16,
    rootMargin: "0px 0px -4% 0px"
  }
);

revealNodes.forEach((node, index) => {
  node.style.transitionDelay = `${Math.min(index * 70, 320)}ms`;
  observer.observe(node);
});
