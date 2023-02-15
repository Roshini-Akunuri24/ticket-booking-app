require "application_system_test_case"

class MovieTicketsTest < ApplicationSystemTestCase
  setup do
    @movie_ticket = movie_tickets(:one)
  end

  test "visiting the index" do
    visit movie_tickets_url
    assert_selector "h1", text: "Movie tickets"
  end

  test "should create movie ticket" do
    visit movie_tickets_url
    click_on "New movie ticket"

    fill_in "Company name", with: @movie_ticket.company_name
    fill_in "Departure", with: @movie_ticket.departure
    fill_in "From", with: @movie_ticket.from
    fill_in "Num max", with: @movie_ticket.num_max
    fill_in "To", with: @movie_ticket.to
    click_on "Create Movie ticket"

    assert_text "Movie ticket was successfully created"
    click_on "Back"
  end

  test "should update Movie ticket" do
    visit movie_ticket_url(@movie_ticket)
    click_on "Edit this movie ticket", match: :first

    fill_in "Company name", with: @movie_ticket.company_name
    fill_in "Departure", with: @movie_ticket.departure
    fill_in "From", with: @movie_ticket.from
    fill_in "Num max", with: @movie_ticket.num_max
    fill_in "To", with: @movie_ticket.to
    click_on "Update Movie ticket"

    assert_text "Movie ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie ticket" do
    visit movie_ticket_url(@movie_ticket)
    click_on "Destroy this movie ticket", match: :first

    assert_text "Movie ticket was successfully destroyed"
  end
end
