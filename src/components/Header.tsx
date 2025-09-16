import React from 'react';
import { ShoppingCart } from 'lucide-react';

interface HeaderProps {
  cartItemsCount: number;
  onCartClick: () => void;
  onMenuClick: () => void;
}

const Header: React.FC<HeaderProps> = ({ cartItemsCount, onCartClick, onMenuClick }) => {
  return (
    <header className="sticky top-0 z-50 bg-black/95 backdrop-blur-sm border-b border-orange-500 shadow-lg">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between h-16">
          <button 
            onClick={onMenuClick}
            className="flex items-center space-x-3 text-white hover:text-orange-400 transition-colors duration-200 group"
          >
            <img src='/logo.jpg' className="w-10 h-10 bg-gradient-to-br from-orange-500 to-orange-600 rounded-lg flex items-center justify-center group-hover:scale-105 transition-transform duration-200" />
            <h2 className="text-2xl font-inter text-white font-bold">City Gleam</h2>
          </button>
          
          <nav className="hidden md:flex items-center space-x-8">
            <a href="#menu" className="text-gray-300 hover:text-orange-400 transition-colors duration-200 font-medium">Menu</a>
            <a href="#specials" className="text-gray-300 hover:text-orange-400 transition-colors duration-200 font-medium">Specials</a>
            <a href="#about" className="text-gray-300 hover:text-orange-400 transition-colors duration-200 font-medium">About</a>
            <a href="#contact" className="text-gray-300 hover:text-orange-400 transition-colors duration-200 font-medium">Contact</a>
          </nav>
          
          <div className="flex items-center space-x-2">
            <button 
              onClick={onCartClick}
              className="relative p-3 text-gray-300 hover:text-orange-400 hover:bg-orange-500/10 rounded-full transition-all duration-200 group"
            >
              <ShoppingCart className="h-6 w-6 group-hover:scale-110 transition-transform duration-200" />
              {cartItemsCount > 0 && (
                <span className="absolute -top-1 -right-1 bg-orange-500 text-white text-xs rounded-full h-5 w-5 flex items-center justify-center animate-bounce-gentle font-bold">
                  {cartItemsCount}
                </span>
              )}
            </button>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;