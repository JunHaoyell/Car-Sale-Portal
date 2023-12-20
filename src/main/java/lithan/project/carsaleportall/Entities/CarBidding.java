package lithan.project.carsaleportall.Entities;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name="car_bidding")
public class CarBidding {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="car_id")
    private Car car;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="user_id")
    private User user;

    @Column(name="Bidder_Name")
    private String bidderName;
    
    @Column(name="Bidding_Price")
    private String bidderPrice;

    @Column(name="BidDateTime")
    private Date bid_date_time;
    
    public Date getBid_date_time() {
		return bid_date_time;
	}

	public void setBid_date_time(Date bid_date_time) {
		this.bid_date_time = bid_date_time;
	}

	public CarBidding() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

	public String getBidderName() {
		return bidderName;
	}

	public void setBidderName(String bidderName) {
		this.bidderName = bidderName;
	}

	public String getBidderPrice() {
		return bidderPrice;
	}

	public void setBidderPrice(String bidderPrice) {
		this.bidderPrice = bidderPrice;
	}

    
   
}
