.class public final Lcom/s1243808733/android/dx/cf/code/ByteBlock;
.super Ljava/lang/Object;
.source "ByteBlock.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/LabeledItem;


# instance fields
.field private final catches:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

.field private final end:I

.field private final label:I

.field private final start:I

.field private final successors:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>(IIILcom/s1243808733/android/dx/util/IntList;Lcom/s1243808733/android/dx/cf/code/ByteCatchList;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_6

    if-ltz p2, :cond_5

    if-le p3, p2, :cond_4

    if-eqz p4, :cond_3

    .line 73
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 75
    invoke-virtual {p4, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "successors["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p4, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p5, :cond_2

    .line 86
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->label:I

    .line 87
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->start:I

    .line 88
    iput p3, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->end:I

    .line 89
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    .line 90
    iput-object p5, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->catches:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    return-void

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targets == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end <= start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->catches:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->end:I

    return v0
.end method

.method public getLabel()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->label:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->start:I

    return v0
.end method

.method public getSuccessors()Lcom/s1243808733/android/dx/util/IntList;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->label:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->start:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->end:I

    .line 97
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
