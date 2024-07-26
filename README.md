<p align="center">
  <a href="https://www.shapediver.com/">
    <img src="https://sduse1-assets.shapediver.com/production/assets/img/navbar_logo.png" alt="ShapeDiver" width="392" />
  </a>
</p>

# ShapeDiver API Specifications

This repository hosts [OpenAPI Specification](https://swagger.io/specification/) (OAS) files that
describe various [ShapeDiver APIs](https://help.shapediver.com/doc/apis-and-sdks). These OAS files
provide standardized and language-agnostic descriptions of HTTP APIs, facilitating developers to
dynamically generate Client SDKs for multiple programming languages using tools like the
[OpenAPI Generator](https://openapi-generator.tech/). This enables rapid development and
integration of ShapeDiver APIs into your applications and reduces manual effort to update and
maintain previously generated code while minimizing errors.

## Supported ShapeDiver Systems

- [Geometry Backend](https://help.shapediver.com/doc/geometry-backend):
  OAS file is `geometry_api_v2.yaml`.

- [Platform Backend](https://help.shapediver.com/doc/platform-backend):
  _Coming soon!_

## Getting Started

To generate a Client SDK using the [OpenAPI Generator](https://openapi-generator.tech/), follow
these steps:

1. **Install OpenAPI Generator**:\
   Follow the [installation instructions](https://openapi-generator.tech/docs/installation) on the
   OpenAPI Generator homepage.\
   _Note: We recommend using NPM to install the generator for simple versioning._

   ```bash
   npm install @openapitools/openapi-generator-cli -g
   ```

2. **Fetch the respective OAS file**:\
   Download the respective ShapeDiver OAS file and store it in your project's directory.

3. **Generate the SDK**:\
   Use the OpenAPI Generator to generate the desired Client SDK:

   ```bash
   openapi-generator-cli generate \
       -i path/to/downloaded/openapi.yaml \
       -g <language> \
       -o path/to/output
   ```

   Replace `<language>` with the programming language of your choice (e.g., javascript, python).
   A full list of available languages is available
   [here](https://openapi-generator.tech/docs/generators/). Please note that for some languages the
   generator command must be provided additional options for best results. A list of available
   options can be found in the documentation of the generator in the respective language.

## Available Client SDKs

- [Geometry Backend](https://help.shapediver.com/doc/geometry-backend):

  - [TypeScript](https://github.com/shapediver/GeometryBackendSdkTypeScript)
  - [Python](https://github.com/shapediver/GeometryBackendSdkPython)
  - [PHP](https://github.com/shapediver/GeometryBackendSdkPhp)

- [Platform Backend](https://help.shapediver.com/doc/platform-backend):

  - TypeScript: _Coming soon!_

## Support

If you have questions, please use the [ShapeDiver Help Center](https://help.shapediver.com/).

You can find out more about ShapeDiver [right here](https://www.shapediver.com/).

## Licensing

This project is released under the [MIT License](https://github.com/shapediver/OpenApiSpecifications/blob/main/LICENSE).
