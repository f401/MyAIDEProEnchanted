.class public final Lcom/s1243808733/android/dx/dex/file/EncodedMethod;
.super Lcom/s1243808733/android/dx/dex/file/EncodedMember;
.source "EncodedMethod.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/dex/file/EncodedMember;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/dex/file/EncodedMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private final code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

.field private final method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;ILcom/s1243808733/android/dx/dex/code/DalvCode;Lcom/s1243808733/android/dx/rop/type/TypeList;)V
    .registers 6

    .line 55
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/dex/file/EncodedMember;-><init>(I)V

    if-eqz p1, :cond_1c

    .line 61
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-nez p3, :cond_d

    .line 64
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    goto :goto_1b

    :cond_d
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    .line 67
    :goto_14
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/CodeItem;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/s1243808733/android/dx/dex/file/CodeItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/code/DalvCode;ZLcom/s1243808733/android/dx/rop/type/TypeList;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    :goto_1b
    return-void

    .line 58
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 118
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getWordData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 121
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    .line 123
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    if-eqz v0, :cond_14

    .line 124
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    :cond_14
    return-void
.end method

.method public compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)I
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 32
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)I

    move-result p1

    return p1
.end method

.method public debugPrint(Ljava/io/PrintWriter;Z)V
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    if-nez v0, :cond_21

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": abstract or native"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 146
    :cond_21
    const-string v1, "  "

    invoke-virtual {v0, p1, v1, p2}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_26
    return-void
.end method

.method public encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;II)I
    .registers 11

    .line 163
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)I

    move-result p1

    sub-int p3, p1, p3

    .line 165
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getAccessFlags()I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    and-int/lit16 v5, v0, 0x500

    if-nez v5, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    if-ne v4, v5, :cond_9b

    .line 180
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 181
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 182
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v4

    .line 181
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, v3

    aput-object v4, v5, v2

    const-string p4, "  [%x] %s"

    invoke-static {p4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v3, p4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 183
    invoke-static {p3}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    method_idx:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-interface {p2, p4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 185
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    access_flags: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->methodString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-interface {p2, p4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 188
    invoke-static {v1}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    code_off:     "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-interface {p2, p4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 192
    :cond_91
    invoke-interface {p2, p3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 193
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 194
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    return p1

    .line 176
    :cond_9b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "code vs. access_flags mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 74
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 78
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)I

    move-result p1

    if-nez p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public final getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public final getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public final toHuman()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

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
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    if-eqz v2, :cond_38

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    :cond_38
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
