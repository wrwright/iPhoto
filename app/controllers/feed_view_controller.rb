class FeedViewController < UIViewController
  stylesheet :main

  def initWithNibName(nibNameOrNil, bundle:nibBundleOrNil)
    super

    self.title = "Feed"

    self
  end

  def viewDidLoad
    super

    self.view.stylename = :rootbeer

    favoritesButton = UIButton.buttonWithType UIButtonTypeRoundedRect
    favoritesButton.frame = CGRectMake(60,100,200,44)
    favoritesButton.setTitle("View Favorites", forState: UIControlStateNormal)
    favoritesButton.stylename = :test
    self.view.addSubview favoritesButton
    favoritesButton.addTarget(self, action: "showFavorites",
                              forControlEvents: UIControlEventTouchUpInside)
  end

  def showFavorites
    favoritesViewController = FavoritesViewController.alloc.init
    self.navigationController.pushViewController(favoritesViewController,
                                                 animated: true)
  end
end
