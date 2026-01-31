import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: DioProperties(
    pubName: 'voice_assistant_api',
    pubAuthor: 'Developer',
  ),
  inputSpec: InputSpec(path: 'assets/openapi_spec.yaml'), 
  generatorName: Generator.dio,
  outputDirectory: 'lib/generated_api',
)
class ApiConfig extends OpenapiGeneratorConfig {}