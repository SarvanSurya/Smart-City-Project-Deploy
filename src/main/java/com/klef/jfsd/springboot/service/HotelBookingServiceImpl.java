package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.HotelBookings;
import com.klef.jfsd.springboot.model.RentalBookings;
import com.klef.jfsd.springboot.repository.HotelBookingRepository;

@Service
public class HotelBookingServiceImpl implements HotelBookingService {

  @Autowired
  private HotelBookingRepository bookingRepository;
  
  @Override
  public String addbooking(HotelBookings hb) {
    bookingRepository.save(hb);
    return "Booking confirmed! Check your email or My Bookings tab for details.";
  }

@Override
public List<HotelBookings> viewallhotelbookings() {
	return bookingRepository.findAll();
}

@Override
public List<HotelBookings> getDetailsByEmail(String email) {
	return bookingRepository.findbyemail(email);
}  
}