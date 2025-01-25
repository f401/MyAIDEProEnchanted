.class interface abstract Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "NotificationCompatImpl"
.end annotation


# virtual methods
.method public abstract build(Landroidj/support/v4/app/NotificationCompat$Builder;Landroidj/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;
.end method

.method public abstract getAction(Landroid/app/Notification;I)Landroidj/support/v4/app/NotificationCompat$Action;
.end method

.method public abstract getActionCount(Landroid/app/Notification;)I
.end method

.method public abstract getActionsFromParcelableArrayList(Ljava/util/ArrayList;)[Landroidj/support/v4/app/NotificationCompat$Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)[",
            "Landroidj/support/v4/app/NotificationCompat$Action;"
        }
    .end annotation
.end method

.method public abstract getBundleForUnreadConversation(Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation;)Landroid/os/Bundle;
.end method

.method public abstract getCategory(Landroid/app/Notification;)Ljava/lang/String;
.end method

.method public abstract getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
.end method

.method public abstract getGroup(Landroid/app/Notification;)Ljava/lang/String;
.end method

.method public abstract getLocalOnly(Landroid/app/Notification;)Z
.end method

.method public abstract getParcelableArrayListForActions([Landroidj/support/v4/app/NotificationCompat$Action;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidj/support/v4/app/NotificationCompat$Action;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSortKey(Landroid/app/Notification;)Ljava/lang/String;
.end method

.method public abstract getUnreadConversationFromBundle(Landroid/os/Bundle;Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation;
.end method

.method public abstract isGroupSummary(Landroid/app/Notification;)Z
.end method
