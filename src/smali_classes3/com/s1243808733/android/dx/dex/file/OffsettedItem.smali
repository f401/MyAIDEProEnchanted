.class public abstract Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.super Lcom/s1243808733/android/dx/dex/file/Item;
.source "OffsettedItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/dex/file/Item;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private addedTo:Lcom/s1243808733/android/dx/dex/file/Section;

.field private final alignment:I

.field private offset:I

.field private writeSize:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    const/4 v1, -0x1

    .line 70
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/Item;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->validateAlignment(I)V

    .line 73
    if-ge p2, v1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSize < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->alignment:I

    .line 78
    iput p2, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeSize:I

    .line 79
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/Section;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->addedTo:Lcom/s1243808733/android/dx/dex/file/Section;

    .line 80
    iput v1, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->offset:I

    return-void
.end method

.method public static getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 2

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final compareTo(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v1

    .line 123
    if-eq v0, v1, :cond_1

    .line 124
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/ItemType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v0

    goto :goto_0
.end method

.method public final bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->compareTo(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v0

    return v0
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 4

    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    .line 97
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v2

    .line 98
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v3

    .line 100
    if-ne v2, v3, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final getAbsoluteOffset()I
    .registers 3

    .line 205
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->offset:I

    if-gez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "offset not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->addedTo:Lcom/s1243808733/android/dx/dex/file/Section;

    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->offset:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/Section;->getAbsoluteOffset(I)I

    move-result v0

    return v0
.end method

.method public final getAlignment()I
    .registers 2

    .line 255
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->alignment:I

    return v0
.end method

.method public final getRelativeOffset()I
    .registers 3

    .line 190
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->offset:I

    if-gez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "offset not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->offset:I

    return v0
.end method

.method public final offsetString()Ljava/lang/String;
    .registers 4

    .line 265
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final place(Lcom/s1243808733/android/dx/dex/file/Section;I)I
    .registers 5

    .line 225
    if-nez p1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addedTo == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    if-gez p2, :cond_1

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->addedTo:Lcom/s1243808733/android/dx/dex/file/Section;

    if-eqz v0, :cond_2

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already written"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_2
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->alignment:I

    add-int/lit8 v0, v0, -0x1

    .line 238
    xor-int/lit8 v1, v0, -0x1

    add-int/2addr v0, p2

    and-int/2addr v0, v1

    .line 240
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->addedTo:Lcom/s1243808733/android/dx/dex/file/Section;

    .line 241
    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->offset:I

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V

    .line 245
    return v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/Section;",
            "I)V"
        }
    .end annotation

    return-void
.end method

.method public final setWriteSize(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 138
    if-gez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeSize:I

    if-ltz v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize already set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeSize:I

    return-void
.end method

.method public abstract toHuman()Ljava/lang/String;
.end method

.method public final writeSize()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 156
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeSize:I

    if-gez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeSize:I

    return v0
.end method

.method public final writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 166
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->alignment:I

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->alignTo(I)V

    .line 169
    :try_start_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeSize:I

    if-gez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :catch_0
    move-exception v0

    .line 175
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "...while writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0

    .line 173
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->assertCursor(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    return-void
.end method

.method protected abstract writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation
.end method
