.class public final Landroidx/core/content/ContentResolverCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_27

    if-eqz p6, :cond_19

    :try_start_8
    invoke-virtual {p6}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v6

    :goto_c
    check-cast v6, Landroid/os/CancellationSignal;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1b

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const/4 v6, 0x0

    goto :goto_c

    :catch_1b
    move-exception v0

    instance-of v1, v0, Landroid/os/OperationCanceledException;

    if-eqz v1, :cond_26

    new-instance v0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v0

    :cond_26
    throw v0

    :cond_27
    if-eqz p6, :cond_2c

    invoke-virtual {p6}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    :cond_2c
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_18
.end method
