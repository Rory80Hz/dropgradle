package pro.pengin.dropgradle.health;

import com.codahale.metrics.health.HealthCheck;

public class DropgradleHealthcheck extends HealthCheck {

    public DropgradleHealthcheck() { }

    @Override
    protected Result check() throws Exception {
        return Result.healthy();
    }
}
