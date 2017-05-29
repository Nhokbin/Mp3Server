package com.dav.mp3.api;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.json.JSONObject;
import org.jdom.*;
import org.jdom.input.SAXBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.xml.sax.SAXException;

import com.dav.mp3.entity.Artist;
import com.dav.mp3.entity.Country;
import com.dav.mp3.entity.Song;
import com.dav.mp3.service.ArtistService;
import com.dav.mp3.service.CountryService;
import com.dav.mp3.service.SongService;
import com.dav.mp3.util.StringHelper;

@RestController
@RequestMapping("song")
public class SongController {

	@Autowired
	private SongService songService;

	@Autowired
	private ArtistService artistService;
	
	@Autowired
	private CountryService countryService;

	@RequestMapping(value = "/get-all", method = RequestMethod.POST,  produces = {
			MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_FORM_URLENCODED_VALUE }, consumes = { MediaType.APPLICATION_JSON_VALUE })
	public List<Song> getAll(@RequestBody String data) {
		System.out.println(data);
		JSONObject object = new JSONObject(data);
		int page = object.getInt("page");
		
		return (List<Song>) songService.findAll(page);
	}

	
}
