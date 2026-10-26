.class public final Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "ClassDefsSection.java"


# instance fields
.field private final classDefs:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/dex/file/ClassDefItem;",
            ">;"
        }
    .end annotation
.end field

.field private orderedDefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/ClassDefItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 2

    .line 48
    const-string v0, "class_defs"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 50
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    return-void
.end method

.method private orderItems0(Lcom/s1243808733/android/dx/rop/type/Type;II)I
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return p2

    .line 160
    :cond_1
    if-ltz p3, :cond_4

    add-int/lit8 v2, p3, -0x1

    .line 170
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getSuperclass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 173
    invoke-direct {p0, v1, p2, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderItems0(Lcom/s1243808733/android/dx/rop/type/Type;II)I

    move-result p2

    .line 176
    :cond_2
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getInterfaces()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v3

    .line 177
    invoke-interface {v3}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    .line 179
    invoke-interface {v3, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v5

    invoke-direct {p0, v5, p2, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderItems0(Lcom/s1243808733/android/dx/rop/type/Type;II)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    :cond_3
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->setIndex(I)V

    .line 183
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 165
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class circularity with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)V
    .locals 3

    .line 113
    :try_start_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->throwIfPrepared()V

    .line 121
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clazz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .locals 2

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->throwIfNotPrepared()V

    .line 73
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    if-eqz v0, :cond_0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public items()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/s1243808733/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method protected orderItems()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderedDefs:Ljava/util/ArrayList;

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    .line 143
    sub-int v4, v2, v1

    invoke-direct {p0, v0, v1, v4}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->orderItems0(Lcom/s1243808733/android/dx/rop/type/Type;II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeHeaderPart(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 5

    const/4 v4, 0x4

    .line 89
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->throwIfNotPrepared()V

    .line 91
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->classDefs:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 94
    :goto_0
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class_defs_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class_defs_off:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 99
    :cond_0
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 100
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->getFileOffset()I

    move-result v0

    goto :goto_0
.end method
