class MainController < UIViewController

  def loadView
    self.view = UIView.new
  end

  def initWithNibName(name, bundle: bundle)
    super
    self
  end

  def viewDidLoad
    super
    # Setting up the slider
    slider = UISlider.alloc.initWithFrame([[0, 200], [320, 40]])

    # Larger area to grab the slider
    slider.trackRectForBounds CGRect.new(CGPoint.new(200,200), CGSize.new(100,100))

    # Images
    full_image = UIImage.imageNamed("full")
    full_image = full_image.resizableImageWithCapInsets(UIEdgeInsetsZero, resizingMode: UIImageResizingModeTile)
    slider.setMinimumTrackImage full_image, forState: UIControlStateNormal
    slider.setMaximumTrackImage UIImage.imageNamed("empty"), forState: UIControlStateNormal
    slider.setThumbImage UIImage.alloc(), forState: UIControlStateNormal

    # Values
    slider.maximumValue = 100
    slider.value = slider.maximumValue/2

    # Adding it to the view
    view.addSubview(slider)
  end

end
