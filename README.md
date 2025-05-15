# Avo Design

A modern Rails 8 application built with Hotwire, View Components, and Tailwind CSS.

## Requirements

* Ruby version: See `.ruby-version` file
* MySQL 8.0 or higher

## System Dependencies

* Docker (optional, for containerized development)
* MySQL server

## Setup

1. Clone the repository
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Set up the database:
   ```bash
   rails db:create db:migrate
   ```
4. Start the development server:
   ```bash
   ./bin/dev
   ```

## Development

The application uses:
* Hotwire (Turbo and Stimulus) for dynamic frontend interactions
* View Components for reusable UI components
* Tailwind CSS (via tailwindcss-rails gem) for styling
* Heroicons for icons

## Testing

Run the test suite:
```bash
rails test
```

To run specific component tests:
```bash
rails test test/components/button_component_test.rb
```

## Deployment

This application can be deployed using Kamal. See the `.kamal` directory for deployment configuration.

## Docker Support

A Dockerfile is included for containerized development and deployment. Build the image with:
```bash
docker build -t avo-design .
```

## License

[Add your license information here]
