.class public abstract Labcd/Hz$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract DW()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Labcd/Hz$d;->DW()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Labcd/Hz$c; {:try_start_0 .. :try_end_4} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_12
    .catchall {:try_start_0 .. :try_end_4} :catchall_f

    :try_start_4
    invoke-virtual {p0}, Labcd/Hz$d;->j6()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    new-instance v1, Labcd/Hz$c;

    invoke-direct {v1, v0}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v1

    :catchall_f
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1d

    :catch_12
    move-exception v0

    :try_start_13
    new-instance v1, Labcd/Hz$c;

    invoke-direct {v1, v0}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_19
    move-exception v0

    throw v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    const/4 v1, 0x1

    :goto_1d
    :try_start_1d
    invoke-virtual {p0}, Labcd/Hz$d;->j6()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_2a

    :catch_21
    move-exception v2

    if-nez v1, :cond_2a

    new-instance v0, Labcd/Hz$c;

    invoke-direct {v0, v2}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2a
    :goto_2a
    throw v0
.end method

.method protected abstract j6()V
.end method
