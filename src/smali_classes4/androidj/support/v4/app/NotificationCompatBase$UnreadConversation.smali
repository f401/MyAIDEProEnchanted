.class public abstract Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompatBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UnreadConversation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getLatestTimestamp()J
.end method

.method abstract getMessages()[Ljava/lang/String;
.end method

.method abstract getParticipant()Ljava/lang/String;
.end method

.method abstract getParticipants()[Ljava/lang/String;
.end method

.method abstract getReadPendingIntent()Landroid/app/PendingIntent;
.end method

.method abstract getRemoteInput()Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;
.end method

.method abstract getReplyPendingIntent()Landroid/app/PendingIntent;
.end method
