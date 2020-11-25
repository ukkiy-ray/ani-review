module NotificationsHelper
  def notification_form(notification)

    @visitor = notification.visitor

    case notification.action
    when 'follow'
      tag.a(notification.visitor.nickname, href: user_path(@visitor)) + 'さんがあなたをフォローしました'

    when 'like'
      tag.a(notification.visitor.nickname, href: user_path(@visitor)) + 'さんが' + tag.a('あなたの投稿', href: post_path(notification.post_id)) + 'にいいねしました'
      
    end
  end
end
