.class public final Lcom/s1243808733/android/dx/dex/file/MethodIdItem;
.super Lcom/s1243808733/android/dx/dex/file/MemberIdItem;
.source "MethodIdItem.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3

    .line 43
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 45
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getProtoIds()Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MethodIdItem;->getMethodRef()Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->intern(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;

    return-void
.end method

.method public getMethodRef()Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MethodIdItem;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    return-object v0
.end method

.method protected getTypoidIdx(Lcom/s1243808733/android/dx/dex/file/DexFile;)I
    .registers 3

    .line 61
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getProtoIds()Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MethodIdItem;->getMethodRef()Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Prototype;)I

    move-result p1

    return p1
.end method

.method protected getTypoidName()Ljava/lang/String;
    .registers 2

    .line 68
    const-string v0, "proto_idx"

    return-object v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 37
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method
