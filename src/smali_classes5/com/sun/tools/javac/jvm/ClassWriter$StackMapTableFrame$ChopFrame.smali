.class Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;
.super Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.source "ClassWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChopFrame"
.end annotation


# instance fields
.field final frameType:I

.field final offsetDelta:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 1348
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;-><init>()V

    .line 1349
    iput p1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;->frameType:I

    .line 1350
    iput p2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;->offsetDelta:I

    .line 1351
    return-void
.end method


# virtual methods
.method getFrameType()I
    .registers 2

    .line 1354
    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;->frameType:I

    return v0
.end method

.method write(Lcom/sun/tools/javac/jvm/ClassWriter;)V
    .registers 5

    .line 1359
    invoke-super {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lcom/sun/tools/javac/jvm/ClassWriter;)V

    .line 1360
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;->offsetDelta:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1361
    iget-boolean v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_26

    .line 1362
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " offset_delta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;->offsetDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1364
    :cond_26
    return-void
.end method
