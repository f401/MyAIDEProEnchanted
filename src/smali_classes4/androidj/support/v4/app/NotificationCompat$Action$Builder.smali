.class public final Landroidj/support/v4/app/NotificationCompat$Action$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mIntent:Landroid/app/PendingIntent;

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
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

    invoke-direct/range {v0 .. v6}, Landroidj/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidj/support/v4/app/RemoteInput;Z)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidj/support/v4/app/RemoteInput;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    iput p1, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mIcon:I

    invoke-static {p2}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    if-nez p5, :cond_1a

    const/4 v0, 0x0

    :goto_15
    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    iput-boolean p6, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    return-void

    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_15
.end method

.method public constructor <init>(Landroidj/support/v4/app/NotificationCompat$Action;)V
    .registers 9

    iget v1, p1, Landroidj/support/v4/app/NotificationCompat$Action;->icon:I

    iget-object v2, p1, Landroidj/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidj/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v4, Landroid/os/Bundle;

    iget-object v0, p1, Landroidj/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroidj/support/v4/app/RemoteInput;

    move-result-object v5

    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidj/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidj/support/v4/app/RemoteInput;Z)V

    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroidj/support/v4/app/NotificationCompat$Action$Builder;
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    return-object p0
.end method

.method public addRemoteInput(Landroidj/support/v4/app/RemoteInput;)Landroidj/support/v4/app/NotificationCompat$Action$Builder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroidj/support/v4/app/NotificationCompat$Action;
    .registers 8

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidj/support/v4/app/RemoteInput;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidj/support/v4/app/RemoteInput;

    move-object v5, v0

    :goto_15
    new-instance v0, Landroidj/support/v4/app/NotificationCompat$Action;

    iget v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mIcon:I

    iget-object v2, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v6, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    invoke-direct/range {v0 .. v6}, Landroidj/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidj/support/v4/app/RemoteInput;Z)V

    return-object v0

    :cond_25
    const/4 v5, 0x0

    goto :goto_15
.end method

.method public extend(Landroidj/support/v4/app/NotificationCompat$Action$Extender;)Landroidj/support/v4/app/NotificationCompat$Action$Builder;
    .registers 2

    invoke-interface {p1, p0}, Landroidj/support/v4/app/NotificationCompat$Action$Extender;->extend(Landroidj/support/v4/app/NotificationCompat$Action$Builder;)Landroidj/support/v4/app/NotificationCompat$Action$Builder;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Landroidj/support/v4/app/NotificationCompat$Action$Builder;
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    return-object p0
.end method
