.class public final Landroidj/support/v4/app/NotificationCompat$CarExtender;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;,
        Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    }
.end annotation


# static fields
.field private static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"

.field private static final EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final TAG:Ljava/lang/String; = "CarExtender"


# instance fields
.field private mColor:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mUnreadConversation:Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    move-object v1, v0

    :goto_15
    if-eqz v1, :cond_c

    const-string v0, "large_icon"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    const-string v0, "app_color"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    const-string v0, "car_conversation"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    sget-object v2, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->FACTORY:Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;

    sget-object v3, Landroidj/support/v4/app/RemoteInput;->FACTORY:Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    invoke-interface {v1, v0, v2, v3}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->getUnreadConversationFromBundle(Landroid/os/Bundle;Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    goto :goto_c

    :cond_3e
    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.car.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    goto :goto_15
.end method


# virtual methods
.method public extend(Landroidj/support/v4/app/NotificationCompat$Builder;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_17

    const-string v1, "large_icon"

    iget-object v2, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_17
    iget v1, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    if-eqz v1, :cond_22

    const-string v1, "app_color"

    iget v2, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_22
    iget-object v1, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    if-eqz v1, :cond_33

    const-string v1, "car_conversation"

    sget-object v2, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    iget-object v3, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    invoke-interface {v2, v3}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->getBundleForUnreadConversation(Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_33
    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method public getColor()I
    .registers 2
    .annotation build Landroidj/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUnreadConversation()Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    return-object v0
.end method

.method public setColor(I)Landroidj/support/v4/app/NotificationCompat$CarExtender;
    .registers 2
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidj/support/v4/app/NotificationCompat$CarExtender;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setUnreadConversation(Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;)Landroidj/support/v4/app/NotificationCompat$CarExtender;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    return-object p0
.end method
