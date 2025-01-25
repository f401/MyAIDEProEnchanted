.class Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;
.super Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.source "ClassWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FullFrame"
.end annotation


# instance fields
.field final locals:[Lcom/sun/tools/javac/code/Type;

.field final offsetDelta:I

.field final stack:[Lcom/sun/tools/javac/code/Type;


# direct methods
.method constructor <init>(I[Lcom/sun/tools/javac/code/Type;[Lcom/sun/tools/javac/code/Type;)V
    .registers 4

    .line 1401
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;-><init>()V

    .line 1402
    iput p1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->offsetDelta:I

    .line 1403
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    .line 1404
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    .line 1405
    return-void
.end method


# virtual methods
.method getFrameType()I
    .registers 2

    .line 1408
    const/16 v0, 0xff

    return v0
.end method

.method write(Lcom/sun/tools/javac/jvm/ClassWriter;)V
    .registers 7

    const/4 v1, 0x0

    .line 1413
    invoke-super {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lcom/sun/tools/javac/jvm/ClassWriter;)V

    .line 1414
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->offsetDelta:I

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1415
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    array-length v2, v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1416
    iget-boolean v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_48

    .line 1417
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " offset_delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->offsetDelta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1418
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " nlocals="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_48
    move v0, v1

    .line 1420
    :goto_49
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_77

    .line 1421
    iget-boolean v2, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v2, :cond_6d

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " locals["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1422
    :cond_6d
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeStackMapType(Lcom/sun/tools/javac/code/Type;)V

    .line 1420
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 1425
    :cond_77
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    array-length v2, v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1426
    iget-boolean v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_9c

    .line 1427
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " nstack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1429
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    array-length v0, v0

    if-ge v1, v0, :cond_ca

    .line 1430
    iget-boolean v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_c0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1431
    :cond_c0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeStackMapType(Lcom/sun/tools/javac/code/Type;)V

    .line 1429
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    .line 1433
    :cond_ca
    return-void
.end method
