package com.example.s3rekognition;

import java.util.List;

public class ModerationResponse {
    String bucketName;
    List<ModerationClassificationResponse> results;

    public ModerationResponse() {
    }

    public ModerationResponse(String bucketName, List<ModerationClassificationResponse> results) {
        this.bucketName = bucketName;
        this.results = results;
    }

    public String getBucketName() {
        return bucketName;
    }

    public List<ModerationClassificationResponse> getResults() {
        return results;
    }

    public void setBucketName(String bucketName) {
        this.bucketName = bucketName;
    }

    public void setResults(List<ModerationClassificationResponse> results) {
        this.results = results;
    }

}
