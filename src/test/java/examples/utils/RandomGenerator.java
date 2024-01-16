package examples.utils;

import net.datafaker.Faker;

public class RandomGenerator {

    static Faker faker = new Faker();

    public static String getRandomInteger(int size){
        return faker.number().digits(size);
    }

    public static String getRandomName(){
        return faker.name().firstName();
    }

    public static String getRandomJobTitle(){
        return faker.job().title();
    }

}
