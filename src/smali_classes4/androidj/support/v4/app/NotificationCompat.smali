.class public Landroidj/support/v4/app/NotificationCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/NotificationCompat$Action;,
        Landroidj/support/v4/app/NotificationCompat$Action$Builder;,
        Landroidj/support/v4/app/NotificationCompat$Action$Extender;,
        Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;,
        Landroidj/support/v4/app/NotificationCompat$BigPictureStyle;,
        Landroidj/support/v4/app/NotificationCompat$BigTextStyle;,
        Landroidj/support/v4/app/NotificationCompat$Builder;,
        Landroidj/support/v4/app/NotificationCompat$BuilderExtender;,
        Landroidj/support/v4/app/NotificationCompat$CarExtender;,
        Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;,
        Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;,
        Landroidj/support/v4/app/NotificationCompat$Extender;,
        Landroidj/support/v4/app/NotificationCompat$InboxStyle;,
        Landroidj/support/v4/app/NotificationCompat$MessagingStyle;,
        Landroidj/support/v4/app/NotificationCompat$MessagingStyle$Message;,
        Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;,
        Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplApi20;,
        Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplApi21;,
        Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplApi24;,
        Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplBase;,
        Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb;,
        Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich;,
        Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;,
        Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;,
        Landroidj/support/v4/app/NotificationCompat$NotificationVisibility;,
        Landroidj/support/v4/app/NotificationCompat$Style;,
        Landroidj/support/v4/app/NotificationCompat$WearableExtender;
    }
.end annotation


# static fields
.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final COLOR_DEFAULT:I = 0x0
    .annotation build Landroidj/support/annotation/ColorInt;
    .end annotation
.end field

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field static final IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroidj/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplApi24;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplApi24;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplApi21;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplApi21;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_d

    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2a

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplApi20;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplApi20;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_d

    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_38

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_d

    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_46

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_d

    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_54

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_d

    :cond_54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_62

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_d

    :cond_62
    new-instance v0, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplBase;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addActionsToBuilder(Landroidj/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/app/NotificationBuilderWithActions;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/NotificationCompat$Action;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/NotificationCompat$Action;

    invoke-interface {p0, v0}, Landroidj/support/v4/app/NotificationBuilderWithActions;->addAction(Landroidj/support/v4/app/NotificationCompatBase$Action;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method static addStyleToBuilderApi24(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroidj/support/v4/app/NotificationCompat$Style;)V
    .registers 12

    if-eqz p1, :cond_63

    instance-of v0, p1, Landroidj/support/v4/app/NotificationCompat$MessagingStyle;

    if-eqz v0, :cond_64

    check-cast p1, Landroidj/support/v4/app/NotificationCompat$MessagingStyle;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Landroidj/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/NotificationCompat$MessagingStyle$Message;

    invoke-virtual {v0}, Landroidj/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidj/support/v4/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidj/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidj/support/v4/app/NotificationCompat$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidj/support/v4/app/NotificationCompat$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_5b
    iget-object v1, p1, Landroidj/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroidj/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroidj/support/v4/app/NotificationCompatApi24;->addMessagingStyle(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_63
    :goto_63
    return-void

    :cond_64
    invoke-static {p0, p1}, Landroidj/support/v4/app/NotificationCompat;->addStyleToBuilderJellybean(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroidj/support/v4/app/NotificationCompat$Style;)V

    goto :goto_63
.end method

.method static addStyleToBuilderJellybean(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroidj/support/v4/app/NotificationCompat$Style;)V
    .registers 9

    if-eqz p1, :cond_13

    instance-of v0, p1, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;

    if-eqz v0, :cond_14

    check-cast p1, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;

    iget-object v0, p1, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    iget-object v2, p1, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidj/support/v4/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroidj/support/v4/app/NotificationCompatJellybean;->addBigTextStyle(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    instance-of v0, p1, Landroidj/support/v4/app/NotificationCompat$InboxStyle;

    if-eqz v0, :cond_26

    check-cast p1, Landroidj/support/v4/app/NotificationCompat$InboxStyle;

    iget-object v0, p1, Landroidj/support/v4/app/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroidj/support/v4/app/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    iget-object v2, p1, Landroidj/support/v4/app/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidj/support/v4/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroidj/support/v4/app/NotificationCompatJellybean;->addInboxStyle(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_13

    :cond_26
    instance-of v0, p1, Landroidj/support/v4/app/NotificationCompat$BigPictureStyle;

    if-eqz v0, :cond_13

    check-cast p1, Landroidj/support/v4/app/NotificationCompat$BigPictureStyle;

    iget-object v1, p1, Landroidj/support/v4/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroidj/support/v4/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    iget-object v3, p1, Landroidj/support/v4/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroidj/support/v4/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroidj/support/v4/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroidj/support/v4/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroidj/support/v4/app/NotificationCompatJellybean;->addBigPictureStyle(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_13
.end method

.method public static getAction(Landroid/app/Notification;I)Landroidj/support/v4/app/NotificationCompat$Action;
    .registers 3

    sget-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->getAction(Landroid/app/Notification;I)Landroidj/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .registers 2

    sget-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->getActionCount(Landroid/app/Notification;)I

    move-result v0

    return v0
.end method

.method public static getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->getCategory(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 2

    sget-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->getLocalOnly(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method

.method static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .registers 6

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, [Landroid/app/Notification;

    if-nez v1, :cond_a

    if-nez v0, :cond_d

    :cond_a
    check-cast v0, [Landroid/app/Notification;

    :goto_c
    return-object v0

    :cond_d
    array-length v1, v0

    new-array v2, v1, [Landroid/app/Notification;

    const/4 v1, 0x0

    move v3, v1

    :goto_12
    array-length v1, v0

    if-ge v3, v1, :cond_1f

    aget-object v1, v0, v3

    check-cast v1, Landroid/app/Notification;

    aput-object v1, v2, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_12

    :cond_1f
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    move-object v0, v2

    goto :goto_c
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .registers 2

    sget-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    invoke-interface {v0, p0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method
