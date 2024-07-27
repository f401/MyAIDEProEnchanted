.class public Landroidj/support/v4/app/NotificationCompat$Action;
.super Landroidj/support/v4/app/NotificationCompatBase$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/NotificationCompat$Action$Builder;,
        Landroidj/support/v4/app/NotificationCompat$Action$Extender;,
        Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field private mAllowGeneratedReplies:Z

.field final mExtras:Landroid/os/Bundle;

.field private final mRemoteInputs:[Landroidj/support/v4/app/RemoteInput;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$Action$1;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$Action$1;-><init>()V

    sput-object v0, Landroidj/support/v4/app/NotificationCompat$Action;->FACTORY:Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 11

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidj/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidj/support/v4/app/RemoteInput;Z)V

    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidj/support/v4/app/RemoteInput;Z)V
    .registers 8

    invoke-direct {p0}, Landroidj/support/v4/app/NotificationCompatBase$Action;-><init>()V

    iput p1, p0, Landroidj/support/v4/app/NotificationCompat$Action;->icon:I

    invoke-static {p2}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroidj/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Landroidj/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    iput-object p5, p0, Landroidj/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroidj/support/v4/app/RemoteInput;

    iput-boolean p6, p0, Landroidj/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    return-void

    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getAllowGeneratedReplies()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/NotificationCompat$Action;->icon:I

    return v0
.end method

.method public getRemoteInputs()[Landroidj/support/v4/app/RemoteInput;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroidj/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public bridge synthetic getRemoteInputs()[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .registers 2

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroidj/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    return-object v0
.end method
