package com.example.BusReservation.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.BusReservation.dao.CalculateDIstance;
import com.example.BusReservation.models.Bookings;
import com.example.BusReservation.models.Bus_Details;
import com.example.BusReservation.models.City;
import com.example.BusReservation.models.DummyModel;
import com.example.BusReservation.models.Seat;
import com.example.BusReservation.models.Timings;
import com.example.BusReservation.models.User;
import com.example.BusReservation.repositories.BookingRepository;
import com.example.BusReservation.repositories.Bus_DetailsRepository;
import com.example.BusReservation.repositories.CityRepository;
import com.example.BusReservation.repositories.SeatRepository;
import com.example.BusReservation.repositories.TimingsRepository;

@Controller
public class SearchController {

	@Autowired
	CityRepository crepo;

	@Autowired
	TimingsRepository trepo;

	@Autowired
	Bus_DetailsRepository brepo;

	@Autowired
	BookingRepository bookingrepo;

	@InitBinder
	public void initDateBinder(final WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-mm-dd"), true));
	}

	@RequestMapping(path = "/search", method = RequestMethod.POST)
	public String search(Model m, HttpServletRequest request, @RequestParam("from") String from,
			@RequestParam("to") String to, @RequestParam("mydate") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate dt)
			throws IOException {

		request.getSession().setAttribute("date", dt);
		m.addAttribute("date", dt);
		CalculateDIstance cd = new CalculateDIstance();

		DayOfWeek daoyOfWeek = dt.getDayOfWeek();

		System.out.println("day is " + daoyOfWeek.getValue());

		ZoneId defaultZoneId = ZoneId.systemDefault();
		Date date = Date.from(dt.atStartOfDay(defaultZoneId).toInstant());

		double di = 0;
		
		System.out.println("the details " + from + "  " + to + dt.toString());

		List<City> li1 = crepo.findCityByName(from);

		List<City> li2 = crepo.findCityByName(to);

		if (li1.isEmpty() || li2.isEmpty()) {
			return "empty";
		}

		City c1 = li1.get(0);
		City c2 = li2.get(0);

		request.getSession().setAttribute("city1", c1.getCity_name());
		request.getSession().setAttribute("city2", c2.getCity_name());

		System.out.println("city 1 id is " + c1.getCity_id());
		System.out.println("city 2 id is " + c2.getCity_id());

		List<Bus_Details> bus_list = new ArrayList<Bus_Details>();

		brepo.findAll().forEach(det -> bus_list.add(det));

		List<DummyModel> final_list = new ArrayList<DummyModel>();

		for (Bus_Details bobj : bus_list) {

			String city_list = bobj.getCity_List();
			String[] city_array = city_list.split(",");
			int[] array = Arrays.asList(city_array).stream().mapToInt(Integer::parseInt).toArray();

			List<Integer> list = Arrays.stream(array).boxed().collect(Collectors.toList());
			int city1_position = list.indexOf(c1.getCity_id());
			int city2_position = list.indexOf(c2.getCity_id());

			System.out.println("City 1 position is" + city1_position);
			System.out.println("City 2 position is" + city2_position);

			if (city1_position == -1 || city2_position == -1 || city1_position > city2_position)
				continue;

			List<Timings> litim = bobj.getList();
			for (Timings t1 : litim)
				System.out.println(t1 + "  " + t1.getArrival_time() + " " + litim.indexOf(t1));

			Timings t1 = bobj.getList().get(city1_position);
			Timings t2 = bobj.getList().get(city2_position);

			System.out.println(t1.getArrival_time() + " " + t1.getDeparture_time());

			System.out.println(t2.getArrival_time() + " " + t2.getDeparture_time());

			if (t1 == null || t2 == null)
				System.out.println("timings are null");
			di = 0;
			for (int i = city1_position; i < city2_position; i++) {
				int city_id1 = array[i];
				City cob1 = crepo.findById(city_id1).get();

				int city_id2 = array[i + 1];
				City cob2 = crepo.findById(city_id2).get();

				di += cd.getDistance(cob1.getCity_name(), cob2.getCity_name());

			}
			di = di / 1000;

			List<Bookings> liSeat = bookingrepo.findByIdDate(bobj.getBus_id(), date);

			int total = 43;

			if (!liSeat.isEmpty()) {
				total -= liSeat.size();

			}

			DummyModel dm1 = new DummyModel(bobj.getBus_id(), bobj.getBus_Name(), bobj.getCity_List(), t1, t2, total,
					di + " km",di);
			final_list.add(dm1);

		}

		if (final_list.isEmpty()) {
			return "empty";
		} else {
			m.addAttribute("mylist", final_list);

			User user=(User) request.getSession().getAttribute("user");
			if(user==null)
			{
			System.out.println("unauth search");
				return"unauthSearch";
			}
			else
			{
				System.out.println("auth search");
				return "search";
			}
		
		}

	}

}
