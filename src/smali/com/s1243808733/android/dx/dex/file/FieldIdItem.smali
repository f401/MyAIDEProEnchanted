.class public final Lcom/s1243808733/android/dx/dex/file/FieldIdItem;
.super Lcom/s1243808733/android/dx/dex/file/MemberIdItem;
.source "FieldIdItem.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 45
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/FieldIdItem;->getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    return-void
.end method

.method public getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/FieldIdItem;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    return-object v0
.end method

.method protected getTypoidIdx(Lcom/s1243808733/android/dx/dex/file/DexFile;)I
    .locals 2

    .line 61
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/FieldIdItem;->getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v0

    return v0
.end method

.method protected getTypoidName()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "type_idx"

    return-object v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .locals 1

    .line 37
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method
