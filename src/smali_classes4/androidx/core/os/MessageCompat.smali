.class public final Landroidx/core/os/MessageCompat;
.super Ljava/lang/Object;


# static fields
.field private static sTryIsAsynchronous:Z = true

.field private static sTrySetAsynchronous:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAsynchronous(Landroid/os/Message;)Z
    .registers 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_c

    invoke-virtual {p0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    :cond_b
    :goto_b
    return v0

    :cond_c
    sget-boolean v1, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    if-eqz v1, :cond_b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_b

    :try_start_16
    invoke-virtual {p0}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_19
    .catch Ljava/lang/NoSuchMethodError; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v0

    goto :goto_b

    :catch_1b
    move-exception v1

    sput-boolean v0, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    goto :goto_b
.end method

.method public static setAsynchronous(Landroid/os/Message;Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    sget-boolean v0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    if-eqz v0, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    :try_start_14
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodError; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_9

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    goto :goto_9
.end method
