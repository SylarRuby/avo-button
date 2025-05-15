class ButtonComponent < ViewComponent::Base
  def initialize(size: :lg, label: 'Save theme', disabled: false, theme: nil)
    @size = size
    @label = label
    @disabled = disabled
    @theme = theme
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

  def theme_container_classes
    case @theme
    when :primary
      'bg-blue-600'
    when :secondary
      'bg-blue-500'
    else 
      'bg-black'
    end
  end

  def gradient_background_classes
    case @theme
    when :primary
      "hover:from-blue-400/30 hover:to-[oklch(0.65 0.15 240)] active:from-blue-400/20 active:to-[oklch(0.6 0.15 240)] bg-blue-600"
    when :secondary
      "hover:from-blue-300/20 hover:to-[oklch(0.4 0.1 240)] active:from-blue-300/15 active:to-[oklch(0.35 0.1 240)] bg-blue-500"
    else
      "hover:from-white/40 hover:to-[oklch(0.35 0 0)] active:from-white/20 active:to-[oklch(0.25 0 0)] hover:bg-gray-900 active:bg-gray-800 bg-black"
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