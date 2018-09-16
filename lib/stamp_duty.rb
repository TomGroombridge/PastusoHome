class StampDuty

  def initialize property_value
    @property_value = property_value
  end

  def call
    if @property_value <= 300000
      0
    elsif @property_value > 300000 && @property_value <= 500000
      (@property_value - 300000) * 0.05
    else
      full_stamp_duty_rates
    end
  end

  private

  def full_stamp_duty_rates
    stamp_duty = 0
    value = @property_value

    value -= 125000

    if (value - 125000) >= 0
      stamp_duty += (125000 * 0.02)
      value -= 125000
    else
      return stamp_duty += (value * 0.02).to_i
    end

    if (value - 675000) >= 0
      stamp_duty += (675000 * 0.05)
      value -= 675000
    else
      return stamp_duty += (value * 0.05).to_i
    end

    if (value - 575000) >= 0
      stamp_duty += (575000 * 0.10)
      value -= 575000
    else
      return stamp_duty += (value * 0.10).to_i
    end

    return stamp_duty += (value * 0.12).to_i
  end

end