.class public abstract Lcom/s1243808733/android/dx/dex/file/MemberIdItem;
.super Lcom/s1243808733/android/dx/dex/file/IdItem;
.source "MemberIdItem.java"


# instance fields
.field private final cst:Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;)V
    .registers 3

    .line 39
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/IdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 41
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->cst:Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3

    .line 53
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/dex/file/IdItem;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 55
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    return-void
.end method

.method public final getRef()Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->cst:Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    return-object v0
.end method

.method protected abstract getTypoidIdx(Lcom/s1243808733/android/dx/dex/file/DexFile;)I
.end method

.method protected abstract getTypoidName()Ljava/lang/String;
.end method

.method public writeSize()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public final writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 10

    .line 62
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->cst:Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v0

    .line 66
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v1

    .line 67
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->getTypoidIdx(Lcom/s1243808733/android/dx/dex/file/DexFile;)I

    move-result p1

    .line 69
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->indexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->cst:Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  class_idx: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p2, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MemberIdItem;->getTypoidName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object v5, v6, v2

    const-string v2, "  %-10s %s"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  name_idx:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 77
    :cond_9f
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 78
    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 79
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
