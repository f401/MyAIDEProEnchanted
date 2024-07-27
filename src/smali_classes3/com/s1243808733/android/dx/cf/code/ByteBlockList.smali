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
    .registers 3

    .line 45
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    return-object v0
.end method

.method public labelToBlock(I)Lcom/s1243808733/android/dx/cf/code/ByteBlock;
    .registers 5

    .line 55
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->indexOfLabel(I)I

    move-result v0

    .line 57
    if-gez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "no such label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    move-result-object v0

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/cf/code/ByteBlock;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/cf/code/ByteBlock;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1, p2}, Lcom/s1243808733/android/dx/util/LabeledList;->set(ILcom/s1243808733/android/dx/util/LabeledItem;)V

    return-void
.end method
