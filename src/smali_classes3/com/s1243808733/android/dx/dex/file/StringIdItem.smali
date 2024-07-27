.class public final Lcom/s1243808733/android/dx/dex/file/StringIdItem;
.super Lcom/s1243808733/android/dx/dex/file/IndexedItem;
.source "StringIdItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private data:Lcom/s1243808733/android/dx/dex/file/StringDataItem;

.field private final value:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 46
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/StringDataItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->data:Lcom/s1243808733/android/dx/dex/file/StringDataItem;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->data:Lcom/s1243808733/android/dx/dex/file/StringDataItem;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/StringDataItem;

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/dex/file/StringDataItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->data:Lcom/s1243808733/android/dx/dex/file/StringDataItem;

    .line 92
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->data:Lcom/s1243808733/android/dx/dex/file/StringDataItem;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 69
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 70
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 52
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_0
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 57
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getData()Lcom/s1243808733/android/dx/dex/file/StringDataItem;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->data:Lcom/s1243808733/android/dx/dex/file/StringDataItem;

    return-object v0
.end method

.method public getValue()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->hashCode()I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 76
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 82
    const/4 v0, 0x4

    return v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 8
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

    .line 99
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->data:Lcom/s1243808733/android/dx/dex/file/StringDataItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/StringDataItem;->getAbsoluteOffset()I

    move-result v0

    .line 101
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->indexString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/StringIdItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstString;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 103
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "  string_data_off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 106
    :cond_0
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
