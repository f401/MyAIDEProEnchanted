.class public final Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;
.super Lcom/s1243808733/android/dx/dex/file/IndexedItem;
.source "ProtoIdItem.java"


# instance fields
.field private parameterTypes:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

.field private final prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

.field private final shortForm:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;-><init>()V

    if-eqz p1, :cond_1

    .line 53
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 54
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->makeShortForm(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortForm:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 56
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    return-void

    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/file/TypeListItem;-><init>(Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static makeShortForm(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/cst/CstString;
    .locals 5

    .line 68
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortFormCharFor(Lcom/s1243808733/android/dx/rop/type/Type;)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 75
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortFormCharFor(Lcom/s1243808733/android/dx/rop/type/Type;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static shortFormCharFor(Lcom/s1243808733/android/dx/rop/type/Type;)C
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const/16 v0, 0x4c

    :cond_0
    return v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 4

    .line 112
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeLists()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    .line 117
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortForm:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    :cond_0
    return-void
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .locals 1

    .line 100
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x4

    .line 127
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortForm:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v2

    .line 128
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v3

    .line 129
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->parameterTypes:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v4

    .line 131
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v0, " proto("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v7

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_1

    if-eqz v0, :cond_0

    .line 141
    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->indexString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  shorty_idx:      "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " // "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->shortForm:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 149
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-interface {p2, v9, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  return_type_idx: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " // "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 151
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-interface {p2, v9, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  parameters_off:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 155
    :cond_2
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 156
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 157
    invoke-interface {p2, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
