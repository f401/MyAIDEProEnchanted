.class public Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# static fields
.field public static final TYPE_LIBRARY:S = 0x203s

.field public static final TYPE_NONE:S = -0x1s

.field public static final TYPE_PACKAGE:S = 0x200s

.field public static final TYPE_SPEC_TYPE:S = 0x202s

.field public static final TYPE_TABLE:S = 0x2s

.field public static final TYPE_TYPE:S = 0x201s


# instance fields
.field public final chunkSize:I

.field public final type:S


# direct methods
.method public constructor <init>(SI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    iput p2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->chunkSize:I

    return-void
.end method

.method public static read(Lcom/tencent/mm/util/ExtDataInput;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v2

    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;-><init>(SI)V
    :try_end_10
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;-><init>(SI)V

    goto :goto_10
.end method

.method public static readAndWriteHeader(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;I)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeShort(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeShort(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    sub-int v2, v0, p2

    if-gtz v2, :cond_36

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "readAndWriteHeader size < 0: size=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;-><init>(SI)V

    :goto_35
    return-object v0

    :cond_36
    :try_start_36
    invoke-virtual {p1, v2}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V
    :try_end_39
    .catch Ljava/io/EOFException; {:try_start_36 .. :try_end_39} :catch_2e

    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;-><init>(SI)V

    goto :goto_35
.end method
