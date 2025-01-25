.class public final Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;
.super Lcom/s1243808733/android/dx/dex/file/IndexedItem;
.source "ProtoIdItem.java"


# instance fields
.field private parameterTypes:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

.field private final prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

.field private final shortForm:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;-><init>()V

    if-eqz p1, :cond_22

    .line 53
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 54
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->makeShortForm(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortForm:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 56
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x0

    goto :goto_1f

    .line 58
    :cond_19
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/TypeListItem;-><init>(Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    move-object p1, v0

    :goto_1f
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    return-void

    .line 50
    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static makeShortForm(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 5

    .line 68
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortFormCharFor(Lcom/s1243808733/android/dx/rop/type/Type;)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_1b
    if-ge p0, v1, :cond_2b

    .line 75
    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortFormCharFor(Lcom/s1243808733/android/dx/rop/type/Type;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1b

    .line 78
    :cond_2b
    new-instance p0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static shortFormCharFor(Lcom/s1243808733/android/dx/rop/type/Type;)C
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5b

    if-ne p0, v0, :cond_f

    const/16 p0, 0x4c

    :cond_f
    return p0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 5

    .line 112
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeLists()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 116
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    .line 117
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortForm:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    if-eqz v0, :cond_26

    .line 120
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    :cond_26
    return-void
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 100
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 11

    .line 127
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortForm:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v0

    .line 128
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object p1

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result p1

    .line 129
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v1

    .line 131
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, " proto("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_47
    if-ge v6, v4, :cond_5e

    if-eqz v6, :cond_50

    .line 141
    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_50
    invoke-virtual {v3, v6}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 146
    :cond_5e
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->indexString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  shorty_idx:      "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortForm:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 149
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    const/4 v4, 0x4

    invoke-interface {p2, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "  return_type_idx: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 151
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {p2, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  parameters_off:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 155
    :cond_e0
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 156
    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 157
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
