package com.example.s3rekognition;

import com.amazonaws.services.rekognition.model.ModerationLabel;

import java.util.List;
import java.util.stream.Collectors;

public class ModerationClassificationResponse {

    private String fileName;
    private boolean violation;
    private List<String> categories;

    public ModerationClassificationResponse(String fileName, boolean violation, List<ModerationLabel> categories) {
        this.fileName = fileName;
        this.violation = violation;
        this.categories = categories.stream().map(ModerationLabel::getName).collect(Collectors.toList());
    }


    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public List<String> getCategories() {
        return categories;
    }

    public void setCategories(List<String> categories) {
        this.categories = categories;
    }

    public boolean isViolation() {
        return violation;
    }

    public void setViolation(boolean violation) {
        this.violation = violation;
    }
}
