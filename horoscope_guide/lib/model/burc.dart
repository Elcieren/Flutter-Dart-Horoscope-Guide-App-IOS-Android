class Burc{
  final String _burcAdi;
  final String _burcTarihi;
  final String _burc_Detay;
  final String _burcKucukResim;
  final String _burcBuyukResim;
  get burcAdi => this._burcAdi;
  get burcTarihi => this._burcTarihi;
  get burc_Detay => this._burc_Detay;
  get burcKucukResim => this._burcKucukResim;
  get burcBuyukResim => this._burcBuyukResim;

 

  Burc(this._burcAdi, this._burcTarihi, this._burc_Detay, this._burcKucukResim, this._burcBuyukResim);

  @override
  String toString() {
    // TODO: implement toString
    return '$_burcAdi - $_burcBuyukResim';
  }
}