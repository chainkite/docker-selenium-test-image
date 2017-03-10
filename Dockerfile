FROM selenium/standalone-chrome
MAINTAINER wuxukun 



RUN sudo apt-get update
RUN sudo apt-get install python-pip wget --assume-yes
RUN sudo pip install --upgrade pip
RUN sudo pip install update
RUN sudo pip install selenium base BeautifulSoup html2text



# RUN apt-get update
# RUN apt-get install python-pip wget --assume-yes
# RUN pip install --upgrade pip
# RUN pip install update
# RUN pip install selenium base

# get chrome 

# ARG CHROME_VERSION="google-chrome-stable_current_amd64"
# RUN wget --no-verbose -O /tmp/google-chrome.deb https://dl.google.com/linux/direct/$CHROME_VERSION.deb \
#   && dpkg -i /tmp/google-chrome.deb

# COPY google-chrome-stable_current_amd64.deb /tmp/google-chrome.deb
# RUN dpkg -i /tmp/google-chrome.deb || apt-get install -f --assume-yes && dpkg -i /tmp/google-chrome.deb

# ARG CHROME_DRIVER_VERSION=2.28
# RUN wget --no-verbose -O /tmp/chromedriver_linux64.zip https://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip \
#   && rm -rf /opt/selenium/chromedriver \
#   && unzip /tmp/chromedriver_linux64.zip -d /opt/selenium \
#   && rm /tmp/chromedriver_linux64.zip \
#   && mv /opt/selenium/chromedriver /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION \
#   && chmod 755 /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION \
#   && ln -fs /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION /usr/bin/chromedriver

# COPY chromedriver_linux64.zip /tmp/chromedriver_linux64.zip
# RUN rm -rf /opt/selenium/chromedriver \
#   && unzip /tmp/chromedriver_linux64.zip -d /opt/selenium \
#   && rm /tmp/chromedriver_linux64.zip \
#   && mv /opt/selenium/chromedriver /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION \
#   && chmod 755 /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION \
#   && ln -fs /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION /usr/bin/chromedriver

# COPY chrome_launcher.sh /opt/google/chrome/google-chrome
# RUN chmod +x /opt/google/chrome/google-chrome
 

# get firefox