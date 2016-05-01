package pro.pengin.dropgradle;

import io.dropwizard.Application;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import pro.pengin.dropgradle.config.DropgradleServiceConfiguration;
import pro.pengin.dropgradle.health.DropgradleHealthcheck;
import pro.pengin.dropgradle.resources.StatusResource;


public class DropgradleApplication extends Application<DropgradleServiceConfiguration> {

    private static final String SERVICE_NAME = "dropgradle";

    public static void main(String[] args) throws Exception {
        new DropgradleApplication().run(args);
    }

    @Override
    public void initialize(Bootstrap<DropgradleServiceConfiguration> bootstrap) {
    }

    @Override
    public void run(DropgradleServiceConfiguration configuration, Environment environment) throws Exception {
        environment.jersey().register(new StatusResource());
        environment.healthChecks().register(getName(), new DropgradleHealthcheck());
    }

    @Override
    public String getName() {
        return SERVICE_NAME;
    }
}
