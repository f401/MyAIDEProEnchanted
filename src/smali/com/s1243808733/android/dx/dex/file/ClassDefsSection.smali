.class public final Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "ClassDefsSection.java"


# instance fields
.field private final classDefs:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/dex/file/ClassDefItem;",
            ">;"
        }
    .end annotation
.end field

.field private orderedDefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/ClassDefItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 48
    const-string v0, "class_defs"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 50
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    .line 51
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    return-void
.end method

.method private orderItems0(Lcom/s1243808733/android/dx/rop/type/Type;II)I
    .registers 8

    .line 158
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    if-eqz v0, :cond_58

    .line 160
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_58

    :cond_11
    if-ltz p3, :cond_44

    add-int/lit8 p3, p3, -0x1

    .line 170
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getSuperclass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 172
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderItems0(Lcom/s1243808733/android/dx/rop/type/Type;II)I

    move-result p2

    .line 176
    :cond_23
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getInterfaces()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_39

    .line 179
    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderItems0(Lcom/s1243808733/android/dx/rop/type/Type;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 182
    :cond_39
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->setIndex(I)V

    .line 183
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    return p2

    .line 165
    :cond_44
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "class circularity with "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    :goto_58
    return p2
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)V
    .registers 4

    .line 113
    :try_start_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_2d

    .line 119
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->throwIfPrepared()V

    .line 121
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    .line 125
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 122
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "already added: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :catch_2d
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "clazz == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .registers 3

    if-eqz p1, :cond_1e

    .line 71
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->throwIfNotPrepared()V

    .line 73
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    if-eqz p1, :cond_16

    return-object p1

    .line 77
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public items()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/s1243808733/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    return-object v0

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    .line 142
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/type/Type;

    .line 143
    sub-int v4, v0, v2

    invoke-direct {p0, v3, v2, v4}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderItems0(Lcom/s1243808733/android/dx/rop/type/Type;II)I

    move-result v2

    goto :goto_18

    :cond_2b
    return-void
.end method

.method public writeHeaderPart(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 7

    .line 89
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->throwIfNotPrepared()V

    .line 91
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    .line 92
    :cond_d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->getFileOffset()I

    move-result v1

    .line 94
    :goto_11
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class_defs_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "class_defs_off:  "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 99
    :cond_42
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 100
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
