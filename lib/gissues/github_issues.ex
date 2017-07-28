defmodule Gissues.GithubIssues do

  require Logger

  @user_agent [ {"User-agent", "Nayed nayed.saidali@gmail.com"} ]

  # use a module attribute to fetch the value at compile time
  @github_url Application.get_env(:gissues, :github_url)
  
  def fetch(user, project) do
    Logger.info "Fetching user #{user}'s project #{project}"
    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_reponse
  end

  def issues_url(user, project) do
    "#{@github_url}/repos/#{user}/#{project}/issues"
  end

  def handle_reponse({ :ok, %{status_code: 200, body: body}}) do
    Logger.info "Successful response"
    Logger.debug fn -> inspect(body) end
    { :ok, Poison.Parser.parse!(body) }
  end

  def handle_reponse({ _, %{status_code: status, body: body}}) do
    Logger.error "Error #{status}"
    { :error, Poison.Parser.parse!(body) }
  end
end
