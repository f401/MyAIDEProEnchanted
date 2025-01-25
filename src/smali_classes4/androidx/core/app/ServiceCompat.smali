.class public final Landroidx/core/app/ServiceCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# static fields
.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_13

    :goto_f
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
