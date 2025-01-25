.class Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;
.super Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.source "ClassWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SameLocals1StackItemFrame"
.end annotation


# instance fields
.field final offsetDelta:I

.field final stack:Lcom/sun/tools/javac/code/Type;


# direct methods
.method constructor <init>(ILcom/sun/tools/javac/code/Type;)V
    .registers 3

    .line 1317
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;-><init>()V

    .line 1318
    iput p1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->offsetDelta:I

    .line 1319
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->stack:Lcom/sun/tools/javac/code/Type;

    .line 1320
    return-void
.end method


# virtual methods
.method getFrameType()I
    .registers 3

    .line 1323
    iget v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->offsetDelta:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_9

    .line 1324
    add-int/lit8 v0, v0, 0x40

    .line 1323
    :goto_8
    return v0

    .line 1325
    :cond_9
    const/16 v0, 0xf7

    goto :goto_8
.end method

.method write(Lcom/sun/tools/javac/jvm/ClassWriter;)V
    .registers 5

    .line 1330
    invoke-super {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lcom/sun/tools/javac/jvm/ClassWriter;)V

    .line 1331
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->getFrameType()I

    move-result v0

    const/16 v1, 0xf7

    if-ne v0, v1, :cond_2e

    .line 1332
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->offsetDelta:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1333
    iget-boolean v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_2e

    .line 1334
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " offset_delta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->offsetDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1337
    :cond_2e
    iget-boolean v0, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_39

    .line 1338
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " stack[0]="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1340
    :cond_39
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;->stack:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeStackMapType(Lcom/sun/tools/javac/code/Type;)V

    .line 1341
    return-void
.end method
