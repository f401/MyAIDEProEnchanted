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
    .registers 9

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_68

    if-ltz p2, :cond_60

    if-le p3, p2, :cond_58

    if-eqz p4, :cond_50

    .line 73
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_3b

    .line 75
    invoke-virtual {p4, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    if-ltz v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 76
    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "successors["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] == "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p4, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3b
    if-eqz p5, :cond_48

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
    :cond_48
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_50
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "targets == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end <= start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_71

    :goto_70
    throw p1

    :goto_71
    goto :goto_70
.end method


# virtual methods
.method public getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->catches:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    return-object v0
.end method

.method public getEnd()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->end:I

    return v0
.end method

.method public getLabel()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->label:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->start:I

    return v0
.end method

.method public getSuccessors()Lcom/s1243808733/android/dx/util/IntList;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

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
