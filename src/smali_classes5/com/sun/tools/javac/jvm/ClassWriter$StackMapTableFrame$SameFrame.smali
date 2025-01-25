.class Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;
.super Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.source "ClassWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SameFrame"
.end annotation


# instance fields
.field final offsetDelta:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1293
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;-><init>()V

    .line 1294
    iput p1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;->offsetDelta:I

    .line 1295
    return-void
.end method


# virtual methods
.method getFrameType()I
    .registers 3

    .line 1298
    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;->offsetDelta:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_7

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xfb

    goto :goto_6
.end method

.method write(Lcom/sun/tools/javac/jvm/ClassWriter;)V
    .registers 5

    .line 1303
    invoke-super {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lcom/sun/tools/javac/jvm/ClassWriter;)V

    .line 1304
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;->getFrameType()I

    move-result v0

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_2e

    .line 1305
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;->offsetDelta:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1306
    iget-boolean v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_2e

    .line 1307
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " offset_delta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;->offsetDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1310
    :cond_2e
    return-void
.end method
