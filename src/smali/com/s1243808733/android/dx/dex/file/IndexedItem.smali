.class public abstract Lcom/s1243808733/android/dx/dex/file/IndexedItem;
.super Lcom/s1243808733/android/dx/dex/file/Item;
.source "IndexedItem.java"


# instance fields
.field private index:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/Item;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;->index:I

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .registers 3

    .line 50
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;->index:I

    if-ltz v0, :cond_5

    return v0

    .line 51
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index not yet set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasIndex()Z
    .registers 2

    .line 40
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;->index:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final indexString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setIndex(I)V
    .registers 4

    .line 65
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 69
    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;->index:I

    return-void

    .line 66
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "index already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
