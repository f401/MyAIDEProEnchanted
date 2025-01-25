.class public final Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "AnnotationsDirectoryItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final ELEMENT_SIZE:I = 0x8

.field private static final HEADER_SIZE:I = 0x10


# instance fields
.field private classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

.field private fieldAnnotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;",
            ">;"
        }
    .end annotation
.end field

.field private methodAnnotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;",
            ">;"
        }
    .end annotation
.end field

.field private parameterAnnotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 58
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    .line 61
    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    .line 62
    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    .line 63
    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    return-void
.end method

.method private static listSize(Ljava/util/ArrayList;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 354
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 245
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getWordData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    if-eqz v1, :cond_10

    .line 248
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    .line 251
    :cond_10
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;

    .line 253
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_18

    .line 257
    :cond_28
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_40

    .line 258
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;

    .line 259
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_30

    .line 263
    :cond_40
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_58

    .line 264
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;

    .line 265
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_48

    :cond_58
    return-void
.end method

.method public addFieldAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 7

    .line 159
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    .line 163
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    new-instance v1, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;

    new-instance v2, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-direct {v2, p2, p3}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    invoke-direct {v1, p1, v2}, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 7

    .line 176
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    .line 180
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    new-instance v1, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;

    new-instance v2, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-direct {v2, p2, p3}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    invoke-direct {v1, p1, v2}, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 6

    .line 193
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    new-instance v1, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;

    invoke-direct {v1, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 3

    .line 120
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->isInternable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 124
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;

    .line 126
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->compareTo(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result p1

    return p1

    .line 121
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "uninternable instance"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method debugPrint(Ljava/io/PrintWriter;)V
    .registers 6

    .line 364
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    if-eqz v0, :cond_17

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  class annotations: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    :cond_17
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    const-string v1, "    "

    if-eqz v0, :cond_48

    .line 369
    const-string v0, "  field annotations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28

    .line 375
    :cond_48
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_77

    .line 376
    const-string v0, "  method annotations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_57

    .line 382
    :cond_77
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_a6

    .line 383
    const-string v0, "  parameter annotations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_86

    :cond_a6
    return-void
.end method

.method public getMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;
    .registers 6

    .line 208
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 212
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;

    .line 213
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->getMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 214
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object p1

    return-object p1

    :cond_25
    return-object v1
.end method

.method public getParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 233
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;

    .line 234
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->getMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 235
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->getAnnotationsList()Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object p1

    return-object p1

    :cond_25
    return-object v1
.end method

.method public hashCode()I
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 107
    :cond_6
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isInternable()Z
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 69
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 4

    .line 281
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->listSize(Ljava/util/ArrayList;)I

    move-result p1

    iget-object p2, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    .line 282
    invoke-static {p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->listSize(Ljava/util/ArrayList;)I

    move-result p2

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->listSize(Ljava/util/ArrayList;)I

    move-result v0

    .line 283
    add-int/2addr p1, p2

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->setWriteSize(I)V

    return-void
.end method

.method public setClassAnnotations(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    if-eqz p1, :cond_16

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    if-nez v0, :cond_e

    .line 147
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-direct {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    return-void

    .line 143
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "class annotations already set"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toHuman()Ljava/lang/String;
    .registers 3

    .line 273
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 12

    .line 289
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->classAnnotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I

    move-result v1

    .line 291
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->listSize(Ljava/util/ArrayList;)I

    move-result v2

    .line 292
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->listSize(Ljava/util/ArrayList;)I

    move-result v3

    .line 293
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->listSize(Ljava/util/ArrayList;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v0, :cond_8c

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->offsetString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " annotations directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  class_annotations_off: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {p2, v7, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  fields_size:           "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-interface {p2, v7, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  methods_size:          "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-interface {p2, v7, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  parameters_size:       "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-interface {p2, v7, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 306
    :cond_8c
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 307
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 308
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 309
    invoke-interface {p2, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    if-eqz v2, :cond_bc

    .line 312
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_a6

    .line 314
    const-string v1, "  fields:"

    invoke-interface {p2, v5, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 316
    :cond_a6
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->fieldAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;

    .line 317
    invoke-virtual {v2, p1, p2}, Lcom/s1243808733/android/dx/dex/file/FieldAnnotationStruct;->writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    goto :goto_ac

    :cond_bc
    if-eqz v3, :cond_e0

    .line 322
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_ca

    .line 324
    const-string v1, "  methods:"

    invoke-interface {p2, v5, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 326
    :cond_ca
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->methodAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;

    .line 327
    invoke-virtual {v2, p1, p2}, Lcom/s1243808733/android/dx/dex/file/MethodAnnotationStruct;->writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    goto :goto_d0

    :cond_e0
    if-eqz v4, :cond_104

    .line 332
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_ee

    .line 334
    const-string v0, "  parameters:"

    invoke-interface {p2, v5, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 336
    :cond_ee
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationsDirectoryItem;->parameterAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_104

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;

    .line 337
    invoke-virtual {v1, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ParameterAnnotationStruct;->writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    goto :goto_f4

    :cond_104
    return-void
.end method
