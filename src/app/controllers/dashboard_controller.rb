class DashboardController < ApplicationController
  def show
    logger.debug("my debug log XXXX")
    logger.debug("my debug log XXXX2")
  end

  def create
    logger.debug(params)
    logger.debug(params[:example])
    logger.debug("start create")
    # 新規作成処理
    User.create(name: "TEST", password: "HOGEPIYO", profile: "XXXXXX")

    redirect_to action: :show
  end
  
  def update
    logger.debug(params)
    logger.debug(params[:example])
    logger.debug("start update")
    # 更新処理
    results = User.where(deleted_at: nil)
    results.each do |u|
      u.update(profile:"delete target user!!!", deleted_at: Time.now)
    end  

    redirect_to action: :show
  end

  def delete
    logger.debug(params)
    logger.debug(params[:example])
    logger.debug("start delete")
    # 削除処理
    results = User.where.not(deleted_at: nil).delete_all()
    redirect_to action: :show
  end

end
