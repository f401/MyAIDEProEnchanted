.class public Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
.super Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    }
.end annotation


# static fields
.field static final FACTORY:Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;


# instance fields
.field private final mLatestTimestamp:J

.field private final mMessages:[Ljava/lang/String;

.field private final mParticipants:[Ljava/lang/String;

.field private final mReadPendingIntent:Landroid/app/PendingIntent;

.field private final mRemoteInput:Landroidj/support/v4/app/RemoteInput;

.field private final mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$1;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$1;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->FACTORY:Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;Landroidj/support/v4/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .registers 8

    invoke-direct {p0}, Landroidj/support/v4/app/NotificationCompatBase$UnreadConversation;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    iput-object p2, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mRemoteInput:Landroidj/support/v4/app/RemoteInput;

    iput-object p4, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    iput-wide p6, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-void
.end method


# virtual methods
.method public getLatestTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-wide v0
.end method

.method public getMessages()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getParticipants()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    return-object v0
.end method

.method public getReadPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRemoteInput()Landroidj/support/v4/app/RemoteInput;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mRemoteInput:Landroidj/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public bridge synthetic getRemoteInput()Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .registers 2

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getRemoteInput()Landroidj/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method public getReplyPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
