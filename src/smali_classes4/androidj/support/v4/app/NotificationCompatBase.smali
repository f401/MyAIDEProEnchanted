.class public Landroidj/support/v4/app/NotificationCompatBase;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x9
.end annotation

.annotation build Landroidj/support/annotation/RestrictTo;
    value = {
        .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/NotificationCompatBase$Action;,
        Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;,
        Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation;,
        Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;
    }
.end annotation


# static fields
.field private static sSetLatestEventInfo:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 11

    sget-object v0, Landroidj/support/v4/app/NotificationCompatBase;->sSetLatestEventInfo:Ljava/lang/reflect/Method;

    if-nez v0, :cond_25

    :try_start_4
    const-class v0, Landroid/app/Notification;

    const-string v1, "setLatestEventInfo"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidj/support/v4/app/NotificationCompatBase;->sSetLatestEventInfo:Ljava/lang/reflect/Method;
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_25} :catch_3c

    :cond_25
    :try_start_25
    sget-object v0, Landroidj/support/v4/app/NotificationCompatBase;->sSetLatestEventInfo:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_39} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_39} :catch_4a

    iput-object p5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    return-object p0

    :catch_3c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_43
    move-exception v0

    :goto_44
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4a
    move-exception v0

    goto :goto_44
.end method
