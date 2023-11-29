package model;

public class Rating {
    private int ratingUser;
    private int ratedUser;
    private double rating;
    private String ratingUserName;
    private String ratedUsername;
    private double averageRating;
    private int totalSells;

    public int getTotalSells() {
        return totalSells;
    }

    public void setTotalSells(int totalSells) {
        this.totalSells = totalSells;
    }

    public double getAverageRating() {
        return averageRating;
    }

    public void setAverageRating(double averageRating) {
        this.averageRating = averageRating;
    }

    public String getRatingUserName() {
        return ratingUserName;
    }

    public void setRatingUserName(String ratingUserName) {
        this.ratingUserName = ratingUserName;
    }

    public String getRatedUsername() {
        return ratedUsername;
    }

    public void setRatedUsername(String ratedUsername) {
        this.ratedUsername = ratedUsername;
    }

    public Rating() {
    }

    public Rating(int ratingUser, int ratedUser, double rating) {
        this.ratingUser = ratingUser;
        this.ratedUser = ratedUser;
        this.rating = rating;
    }

    public int getRatingUser() {
        return ratingUser;
    }

    public void setRatingUser(int ratingUser) {
        this.ratingUser = ratingUser;
    }

    public int getRatedUser() {
        return ratedUser;
    }

    public void setRatedUser(int ratedUser) {
        this.ratedUser = ratedUser;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    @Override
    public String toString() {
        return "Rating{" +
                "ratingUser=" + ratingUser +
                ", ratedUser=" + ratedUser +
                ", rating=" + rating +
                ", ratingUserName='" + ratingUserName + '\'' +
                ", ratedUsername='" + ratedUsername + '\'' +
                '}';
    }
}
