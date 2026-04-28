# pixel-frame-film-fest
Markup Languages project — CZU PEF 2026
Project documentation for the **Markup Languages** course at Czech University of Life Sciences Prague (CZU PEF), 4th edition 2026.

## About the Festival

Pixel & Frame Film Fest is a fictional three-day international festival dedicated to modern cinema, digital creativity, 2D/3D animation, and immersive storytelling. The event takes place in **Prague, Czech Republic** from **September 10–12, 2026**, across two venues: Lumiere Main Cinema (800 seats) and Indie Projection Room (250 seats). The festival features 60 performers and 60 scheduled events.

## Project Structure
/web                        ← Static HTML website (4 pages + CSS)
/data
festival.xml              ← Core data (60 performers, 60 events, 2 venues)
festival.xsd              ← XSD validation schema with custom restrictions
/API
openapi.yaml            ← REST API specification (OpenAPI 3.1)
/transformation         ← 7 XSLT 3.0 stylesheets (XML → JSON)
/json                   ← 7 sample JSON API responses
/json-schema            ← 7 JSON Schema files (Draft 2020-12)
specification.md            ← Festival concept specification

## API Endpoints

| Endpoint | Description |
|---|---|
| GET /api/festival | Festival identity, dates, tickets |
| GET /api/venues | List of venues |
| GET /api/venues/{id} | Venue detail |
| GET /api/performers | List of performers (paginated) |
| GET /api/performers/{id} | Performer detail |
| GET /api/events | Programme (filter by day, venueId, performerId) |
| GET /api/events/{id} | Event detail |

## Technologies

- XML, XSD, XSLT 3.0
- HTML5 (semantic), CSS3
- OpenAPI 3.1, JSON Schema Draft 2020-12
- JSON-LD (Schema.org structured data)

## Notes

This project was partially developed with the assistance of AI tool (Gemini) for generating mock data and boilerplate code. All architecture decisions, validation, and debugging were done manually.

## Author

Damir Kuspan  
CZU PEF — Department of Information Technologies, 2026
