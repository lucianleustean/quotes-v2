module Quotes
  class SyncPopular
    include Interactor::Organizer

    organize Api::GetPopularQuotes, Api::MapPopularResponse, Quotes::UpsertAll
  end
end
