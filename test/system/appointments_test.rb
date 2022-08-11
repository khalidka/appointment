require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "visiting the index" do
    visit appointments_url
    assert_selector "h1", text: "Appointments"
  end

  test "should create appointment" do
    visit appointments_url
    click_on "New appointment"

    fill_in "Day", with: @appointment.day
    fill_in "Description", with: @appointment.description
    fill_in "End time", with: @appointment.end_time
    fill_in "Name", with: @appointment.name
    fill_in "Start time", with: @appointment.start_time
    fill_in "User", with: @appointment.user_id
    click_on "Create Appointment"

    assert_text "Appointment was successfully created"
    click_on "Back"
  end

  test "should update Appointment" do
    visit appointment_url(@appointment)
    click_on "Edit this appointment", match: :first

    fill_in "Day", with: @appointment.day
    fill_in "Description", with: @appointment.description
    fill_in "End time", with: @appointment.end_time
    fill_in "Name", with: @appointment.name
    fill_in "Start time", with: @appointment.start_time
    fill_in "User", with: @appointment.user_id
    click_on "Update Appointment"

    assert_text "Appointment was successfully updated"
    click_on "Back"
  end

  test "should destroy Appointment" do
    visit appointment_url(@appointment)
    click_on "Destroy this appointment", match: :first

    assert_text "Appointment was successfully destroyed"
  end
end
