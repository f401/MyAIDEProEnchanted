.class public final Lcom/s1243808733/android/dx/dex/file/EncodedField;
.super Lcom/s1243808733/android/dx/dex/file/EncodedMember;
.source "EncodedField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/dex/file/EncodedMember;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/dex/file/EncodedField;",
        ">;"
    }
.end annotation


# instance fields
.field private final field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;I)V
    .registers 3

    .line 42
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/dex/file/EncodedMember;-><init>(I)V

    if-eqz p1, :cond_8

    .line 53
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    return-void

    .line 45
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3

    .line 102
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    return-void
.end method

.method public compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedField;)I
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 30
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedField;)I

    move-result p1

    return p1
.end method

.method public debugPrint(Ljava/io/PrintWriter;Z)V
    .registers 3

    .line 122
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;II)I
    .registers 9

    .line 138
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)I

    move-result p1

    sub-int p3, p1, p3

    .line 140
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->getAccessFlags()I

    move-result v0

    .line 142
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 143
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    .line 144
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    .line 143
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 p4, 0x1

    aput-object v1, v2, p4

    const-string p4, "  [%x] %s"

    invoke-static {p4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v3, p4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 145
    invoke-static {p3}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    field_idx:    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-interface {p2, p4, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 147
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    access_flags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->fieldString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {p2, p4, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 152
    :cond_64
    invoke-interface {p2, p3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    .line 153
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 65
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 69
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->compareTo(Lcom/s1243808733/android/dx/dex/file/EncodedField;)I

    move-result p1

    if-nez p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public getRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->hashCode()I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedField;->field:Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
