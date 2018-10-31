class PagesController < ApplicationController
    def about
        @title = 'About us';
        @content = 'This is the content';
    end
end
