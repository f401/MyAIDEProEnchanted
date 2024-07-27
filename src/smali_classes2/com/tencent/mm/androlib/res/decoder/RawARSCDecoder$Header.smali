.class public Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;
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

.field public final endPosition:I

.field public final headerSize:I

.field public final startPosition:I

.field public final type:S


# direct methods
.method public constructor <init>(SIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->type:S

    iput p2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->headerSize:I

    iput p3, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->chunkSize:I

    iput p4, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->startPosition:I

    add-int v0, p4, p3

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->endPosition:I

    return-void
.end method

.method public static read(Lcom/tencent/mm/util/ExtDataInput;Lorg/apache/commons/io/input/CountingInputStream;)Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/io/input/CountingInputStream;->getCount()I

    move-result v1

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;-><init>(SIII)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    const/4 v1, -0x1

    invoke-virtual {p1}, Lorg/apache/commons/io/input/CountingInputStream;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;-><init>(SIII)V

    goto :goto_0
.end method
