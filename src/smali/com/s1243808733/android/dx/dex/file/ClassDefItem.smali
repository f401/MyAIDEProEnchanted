.class public final Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
.super Lcom/s1243808733/android/dx/dex/file/IndexedItem;
.source "ClassDefItem.java"


# instance fields
.field private final accessFlags:I

.field private annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

.field private final classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

.field private interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

.field private final sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private staticValuesItem:Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

.field private final superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private final thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .locals 2

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    .line 102
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 103
    iput p2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->accessFlags:I

    .line 104
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 106
    invoke-interface {p4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    .line 107
    iput-object p5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 108
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    .line 109
    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    .line 110
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-direct {v0, p4}, Lcom/s1243808733/android/dx/dex/file/TypeListItem;-><init>(Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "interfaces == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "thisClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 7

    .line 128
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getByteData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getWordData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v2

    .line 131
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeLists()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v3

    .line 132
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v4

    .line 134
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    .line 136
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getClassData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v5

    .line 138
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    .line 140
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->getStaticValuesConstant()Lcom/s1243808733/android/dx/rop/cst/CstArray;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 142
    new-instance v6, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    invoke-direct {v6, v5}, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray;)V

    .line 143
    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->isInternable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    .line 163
    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    goto :goto_0
.end method

.method public addDirectMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->addDirectMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V

    return-void
.end method

.method public addFieldAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->addFieldAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public addInstanceField(Lcom/s1243808733/android/dx/dex/file/EncodedField;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->addInstanceField(Lcom/s1243808733/android/dx/dex/file/EncodedField;)V

    return-void
.end method

.method public addMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->addMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public addParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->addParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public addStaticField(Lcom/s1243808733/android/dx/dex/file/EncodedField;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->addStaticField(Lcom/s1243808733/android/dx/dex/file/EncodedField;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method public addVirtualMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->addVirtualMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V

    return-void
.end method

.method public debugPrint(Ljava/io/Writer;Z)V
    .locals 4

    .line 396
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Writers;->printWriterFor(Ljava/io/Writer;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  accessFlags: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->accessFlags:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  superclass: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "  interfaces: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    const-string v1, "<none>"

    if-nez v0, :cond_0

    const-string v0, "<none>"

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "  sourceFile: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->debugPrint(Ljava/io/Writer;Z)V

    .line 407
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->debugPrint(Ljava/io/PrintWriter;)V

    .line 409
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 404
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAccessFlags()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->accessFlags:I

    return v0
.end method

.method public getInterfaces()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 258
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->getList()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v0

    goto :goto_0
.end method

.method public getMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->getMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->getMethods()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->getParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    return-object v0
.end method

.method public getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public getSuperclass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .locals 1

    .line 116
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public setClassAnnotations(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->setClassAnnotations(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public writeSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 13

    .line 171
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v4

    .line 172
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v6

    .line 174
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v7

    .line 177
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 179
    :goto_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v3, :cond_2

    .line 181
    :goto_2
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 182
    :goto_3
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    .line 183
    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v8

    if-eqz v4, :cond_6

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->indexString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  class_idx:           "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  access_flags:        "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->accessFlags:I

    .line 189
    invoke-static {v5}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->classString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    const/4 v5, 0x4

    invoke-interface {p2, v5, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 190
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v4, "  superclass_idx:      "

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    const-string v5, "<none>"

    if-nez v4, :cond_4

    const-string v4, "<none>"

    .line 192
    :goto_4
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    const/4 v9, 0x4

    invoke-interface {p2, v9, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "  interfaces_off:      "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v9, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    if-eqz v7, :cond_5

    .line 195
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->getList()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v9

    .line 196
    invoke-interface {v9}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v10

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v10, :cond_5

    .line 198
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "    "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v12

    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v12, v11}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 175
    :cond_0
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v0

    goto/16 :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->getAbsoluteOffset()I

    move-result v1

    goto/16 :goto_1

    .line 180
    :cond_2
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v2

    goto/16 :goto_2

    .line 181
    :cond_3
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->getAbsoluteOffset()I

    move-result v3

    goto/16 :goto_3

    .line 192
    :cond_4
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 201
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v4, "  source_file_idx:     "

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v4, :cond_7

    move-object v4, v5

    .line 203
    :goto_6
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 201
    const/4 v5, 0x4

    invoke-interface {p2, v5, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  annotations_off:     "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  class_data_off:      "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  static_values_off:   "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    const/4 v5, 0x4

    invoke-interface {p2, v5, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 210
    :cond_6
    invoke-interface {p2, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 211
    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->accessFlags:I

    invoke-interface {p2, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 212
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 213
    invoke-interface {p2, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 214
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 215
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 216
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 217
    invoke-interface {p2, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void

    .line 203
    :cond_7
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v4

    goto :goto_6
.end method
