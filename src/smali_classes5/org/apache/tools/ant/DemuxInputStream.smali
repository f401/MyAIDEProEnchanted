.class public Lorg/apache/tools/ant/DemuxInputStream;
.super Ljava/io/InputStream;
.source "DemuxInputStream.java"


# static fields
.field private static final MASK_8BIT:I = 0xff


# instance fields
.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/tools/ant/DemuxInputStream;->project:Lorg/apache/tools/ant/Project;

    .line 46
    return-void
.end method


# virtual methods
.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 55
    new-array v1, v4, [B

    .line 56
    iget-object v2, p0, Lorg/apache/tools/ant/DemuxInputStream;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/tools/ant/Project;->demuxInput([BII)I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 59
    :goto_d
    return v0

    :cond_e
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_d
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/DemuxInputStream;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->demuxInput([BII)I

    move-result v0

    return v0
.end method
