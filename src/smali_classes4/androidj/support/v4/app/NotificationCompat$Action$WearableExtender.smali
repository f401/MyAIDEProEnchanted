.class public final Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/NotificationCompat$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_DISPLAY_INLINE:I = 0x4

.field private static final FLAG_HINT_LAUNCHES_ACTIVITY:I = 0x2

.field private static final KEY_CANCEL_LABEL:Ljava/lang/String; = "cancelLabel"

.field private static final KEY_CONFIRM_LABEL:Ljava/lang/String; = "confirmLabel"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_IN_PROGRESS_LABEL:Ljava/lang/String; = "inProgressLabel"


# instance fields
.field private mCancelLabel:Ljava/lang/CharSequence;

.field private mConfirmLabel:Ljava/lang/CharSequence;

.field private mFlags:I

.field private mInProgressLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroidj/support/v4/app/NotificationCompat$Action;)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string v1, "flags"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const-string v1, "inProgressLabel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    const-string v1, "confirmLabel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    const-string v1, "cancelLabel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    :cond_32
    return-void
.end method

.method private setFlag(IZ)V
    .registers 5

    if-eqz p2, :cond_8

    iget v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    :goto_7
    return-void

    :cond_8
    iget v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    goto :goto_7
.end method


# virtual methods
.method public clone()Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 3

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;-><init>()V

    iget v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    iput v1, v0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    iget-object v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->clone()Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroidj/support/v4/app/NotificationCompat$Action$Builder;)Landroidj/support/v4/app/NotificationCompat$Action$Builder;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    const-string v1, "flags"

    iget v2, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    const-string v1, "inProgressLabel"

    iget-object v2, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1c
    iget-object v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_27

    const-string v1, "confirmLabel"

    iget-object v2, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_27
    iget-object v1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_32

    const-string v1, "cancelLabel"

    iget-object v2, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_32
    invoke-virtual {p1}, Landroidj/support/v4/app/NotificationCompat$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getCancelLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getConfirmLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHintDisplayActionInline()Z
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getHintLaunchesActivity()Z
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getInProgressLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAvailableOffline()Z
    .registers 2

    iget v0, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setAvailableOffline(Z)Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setCancelLabel(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setConfirmLabel(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setHintDisplayActionInline(Z)Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setHintLaunchesActivity(Z)Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setInProgressLabel(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
