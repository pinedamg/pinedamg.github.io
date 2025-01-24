# Personal Portfolio Website

This repository hosts the source code for my personal portfolio website, built using Jekyll and hosted on GitHub Pages. It showcases my professional profile, projects, services, and includes a contact form.

---

## Features

- **Responsive Design**: Fully mobile-friendly and adapts to all screen sizes.
- **Customizable**: Built with Jekyll, making it easy to update and expand.
- **Dynamic Content**: Includes sections like Portfolio, About, Services, and Recommendations.
- **Interactive Modals**: Privacy Policy and Terms of Use are displayed in modals for a seamless user experience.

---

## Table of Contents

1. [Template Source](#template-source)
2. [Setup Instructions](#setup-instructions)
3. [Customizations](#customizations)
4. [License](#license)

---

## Template Source

This project uses the **Agency Jekyll Theme** by [Y7Kim](https://github.com/y7kim/agency-jekyll-theme). The theme is licensed under the MIT License. You can find the original theme repository [here](https://github.com/y7kim/agency-jekyll-theme).

---

## Setup Instructions

### Prerequisites
- [Ruby](https://www.ruby-lang.org/en/)
- [Jekyll](https://jekyllrb.com/)
- [Git](https://git-scm.com/)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/pinedamg/pinedamg.github.io.git
   ```
2. Navigate to the project folder:
   ```bash
   cd pinedamg.github.io
   ```
3. Install dependencies:
   ```bash
   bundle install
   ```

### Local Development
Start the Jekyll server:
```bash
docker-compose up
```
Then open [http://localhost:4000](http://localhost:4000) in your browser.

### Deployment
Push changes to the `main` branch to deploy automatically via GitHub Pages.

---

## Customizations

### Sections
1. **About**: Includes details about my professional background.
2. **Portfolio**: Showcases projects dynamically from `_posts`.
3. **Services**: Highlights the main services I offer.
4. **Recommendations**: Displays LinkedIn recommendations.

### Modals
Interactive modals for:
- **Privacy Policy**: Detailing data collection and usage.
- **Terms of Use**: Describing user responsibilities and rights.

### Styling
- Colors and fonts are defined in `_data/template.yml`.
- Additional styles are located in `assets/css/main.css`.

---

## License

The original theme is licensed under the MIT License. See the [LICENSE](https://github.com/y7kim/agency-jekyll-theme/blob/master/LICENSE) file for details.

All customizations and additional content are released under the same license unless otherwise stated.

---

For questions or feedback, feel free to contact me at [pinedamg@gmail.com](mailto:pinedamg@gmail.com).

