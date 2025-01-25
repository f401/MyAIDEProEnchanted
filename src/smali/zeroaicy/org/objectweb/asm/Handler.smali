.class final Lzeroaicy/org/objectweb/asm/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# instance fields
.field final catchType:I

.field final catchTypeDescriptor:Ljava/lang/String;

.field final endPc:Lzeroaicy/org/objectweb/asm/Label;

.field final handlerPc:Lzeroaicy/org/objectweb/asm/Label;

.field nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

.field final startPc:Lzeroaicy/org/objectweb/asm/Label;


# direct methods
.method constructor <init>(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 10

    .line 106
    iget-object v3, p1, Lzeroaicy/org/objectweb/asm/Handler;->handlerPc:Lzeroaicy/org/objectweb/asm/Label;

    iget v4, p1, Lzeroaicy/org/objectweb/asm/Handler;->catchType:I

    iget-object v5, p1, Lzeroaicy/org/objectweb/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Handler;-><init>(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;ILjava/lang/String;)V

    .line 107
    iget-object p1, p1, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    return-void
.end method

.method constructor <init>(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;ILjava/lang/String;)V
    .registers 6

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/Handler;->startPc:Lzeroaicy/org/objectweb/asm/Label;

    .line 92
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/Handler;->endPc:Lzeroaicy/org/objectweb/asm/Label;

    .line 93
    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/Handler;->handlerPc:Lzeroaicy/org/objectweb/asm/Label;

    .line 94
    iput p4, p0, Lzeroaicy/org/objectweb/asm/Handler;->catchType:I

    .line 95
    iput-object p5, p0, Lzeroaicy/org/objectweb/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    return-void
.end method

.method static getExceptionTableLength(Lzeroaicy/org/objectweb/asm/Handler;)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-nez p0, :cond_4

    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 163
    iget-object p0, p0, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    goto :goto_1
.end method

.method static getExceptionTableSize(Lzeroaicy/org/objectweb/asm/Handler;)I
    .registers 1

    .line 176
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Handler;->getExceptionTableLength(Lzeroaicy/org/objectweb/asm/Handler;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static putExceptionTable(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Handler;",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 187
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Handler;->getExceptionTableLength(Lzeroaicy/org/objectweb/asm/Handler;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_7
    if-nez p0, :cond_a

    return-void

    .line 190
    :cond_a
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Handler;->startPc:Lzeroaicy/org/objectweb/asm/Label;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Handler;->endPc:Lzeroaicy/org/objectweb/asm/Label;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Handler;->handlerPc:Lzeroaicy/org/objectweb/asm/Label;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Handler;->catchType:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 195
    iget-object p0, p0, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    goto :goto_7
.end method

.method static removeRange(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Handler;
    .registers 7

    if-nez p0, :cond_7

    .line 121
    const/4 p0, 0x0

    move-object p1, p0

    check-cast p1, Lzeroaicy/org/objectweb/asm/Handler;

    return-object p0

    .line 123
    :cond_7
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    invoke-static {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/Handler;->removeRange(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Handler;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    .line 125
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Handler;->startPc:Lzeroaicy/org/objectweb/asm/Label;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    .line 126
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Handler;->endPc:Lzeroaicy/org/objectweb/asm/Label;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    .line 127
    iget v2, p1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    if-nez p2, :cond_1f

    const v3, 0x7fffffff

    goto :goto_21

    .line 128
    :cond_1f
    iget v3, p2, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    :goto_21
    if-ge v2, v1, :cond_50

    if-gt v3, v0, :cond_26

    goto :goto_50

    :cond_26
    if-gt v2, v0, :cond_35

    if-lt v3, v1, :cond_2d

    .line 136
    iget-object p0, p0, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    return-object p0

    .line 139
    :cond_2d
    new-instance p1, Lzeroaicy/org/objectweb/asm/Handler;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Handler;->endPc:Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p1, p0, p2, v0}, Lzeroaicy/org/objectweb/asm/Handler;-><init>(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;)V

    return-object p1

    :cond_35
    if-lt v3, v1, :cond_3f

    .line 143
    new-instance p2, Lzeroaicy/org/objectweb/asm/Handler;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Handler;->startPc:Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p2, p0, v0, p1}, Lzeroaicy/org/objectweb/asm/Handler;-><init>(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;)V

    return-object p2

    .line 147
    :cond_3f
    new-instance v0, Lzeroaicy/org/objectweb/asm/Handler;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Handler;->endPc:Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v0, p0, p2, v1}, Lzeroaicy/org/objectweb/asm/Handler;-><init>(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;)V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    .line 148
    new-instance p2, Lzeroaicy/org/objectweb/asm/Handler;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Handler;->startPc:Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p2, p0, v0, p1}, Lzeroaicy/org/objectweb/asm/Handler;-><init>(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;)V

    return-object p2

    :cond_50
    :goto_50
    return-object p0
.end method
