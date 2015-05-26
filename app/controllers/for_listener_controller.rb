class ForListenerController < ApplicationController
    def payment

    end

    def medical_examination_certificate

    end

    def specialties

    end

    def law_on_military_duty

    end

    def faq
        @question = Question.new
    end

    def conditions_of_entry
        @application = 'zayava2015.doc'
        @schedule_selections = 'Графік конкурсного відбору_2015.xlsx'
        @announcement = 'Оголошення про конкурсний відбір 2015.doc'
    end
end
