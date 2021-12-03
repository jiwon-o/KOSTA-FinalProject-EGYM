package kosta.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import kosta.mvc.domain.Address;
import kosta.mvc.repository.AddressRepository;
import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class AddressService {
	
	private final AddressRepository addressRepository;
	
    public List<Address> selectAddrById(String memberId){
    	return addressRepository.selectByMemberId(memberId);
    }

}
