package ru.gb.gbthymeleafwinter.entity.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public enum Status {
    ACTIVE("Доступно"), DISABLE("Недоступно");

    private final String title;
}
