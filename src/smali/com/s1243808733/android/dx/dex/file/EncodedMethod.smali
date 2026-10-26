.class public final Lcom/s1243808733/android/dx/dex/file/EncodedMethod;
.super Lcom/s1243808733/android/dx/dex/file/EncodedMember;
.source "EncodedMethod.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/dex/file/EncodedMember;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/dex/file/EncodedMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private final code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

.field private final method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;ILcom/s1243808733/android/dx/dex/code/DalvCode;Lcom/s1243808733/android/dx/rop/type/TypeList;)V
    .locals 2

    .line 55
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/dex/file/EncodedMember;-><init>(I)V

    if-eqz p1, :cond_2

    .line 61
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-nez p3, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 67
    :goto_1
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/CodeItem;

    invoke-direct {v1, p1, p3, v0, p4}, Lcom/s1243808733/android/dx/dex/file/CodeItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/code/DalvCode;ZLcom/s1243808733/android/dx/rop/type/TypeList;)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 3

    .line 118
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getWordData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    .line 123
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    :cond_0
    return-void
.end method

.method public compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)I
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 32
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)I

    move-result v0

    return v0
.end method

.method public debugPrint(Ljava/io/PrintWriter;Z)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": abstract or native"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    :cond_0
    const-string v1, "  "

    invoke-virtual {v0, p1, v1, p2}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;II)I
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)I

    move-result v4

    sub-int v5, v4, p3

    .line 165
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getAccessFlags()I

    move-result v6

    .line 166
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v7

    if-eqz v7, :cond_1

    move v3, v1

    :goto_0
    and-int/lit16 v0, v6, 0x500

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-ne v3, v0, :cond_3

    .line 180
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 182
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v3, "  [%x] %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v0, v8, v1

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 183
    invoke-static {v5}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    method_idx:   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 185
    invoke-static {v6}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    access_flags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->methodString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 188
    invoke-static {v7}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    code_off:     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 192
    :cond_0
    invoke-interface {p2, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 193
    invoke-interface {p2, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 194
    invoke-interface {p2, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    return v4

    :cond_1
    move v3, v2

    .line 166
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 176
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "code vs. access_flags mismatch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    .line 74
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public final getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
