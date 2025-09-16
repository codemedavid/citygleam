import React from 'react';
import { Trash2, Plus, Minus, ArrowLeft } from 'lucide-react';
import { CartItem } from '../types';

interface CartProps {
  cartItems: CartItem[];
  updateQuantity: (id: string, quantity: number) => void;
  removeFromCart: (id: string) => void;
  clearCart: () => void;
  getTotalPrice: () => number;
  onContinueShopping: () => void;
  onCheckout: () => void;
}

const Cart: React.FC<CartProps> = ({
  cartItems,
  updateQuantity,
  removeFromCart,
  clearCart,
  getTotalPrice,
  onContinueShopping,
  onCheckout
}) => {
  if (cartItems.length === 0) {
    return (
      <div className="max-w-4xl mx-auto px-4 py-12">
        <div className="text-center py-16">
          <div className="text-6xl mb-4 text-orange-400">🛒</div>
          <h2 className="text-3xl font-inter font-bold text-white mb-2">Your cart is empty</h2>
          <p className="text-gray-300 mb-8 text-lg">Add some delicious items to get started!</p>
          <button
            onClick={onContinueShopping}
            className="bg-gradient-to-r from-orange-500 to-orange-600 text-white px-8 py-4 rounded-full hover:from-orange-600 hover:to-orange-700 transition-all duration-200 font-semibold text-lg shadow-lg hover:shadow-orange-500/25"
          >
            Browse Menu
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="max-w-4xl mx-auto px-4 py-8 bg-black text-white">
      <div className="flex items-center justify-between mb-8">
        <button
          onClick={onContinueShopping}
          className="flex items-center space-x-2 text-gray-300 hover:text-orange-400 transition-colors duration-200 font-medium"
        >
          <ArrowLeft className="h-5 w-5" />
          <span>Continue Shopping</span>
        </button>
        <h1 className="text-3xl font-inter font-bold text-white">Your Cart</h1>
        <button
          onClick={clearCart}
          className="text-orange-400 hover:text-orange-300 transition-colors duration-200 font-medium"
        >
          Clear All
        </button>
      </div>

      <div className="bg-gray-900 rounded-2xl shadow-lg overflow-hidden mb-8 border border-gray-700">
        {cartItems.map((item, index) => (
          <div key={item.id} className={`p-6 ${index !== cartItems.length - 1 ? 'border-b border-orange-600' : ''}`}>
            <div className="flex items-center justify-between">
              <div className="flex-1">
                <h3 className="text-lg font-inter font-bold text-white mb-1">{item.name}</h3>
                {item.selectedVariation && (
                  <p className="text-sm text-gray-400 mb-1">Size: {item.selectedVariation.name}</p>
                )}
                {item.selectedAddOns && item.selectedAddOns.length > 0 && (
                  <p className="text-sm text-gray-400 mb-1">
                    Add-ons: {item.selectedAddOns.map(addOn => 
                      addOn.quantity && addOn.quantity > 1 
                        ? `${addOn.name} x${addOn.quantity}`
                        : addOn.name
                    ).join(', ')}
                  </p>
                )}
                <p className="text-lg font-bold text-orange-400">₱{item.totalPrice} each</p>
              </div>
              
              <div className="flex items-center space-x-4 ml-4">
                <div className="flex items-center space-x-3 bg-orange-900 rounded-full p-1 border border-orange-700">
                  <button
                    onClick={() => updateQuantity(item.id, item.quantity - 1)}
                    className="p-2 hover:bg-orange-800 rounded-full transition-colors duration-200 text-orange-400"
                  >
                    <Minus className="h-4 w-4" />
                  </button>
                  <span className="font-bold text-white min-w-[32px] text-center">{item.quantity}</span>
                  <button
                    onClick={() => updateQuantity(item.id, item.quantity + 1)}
                    className="p-2 hover:bg-orange-800 rounded-full transition-colors duration-200 text-orange-400"
                  >
                    <Plus className="h-4 w-4" />
                  </button>
                </div>
                
                <div className="text-right">
                  <p className="text-lg font-bold text-orange-400">₱{item.totalPrice * item.quantity}</p>
                </div>
                
                <button
                  onClick={() => removeFromCart(item.id)}
                  className="p-2 text-orange-400 hover:text-orange-300 hover:bg-orange-900/50 rounded-full transition-all duration-200"
                >
                  <Trash2 className="h-4 w-4" />
                </button>
              </div>
            </div>
          </div>
        ))}
      </div>

      <div className="bg-gray-900 rounded-2xl shadow-lg p-6 border border-gray-700">
        <div className="flex items-center justify-between text-2xl font-inter font-bold text-white mb-6">
          <span>Total:</span>
          <span className="text-orange-400">₱{getTotalPrice().toFixed(2)}</span>
        </div>
        
        <button
          onClick={onCheckout}
          className="w-full bg-gradient-to-r from-orange-500 to-orange-600 text-white py-4 rounded-xl hover:from-orange-600 hover:to-orange-700 transition-all duration-200 transform hover:scale-[1.02] font-semibold text-lg shadow-lg hover:shadow-orange-500/25"
        >
          Proceed to Checkout
        </button>
      </div>
    </div>
  );
};

export default Cart;