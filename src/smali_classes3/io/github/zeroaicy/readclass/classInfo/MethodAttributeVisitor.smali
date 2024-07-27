.class public Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;
.super Lzeroaicy/org/objectweb/asm/MethodVisitor;
.source "MethodAttributeVisitor.java"

# interfaces
.implements Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzeroaicy/org/objectweb/asm/MethodVisitor;",
        "Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;",
        ">;"
    }
.end annotation


# instance fields
.field private access:I

.field private final accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

.field private final classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

.field private final descriptor:Ljava/lang/String;

.field private final exceptions:[Ljava/lang/String;

.field private final isConstructionMethod:Z

.field private final isDefaultMethod:Z

.field private isHasParameter:Z

.field private final isHideCurrentMethod:Z

.field private final isHideFirstParam:Z

.field private methodAnnotationAttribute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field private methodAnnotationDefault:Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

.field private methodString:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private paramNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private parameterAnnotationAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field private parameterNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:Ljava/lang/String;

.field final signatureReader:Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

.field final signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;


# direct methods
.method public constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;-><init>(I)V

    iput-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHasParameter:Z

    .line 55
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 57
    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    .line 58
    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getFlags()I

    move-result v0

    iput v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->access:I

    .line 60
    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    .line 62
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    if-eqz v0, :cond_4

    .line 63
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getSimpleClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    .line 68
    :goto_0
    iput-object p4, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->descriptor:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signature:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->exceptions:[Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isInterface()Z

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isStatic()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isDefaultMethod:Z

    .line 77
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isDefaultMethod:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->getDisableDefaultMethod()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    .line 79
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signature:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->descriptor:Ljava/lang/String;

    .line 81
    :goto_3
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v3}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->isInner()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v3}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isStatic()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->checkFirstParameterType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideFirstParam:Z

    .line 83
    new-instance v1, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    invoke-direct {v1, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureReader:Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    .line 85
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    iget v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->access:I

    invoke-direct {v0, v1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(I)V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    .line 87
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->setConvert(Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;)Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    .line 89
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureReader:Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->accept(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V

    return-void

    .line 66
    :cond_4
    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move v0, v1

    .line 76
    goto :goto_1

    :cond_6
    move v0, v1

    .line 77
    goto :goto_2

    .line 79
    :cond_7
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signature:Ljava/lang/String;

    goto :goto_3
.end method

.method private checkFirstParameterType(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 336
    const-string v2, "()"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 344
    :cond_2
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "<"

    aput-object v2, v3, v0

    const-string v2, ";"

    aput-object v2, v3, v1

    move v2, v0

    .line 348
    :goto_1
    array-length v4, v3

    if-lt v2, v4, :cond_4

    .line 351
    const-string v2, "L"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 354
    :cond_3
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->isInner()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getExternal()Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    move-result-object v2

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 345
    :cond_4
    aget-object v4, v3, v2

    .line 346
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 347
    if-lez v4, :cond_5

    .line 348
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getParameterName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 376
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 380
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    if-eqz v0, :cond_0

    .line 390
    :goto_0
    return-object v0

    .line 385
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->paramNameCache:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->paramNameCache:Ljava/util/Map;

    .line 388
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->paramNameCache:Ljava/util/Map;

    invoke-static {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->inferParamNameFromClass(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleVarargs(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isVarargs()Z

    move-result v0

    .line 360
    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 366
    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private insertParameterList(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v5, 0x29

    const/16 v4, 0x28

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 288
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 290
    if-ltz v1, :cond_0

    if-le v1, v2, :cond_1

    .line 291
    :cond_0
    const-string v0, "()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :goto_0
    return-void

    .line 294
    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v1, v2}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->getTypesFromDeclaration(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 302
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideFirstParam:Z

    if-eqz v1, :cond_2

    .line 303
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 307
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-lt v2, v4, :cond_3

    .line 332
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 309
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    if-lez v2, :cond_4

    .line 312
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_4
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterAnnotationAttributes:Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    .line 317
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterAnnotationAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    .line 318
    if-eqz v1, :cond_5

    .line 319
    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    invoke-direct {p0, v0, v2}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->getParameterName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private printMethodAnnotations(Ljava/lang/StringBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 267
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 270
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    .line 281
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 282
    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-boolean v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-eqz v3, :cond_3

    .line 273
    const-string v3, "//"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private writeMethodSignature(Ljava/lang/StringBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 259
    const-string v0, "//signature: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public compareTo(Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;)I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 402
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    if-eqz v2, :cond_0

    .line 408
    :cond_2
    iget-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 409
    goto :goto_0

    .line 411
    :cond_3
    iget-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-nez v2, :cond_4

    move v0, v1

    .line 413
    goto :goto_0

    .line 415
    :cond_4
    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-nez v1, :cond_0

    .line 419
    :cond_5
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    iget-object v1, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->descriptor:Ljava/lang/String;

    iget-object v1, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 422
    :cond_6
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    iget-object v1, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->compareTo(Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;)I

    move-result v0

    return v0
.end method

.method public getInfoValue()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 397
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodString:Ljava/lang/String;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 113
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    .line 116
    :cond_0
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v0, v1, p1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-object v0
.end method

.method public visitAnnotationDefault()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 108
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationDefault:Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    return-object v2
.end method

.method public visitEnd()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    invoke-direct {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->printMethodAnnotations(Ljava/lang/StringBuilder;)V

    .line 189
    iget-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_0
    iget-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isDefaultMethod:Z

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    const-string v2, "/* @static */\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    :goto_0
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v2, v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    iget v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->access:I

    invoke-direct {v2, v3}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(I)V

    .line 204
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureReader:Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    invoke-virtual {v3, v2}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->accept(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V

    .line 206
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v3}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getAttribute()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    move-result-object v3

    .line 208
    invoke-virtual {v3}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getClassSignatureSummary()Ljava/lang/String;

    move-result-object v3

    .line 210
    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    invoke-static {v4, v2}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->getMethodSignatureSummary(Ljava/lang/String;Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;)Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->addDefaultMethod(Ljava/lang/String;)V

    .line 216
    :cond_2
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getMethodModifiers()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->toModifiersString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getDeclaration()Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_3
    iget-boolean v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    if-nez v3, :cond_4

    .line 228
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v3}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getReturnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_4
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationDefault:Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    if-eqz v3, :cond_6

    .line 236
    const-string v0, "() default "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationDefault:Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v0, ";\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodString:Ljava/lang/String;

    return-void

    .line 197
    :cond_5
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isAbstract()Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    const-string v2, "/* default */\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 242
    :cond_6
    invoke-direct {p0, v1, v2}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->insertParameterList(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->exceptions:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->exceptions:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 246
    const-string v2, " throws "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->exceptions:[Ljava/lang/String;

    .line 249
    :goto_2
    array-length v3, v2

    if-lt v0, v3, :cond_8

    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 253
    :cond_7
    const-string v0, " {}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 247
    :cond_8
    aget-object v3, v2, v0

    .line 248
    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v4, v3}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 163
    const-string v0, "this"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHasParameter:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    .line 171
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_3

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-?>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_3
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    .line 147
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 148
    iput-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHasParameter:Z

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    .line 151
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-?>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 154
    :cond_1
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 133
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v0, v1, p2}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterAnnotationAttributes:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterAnnotationAttributes:Landroid/util/SparseArray;

    .line 138
    :cond_0
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterAnnotationAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 139
    return-object v0
.end method
