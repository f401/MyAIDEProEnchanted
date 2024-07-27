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
    .registers 7

    .line 55
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/dex/file/EncodedMember;-><init>(I)V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 63
    if-nez p3, :cond_1

    .line 64
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/CodeItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_1
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 67
    :goto_1
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/CodeItem;

    invoke-direct {v1, p1, p3, v0, p4}, Lcom/s1243808733/android/dx/dex/file/CodeItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/code/DalvCode;ZLcom/s1243808733/android/dx/rop/type/TypeList;)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
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
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    :cond_0
    return-void
.end method

.method public compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    return v0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)I

    move-result v0

    return v0
.end method

.method public debugPrint(Ljava/io/PrintWriter;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": abstract or native"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1, p2}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;II)I
    .registers 14
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)I

    move-result v4

    .line 164
    sub-int v5, v4, p3

    .line 165
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getAccessFlags()I

    move-result v6

    .line 166
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->code:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v7

    .line 167
    if-nez v7, :cond_1

    move v3, v1

    .line 168
    :goto_0
    and-int/lit16 v0, v6, 0x500

    if-eqz v0, :cond_2

    move v0, v1

    .line 175
    :goto_1
    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "code vs. access_flags mismatch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v2

    .line 167
    goto :goto_0

    :cond_2
    move v0, v2

    .line 168
    goto :goto_1

    .line 175
    :cond_3
    if-eqz v0, :cond_0

    .line 180
    :cond_4
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    const-string v0, "  [%x] %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v3, v1

    iget-object v8, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 183
    invoke-static {v5}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "    method_idx:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 185
    invoke-static {v6}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "    access_flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->methodString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 188
    invoke-static {v7}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "    code_off:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 192
    :cond_5
    invoke-interface {p2, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 193
    invoke-interface {p2, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 194
    invoke-interface {p2, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 196
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v2, 0x20

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->getClass()Ljava/lang/Class;

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
