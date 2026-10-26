.class public final Lcom/s1243808733/android/dx/dex/file/UniformListItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "UniformListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
        ">",
        "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;"
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x4


# instance fields
.field private final itemType:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/ItemType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/ItemType;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-static {p2}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->getAlignment(Ljava/util/List;)I

    move-result v0

    invoke-static {p2}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->writeSize(Ljava/util/List;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_0

    .line 60
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->itemType:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "itemType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAlignment(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
            ">;)I"
        }
    .end annotation

    .line 75
    const/4 v1, 0x4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 81
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "items == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "items.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private headerSize()I
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->getAlignment()I

    move-result v0

    return v0
.end method

.method private static writeSize(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/s1243808733/android/dx/dex/file/OffsettedItem;",
            ">;)I"
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v0

    mul-int/2addr v0, v1

    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->getAlignment(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    .line 121
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    return-object v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->itemType:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .locals 8

    const/4 v0, -0x1

    .line 158
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->headerSize()I

    move-result v1

    add-int v4, p2, v1

    .line 164
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v2, 0x1

    move v1, v0

    move v3, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    .line 165
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v5

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v3

    const/4 v2, 0x0

    move v1, v5

    .line 181
    :cond_0
    invoke-virtual {v0, p1, v4}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->place(Lcom/s1243808733/android/dx/dex/file/Section;I)I

    move-result v0

    add-int/2addr v0, v5

    move v4, v0

    goto :goto_0

    .line 168
    :cond_1
    if-ne v5, v1, :cond_2

    .line 175
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v7

    if-eq v7, v3, :cond_0

    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "item alignment mismatch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "item size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 5

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 139
    :goto_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 137
    :cond_0
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    :cond_1
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 190
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->offsetString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->typeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 195
    :cond_0
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 197
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    .line 198
    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    goto :goto_0

    :cond_1
    return-void
.end method
