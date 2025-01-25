.class public final Lcom/s1243808733/android/dx/cf/code/ByteBlockList;
.super Lcom/s1243808733/android/dx/util/LabeledList;
.source "ByteBlockList.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/LabeledList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/cf/code/ByteBlock;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    return-object p1
.end method

.method public labelToBlock(I)Lcom/s1243808733/android/dx/cf/code/ByteBlock;
    .registers 4

    .line 55
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->indexOfLabel(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 62
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    move-result-object p1

    return-object p1

    .line 58
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no such label: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILcom/s1243808733/android/dx/cf/code/ByteBlock;)V
    .registers 3

    .line 72
    invoke-super {p0, p1, p2}, Lcom/s1243808733/android/dx/util/LabeledList;->set(ILcom/s1243808733/android/dx/util/LabeledItem;)V

    return-void
.end method
