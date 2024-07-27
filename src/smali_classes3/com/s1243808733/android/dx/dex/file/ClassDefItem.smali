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
    .registers 8

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;-><init>()V

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "thisClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    if-nez p4, :cond_1

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "interfaces == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 103
    iput p2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->accessFlags:I

    .line 104
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 105
    invoke-interface {p4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    :goto_0
    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    .line 107
    iput-object p5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 108
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    .line 109
    check-cast v1, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    .line 110
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    return-void

    .line 105
    :cond_2
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-direct {v0, p4}, Lcom/s1243808733/android/dx/dex/file/TypeListItem;-><init>(Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    goto :goto_0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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

    .line 141
    if-eqz v5, :cond_0

    .line 142
    new-instance v6, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    invoke-direct {v6, v5}, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray;)V

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/EncodedMethod;",
            ")V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->addDirectMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V

    return-void
.end method

.method public addFieldAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;",
            "Lcom/s1243808733/android/dx/rop/annotation/Annotations;",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->addFieldAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public addInstanceField(Lcom/s1243808733/android/dx/dex/file/EncodedField;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/EncodedField;",
            ")V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->addInstanceField(Lcom/s1243808733/android/dx/dex/file/EncodedField;)V

    return-void
.end method

.method public addMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;",
            "Lcom/s1243808733/android/dx/rop/annotation/Annotations;",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->addMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public addParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;",
            "Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->addParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public addStaticField(Lcom/s1243808733/android/dx/dex/file/EncodedField;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/EncodedField;",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->addStaticField(Lcom/s1243808733/android/dx/dex/file/EncodedField;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method public addVirtualMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/EncodedMethod;",
            ")V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->addVirtualMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V

    return-void
.end method

.method public debugPrint(Ljava/io/Writer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Z)V"
        }
    .end annotation

    .line 396
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Writers;->printWriterFor(Ljava/io/Writer;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 398
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "  accessFlags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->accessFlags:I

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "  superclass: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "  interfaces: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    if-nez v0, :cond_0

    const-string v0, "<none>"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "  sourceFile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_1

    const-string v0, "<none>"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->debugPrint(Ljava/io/Writer;Z)V

    .line 407
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->debugPrint(Ljava/io/PrintWriter;)V

    .line 409
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getAccessFlags()I
    .registers 2

    .line 235
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->accessFlags:I

    return v0
.end method

.method public getInterfaces()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->getList()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v0

    goto :goto_0
.end method

.method public getMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->getMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/util/ArrayList;
    .registers 2
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
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->getParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    return-object v0
.end method

.method public getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public getSuperclass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 116
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public setClassAnnotations(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/annotation/Annotations;",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->setClassAnnotations(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method public writeSize()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 122
    const/16 v0, 0x20

    return v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 171
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v4

    .line 172
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v5

    .line 174
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v1, :cond_2

    const/4 v0, -0x1

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v6

    .line 177
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 179
    :goto_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v2, :cond_4

    const/4 v2, -0x1

    .line 181
    :goto_2
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 182
    :goto_3
    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/s1243808733/android/dx/dex/file/EncodedArrayItem;

    invoke-static {v7}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v7

    .line 185
    if-eqz v4, :cond_1

    .line 186
    const/4 v4, 0x0

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->indexString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 187
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "  class_idx:           "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 188
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "  access_flags:        "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->accessFlags:I

    invoke-static {v9}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->classString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 190
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "  superclass_idx:      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " // "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v4, :cond_6

    const-string v4, "<none>"

    :goto_4
    const/4 v9, 0x4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v9, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 193
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "  interfaces_off:      "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 194
    if-eqz v6, :cond_0

    .line 195
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->interfaces:Lcom/s1243808733/android/dx/dex/file/TypeListItem;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/file/TypeListItem;->getList()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v8

    .line 196
    invoke-interface {v8}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v9

    .line 197
    const/4 v4, 0x0

    :goto_5
    if-lt v4, v9, :cond_7

    .line 201
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "  source_file_idx:     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " // "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v4, :cond_8

    const-string v4, "<none>"

    :goto_6
    const/4 v9, 0x4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v9, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 204
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "  annotations_off:     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 205
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "  class_data_off:      "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 206
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "  static_values_off:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 210
    :cond_1
    invoke-interface {p2, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 211
    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->accessFlags:I

    invoke-interface {p2, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 212
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 213
    invoke-interface {p2, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 214
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 215
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 216
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 217
    invoke-interface {p2, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v0

    goto/16 :goto_0

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->getAbsoluteOffset()I

    move-result v1

    goto/16 :goto_1

    .line 179
    :cond_4
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v2

    goto/16 :goto_2

    .line 181
    :cond_5
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->classData:Lcom/s1243808733/android/dx/dex/file/ClassDataItem;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->getAbsoluteOffset()I

    move-result v3

    goto/16 :goto_3

    .line 190
    :cond_6
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->superclass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 198
    :cond_7
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-interface {v8, v4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v12

    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v10, v11}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 201
    :cond_8
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6
.end method
