FROM ruby:2.5.0-stretch

# Copy application code
COPY . /application
# Change to the application's directory
WORKDIR /application
RUN apt-get install libpq-dev

# Set Rails environment to production
ENV RAILS_ENV production
# Install gems, nodejs and precompile the assets
RUN bundle install --deployment --without development test \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt install -y nodejs
RUN npm install yarn -g

ENTRYPOINT [ "/bin/sh" ]
CMD [ "/entrypoint.sh" ]
