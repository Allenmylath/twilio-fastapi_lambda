FROM public.ecr.aws/lambda/python:3.10

# Copy requirements file
COPY requirements.txt ${LAMBDA_TASK_ROOT}

# Install dependencies
RUN pip install -r requirements.txt

# Copy function code
COPY *.py ${LAMBDA_TASK_ROOT}
COPY *.pdf ${LAMBDA_TASK_ROOT}

# Set the handler
CMD [ "server.handler" ]
