.class public abstract Landroidj/support/v4/app/NotificationCompatBase$Action;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompatBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActionIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getAllowGeneratedReplies()Z
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getIcon()I
.end method

.method public abstract getRemoteInputs()[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method
