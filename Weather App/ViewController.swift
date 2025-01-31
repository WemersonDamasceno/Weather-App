import UIKit

class ViewController: UIViewController {
    private lazy var customView : UIView = {
        let view = UIView(frame: .zero);
        view.backgroundColor = .green;
        view.translatesAutoresizingMaskIntoConstraints = false; // remove as contrainsts default no layout
        return view;
    }()
    
    private func setupView(){
        view.backgroundColor = .white
        
        setHierarchy();
        setConstraints();
           
    }
    
    private func setHierarchy(){
        view.addSubview(customView);
    }
    
    
    //**** Adiciona as Contrainsts no layout
    private func setConstraints(){
          NSLayoutConstraint.activate([
              customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
              customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
              customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
              customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
          ]);
      }
    
 
    
    
    // É executado sempre que a viewController é carregada
    override func viewDidLoad() {
        super.viewDidLoad()
        print("initState")

        setupView();
    }
    
    // É executado sempre antes que a viewController fica em primeiro plano
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("Vai ficar em Primeiro Plano")
    }
    
    // É executado sempre que a viewController fica em primeiro plano
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Está em Primeiro plano")
    }
    
    // É executado quando a viewController desapareceu
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("Segundo plano")
    }
    
    // É executado quando a viewController vai desaparecer
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("Vai ficar em Segundo plano")
    }


}

