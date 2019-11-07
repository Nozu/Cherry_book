# 改札機を表すクラス
class Gate
  STATIONS = [:umeda, :juso, :mikuni] # :nodoc:
  FARES = [150, 190] # :nodoc:

  # Gateオブジェクトの作成
  # ==== 引数
  # * +name+ - 駅名
  def initialize(name)
    @name = name
  end

  # 改札機を通って駅に入場する
  # ==== 引数
  # * +ticket+ - 切符
  def enter(ticket)
    ticket.stamp(@name)
  end

  # 改札機を通って駅から出場する
  # ==== 引数
  # * +ticket+ - 切符
  # ==== 戻り値
  def exit(ticket)
    fare = calc_fate(ticket)
    fare <= ticket.fare
  end

  def calc_fate(ticket)
    from = STATIONS.index(ticket.stamp_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance -1]
  end
end
