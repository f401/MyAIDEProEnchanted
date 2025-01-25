.class public Ljava2/util/Base64;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava2/util/Base64$Decoder;,
        Ljava2/util/Base64$Encoder;
    }
.end annotation


# static fields
.field static decoder:Ljava2/util/Base64$Decoder;

.field static encoder:Ljava2/util/Base64$Encoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoder()Ljava2/util/Base64$Decoder;
    .registers 2

    sget-object v0, Ljava2/util/Base64;->decoder:Ljava2/util/Base64$Decoder;

    if-nez v0, :cond_15

    const-class v0, Ljava2/util/Base64$Decoder;

    monitor-enter v0

    :try_start_7
    sget-object v0, Ljava2/util/Base64;->decoder:Ljava2/util/Base64$Decoder;

    if-nez v0, :cond_12

    new-instance v0, Ljava2/util/Base64$Decoder;

    invoke-direct {v0}, Ljava2/util/Base64$Decoder;-><init>()V

    sput-object v0, Ljava2/util/Base64;->decoder:Ljava2/util/Base64$Decoder;

    :cond_12
    const-class v0, Ljava2/util/Base64$Decoder;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_18

    :cond_15
    sget-object v0, Ljava2/util/Base64;->decoder:Ljava2/util/Base64$Decoder;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    const-class v1, Ljava2/util/Base64$Decoder;

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_18

    throw v0
.end method

.method public static getEncoder()Ljava2/util/Base64$Encoder;
    .registers 2

    sget-object v0, Ljava2/util/Base64;->encoder:Ljava2/util/Base64$Encoder;

    if-nez v0, :cond_15

    const-class v0, Ljava2/util/Base64$Encoder;

    monitor-enter v0

    :try_start_7
    sget-object v0, Ljava2/util/Base64;->encoder:Ljava2/util/Base64$Encoder;

    if-nez v0, :cond_12

    new-instance v0, Ljava2/util/Base64$Encoder;

    invoke-direct {v0}, Ljava2/util/Base64$Encoder;-><init>()V

    sput-object v0, Ljava2/util/Base64;->encoder:Ljava2/util/Base64$Encoder;

    :cond_12
    const-class v0, Ljava2/util/Base64$Encoder;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_18

    :cond_15
    sget-object v0, Ljava2/util/Base64;->encoder:Ljava2/util/Base64$Encoder;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    const-class v1, Ljava2/util/Base64$Encoder;

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_18

    throw v0
.end method
