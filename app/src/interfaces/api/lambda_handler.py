from aws_lambda_powertools import Logger, Tracer
from aws_lambda_powertools.event_handler import ApiGatewayResolver

logger = Logger()
tracer = Tracer()
app = ApiGatewayResolver()

@app.get("/products")
def list_products():
    return []

@logger.inject_lambda_context
@tracer.capture_lambda_handler
def lambda_handler(event, context):
    return app.resolve(event, context)
