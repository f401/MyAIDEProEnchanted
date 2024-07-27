.class Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;
.super Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.source "ClassWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppendFrame"
.end annotation


# instance fields
.field final frameType:I

.field final locals:[Lcom/sun/tools/javac/code/Type;

.field final offsetDelta:I


# direct methods
.method constructor <init>(II[Lcom/sun/tools/javac/code/Type;)V
    .registers 4

    .line 1372
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;-><init>()V

    .line 1373
    iput p1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->frameType:I

    .line 1374
    iput p2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->offsetDelta:I

    .line 1375
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    .line 1376
    return-void
.end method


# virtual methods
.method getFrameType()I
    .registers 2

    .line 1379
    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->frameType:I

    return v0
.end method

.method write(Lcom/sun/tools/javac/jvm/ClassWriter;)V
    .registers 6

    .line 1384
    invoke-super {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lcom/sun/tools/javac/jvm/ClassWriter;)V

    .line 1385
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->offsetDelta:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1386
    iget-boolean v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_0

    .line 1387
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " offset_delta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->offsetDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1389
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1390
    iget-boolean v1, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " locals["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1391
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeStackMapType(Lcom/sun/tools/javac/code/Type;)V

    .line 1389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1393
    :cond_2
    return-void
.end method
