import React from 'react';

const Hero: React.FC = () => {
  return (
    <section className="relative bg-gradient-to-br from-orange-100 via-orange-50 to-white py-24 px-4 overflow-hidden">
      {/* Background Pattern */}
      <div className="absolute inset-0 opacity-20">
        <div className="absolute top-0 left-0 w-full h-full bg-gradient-to-r from-orange-500/30 to-transparent"></div>
        <div className="absolute bottom-0 right-0 w-96 h-96 bg-orange-500/20 rounded-full blur-3xl"></div>
      </div>
      
      <div className="relative max-w-6xl mx-auto text-center">
        <div className="mb-8 animate-fade-in">
          <div className="inline-flex items-center justify-center w-20 h-20 bg-gradient-to-br from-orange-500 to-orange-600 rounded-full mb-6">
            <span className="text-white font-bold text-2xl">CG</span>
          </div>
        </div>
        
        <h1 className="text-6xl md:text-7xl font-inter font-black text-black mb-6 animate-fade-in drop-shadow-lg">
          City Gleam
          <span className="block text-orange-600 mt-2 text-4xl md:text-5xl font-light">
            Urban Dining Experience
          </span>
        </h1>
        
        <p className="text-xl md:text-2xl text-gray-700 mb-12 max-w-3xl mx-auto animate-slide-up leading-relaxed">
          Where modern cuisine meets urban sophistication. 
          <br className="hidden md:block" />
          Experience the vibrant flavors of the city.
        </p>
        
        <div className="flex flex-col sm:flex-row gap-4 justify-center items-center animate-slide-up">
          <a 
            href="#menu"
            className="bg-gradient-to-r from-orange-500 to-orange-600 text-white px-10 py-4 rounded-full hover:from-orange-600 hover:to-orange-700 transition-all duration-300 transform hover:scale-105 font-semibold text-lg shadow-lg hover:shadow-orange-500/25"
          >
            Explore Menu
          </a>
          <a 
            href="#specials"
            className="border-2 border-orange-500 text-orange-400 px-10 py-4 rounded-full hover:bg-orange-500 hover:text-white transition-all duration-300 transform hover:scale-105 font-semibold text-lg"
          >
            View Specials
          </a>
        </div>
        
        {/* Stats */}
        <div className="mt-16 grid grid-cols-1 md:grid-cols-3 gap-8 max-w-2xl mx-auto animate-slide-up">
          <div className="text-center">
            <div className="text-3xl font-bold text-orange-600 mb-2">50+</div>
            <div className="text-gray-600">Menu Items</div>
          </div>
          <div className="text-center">
            <div className="text-3xl font-bold text-orange-600 mb-2">24/7</div>
            <div className="text-gray-600">Service</div>
          </div>
          <div className="text-center">
            <div className="text-3xl font-bold text-orange-600 mb-2">5★</div>
            <div className="text-gray-600">Rating</div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Hero;