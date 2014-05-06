require 'spec_helper'

class DummyModel < ActiveRecord::Base
  include ActiveRecordForcibleIndex
end

describe ActiveRecordForcibleIndex do

  describe "#use_index" do
    describe "responsiveness" do
      Given { }

      Then { expect(DummyModel).to respond_to(:use_index) }
    end

    describe "sql output" do
      Given(:active_record_relation) { DummyModel.use_index('dummy_index') }
      Given { active_record_relation.stub to_sql: 'SELECT `dummy_models`.* FROM dummy_models USE INDEX(dummy_index) ' }

      Then { expect(active_record_relation.to_sql).to eq('SELECT `dummy_models`.* FROM dummy_models USE INDEX(dummy_index) ') }
    end
  end

  describe "#force_index" do
    describe "responsiveness" do
      Given { }

      Then { expect(DummyModel).to respond_to(:force_index) }
    end

    describe "sql output" do
      Given(:active_record_relation) { DummyModel.force_index('dummy_index') }
      Given { active_record_relation.stub to_sql: 'SELECT `dummy_models`.* FROM dummy_models FORCE INDEX(dummy_index) ' }

      Then { expect(active_record_relation.to_sql).to eq('SELECT `dummy_models`.* FROM dummy_models FORCE INDEX(dummy_index) ') }
    end
  end

end
