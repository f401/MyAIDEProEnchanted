.class public final Lcom/s1243808733/android/dx/dex/file/TypeIdItem;
.super Lcom/s1243808733/android/dx/dex/file/IdItem;
.source "TypeIdItem.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/IdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    return-void
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .locals 1

    .line 41
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v1

    .line 63
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;->indexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  descriptor_idx: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 68
    :cond_0
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
