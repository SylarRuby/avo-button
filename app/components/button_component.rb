class ButtonComponent < ViewComponent::Base
  def initialize(size: :lg, label: 'Save theme', disabled: false)
    @size = size
    @label = label
    @disabled = disabled
  end

  private

  def size_classes
    case @size
    when :sm
      'w-[12em] h-[3em] text-sm font-semibold rounded-[0.75rem]'
    when :md
      'w-[16em] h-[4em] text-lg font-semibold rounded-[1rem]'
    else # large
      'w-[20em] h-[5em] text-2xl font-bold rounded-[1.25rem]'
    end
  end

  def overlay_radius
    case @size
    when :sm
      'rounded-[0.65rem]'
    when :md
      'rounded-[0.9rem]'
    else # large
      'rounded-[1.15rem]'
    end
  end

  def gradient_radius
    case @size
    when :sm
      'rounded-[0.55rem]'
    when :md
      'rounded-[0.8rem]'
    else # large
      'rounded-[1.05rem]'
    end
  end

  def size_inners
    case @size
    when :sm
      'w-[95%] h-[80%]'
    when :md
      'w-[96%] h-[85%]'
    else # large
      'w-[97%] h-[87%]'
    end
  end

  def overlay_top
    case @size
    when :sm
      'top-[0.15rem]'
    when :md
      'top-[0.2rem]'
    else # large
      'top-[0.25rem]'
    end
  end

  def gradient_top
    case @size
    when :sm
      'top-[0.3rem]'
    when :md
      'top-[0.4rem]'
    else # large
      'top-[0.5rem]'
    end
  end
end