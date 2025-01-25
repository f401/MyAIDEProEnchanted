.class public Lcom/baidu/mobstat/ax;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[B
    .registers 4

    sget-object v0, Lcom/baidu/mobstat/ax;->a:[B

    if-nez v0, :cond_38

    const-class v0, Lcom/baidu/mobstat/ax;

    monitor-enter v0

    :try_start_7
    sget-object v0, Lcom/baidu/mobstat/ax;->a:[B

    if-nez v0, :cond_30

    invoke-static {}, Lcom/baidu/mobstat/be;->b()[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/baidu/mobstat/at;

    invoke-direct {v0}, Lcom/baidu/mobstat/at;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2}, Lcom/baidu/mobstat/at;->a(I[B[B)V

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_3c

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/at;->a([B)[B

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/ax;->a:[B

    goto :goto_30

    :catchall_2e
    move-exception v0

    goto :goto_34

    :cond_30
    :goto_30
    const-class v0, Lcom/baidu/mobstat/ax;

    monitor-exit v0

    goto :goto_38

    :goto_34
    const-class v1, Lcom/baidu/mobstat/ax;

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_2e

    throw v0

    :cond_38
    :goto_38
    sget-object v0, Lcom/baidu/mobstat/ax;->a:[B

    return-object v0

    nop

    :array_3c
    .array-data 1
        -0x47t
        -0x64t
        -0x73t
        0x1at
        0x27t
        -0x7ct
        0xet
        0xet
        -0x1ft
        -0x2et
        -0x38t
        0x1t
        0x19t
        -0x7ft
        -0x63t
        -0x6bt
        -0x36t
        0x33t
        0x2et
        0xet
        0x44t
        -0x44t
        -0x13t
        0x1ct
        0x42t
        0x13t
        -0x71t
        0x5t
        0x19t
        -0xbt
        -0x7bt
        0x32t
    .end array-data
.end method
