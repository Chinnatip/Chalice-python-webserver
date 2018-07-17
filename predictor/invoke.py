import boto3
import json
import wget
import numpy as np

# file_name = 'floppy.jpg'
url = 'http://www.vision.caltech.edu/Image_Datasets/Caltech256/images/008.bathtub/008_0007.jpg'
file_name = wget.download(url)

print(file_name)

endpoint_name = 'image-endpoint-2018-07-17-06-18-41'
runtime = boto3.Session().client(service_name='runtime.sagemaker',region_name='us-west-2')

with open(file_name, 'rb') as f:
	payload = f.read()
	payload = bytearray(payload)
response = runtime.invoke_endpoint(EndpointName=endpoint_name, ContentType='application/x-image', Body=payload)
print(response['Body'].read())
