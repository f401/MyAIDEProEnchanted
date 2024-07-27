.class Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;
.super Ljava/lang/Object;
.source "DemuxOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/DemuxOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferInfo"
.end annotation


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private crSeen:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->crSeen:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/DemuxOutputStream$1;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;
    .registers 2

    .line 41
    iget-object v0, p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->buffer:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .registers 2

    .line 41
    iput-object p1, p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->buffer:Ljava/io/ByteArrayOutputStream;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->crSeen:Z

    return v0
.end method

.method static synthetic access$102(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Z)Z
    .registers 2

    .line 41
    iput-boolean p1, p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->crSeen:Z

    return p1
.end method
