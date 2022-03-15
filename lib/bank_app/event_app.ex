defmodule EventApp do
  use Commanded.Application,
    otp_app: :bank,
    event_store: [adapter: Commanded.EventStore.Adapters.InMemory]

  router EventRouter
end
