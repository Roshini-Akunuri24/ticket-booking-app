require "test_helper"

class MovieTicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_ticket = movie_tickets(:one)
  end

  test "should get index" do
    get movie_tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_ticket_url
    assert_response :success
  end

  test "should create movie_ticket" do
    assert_difference("MovieTicket.count") do
      post movie_tickets_url, params: { movie_ticket: { company_name: @movie_ticket.company_name, departure: @movie_ticket.departure, from: @movie_ticket.from, num_max: @movie_ticket.num_max, to: @movie_ticket.to } }
    end

    assert_redirected_to movie_ticket_url(MovieTicket.last)
  end

  test "should show movie_ticket" do
    get movie_ticket_url(@movie_ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_ticket_url(@movie_ticket)
    assert_response :success
  end

  test "should update movie_ticket" do
    patch movie_ticket_url(@movie_ticket), params: { movie_ticket: { company_name: @movie_ticket.company_name, departure: @movie_ticket.departure, from: @movie_ticket.from, num_max: @movie_ticket.num_max, to: @movie_ticket.to } }
    assert_redirected_to movie_ticket_url(@movie_ticket)
  end

  test "should destroy movie_ticket" do
    assert_difference("MovieTicket.count", -1) do
      delete movie_ticket_url(@movie_ticket)
    end

    assert_redirected_to movie_tickets_url
  end
end
