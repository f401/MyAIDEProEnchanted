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
        "Ljava/lang/Comparable<",
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
            "Ljava/util/List<",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private parameterAnnotationAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field private parameterNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
    .registers 9

    .line 54
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHasParameter:Z

    .line 55
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 57
    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    .line 58
    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getFlags()I

    move-result v1

    iput v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->access:I

    .line 60
    const-string v1, "<init>"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    if-eqz v1, :cond_23

    .line 63
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getSimpleClassName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    goto :goto_25

    .line 66
    :cond_23
    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    .line 68
    :goto_25
    iput-object p4, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->descriptor:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signature:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->exceptions:[Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object p3

    invoke-virtual {p3}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isInterface()Z

    move-result p3

    const/4 p6, 0x1

    if-eqz p3, :cond_45

    .line 76
    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isStatic()Z

    move-result p3

    if-nez p3, :cond_43

    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isAbstract()Z

    move-result p2

    if-eqz p2, :cond_43

    goto :goto_45

    :cond_43
    const/4 p2, 0x1

    goto :goto_46

    :cond_45
    :goto_45
    const/4 p2, 0x0

    :goto_46
    iput-boolean p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isDefaultMethod:Z

    if-eqz p2, :cond_53

    .line 77
    invoke-static {}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->getDisableDefaultMethod()Z

    move-result p2

    if-nez p2, :cond_51

    goto :goto_53

    :cond_51
    const/4 p2, 0x1

    goto :goto_54

    :cond_53
    :goto_53
    const/4 p2, 0x0

    :goto_54
    iput-boolean p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-nez p5, :cond_59

    goto :goto_5a

    :cond_59
    move-object p4, p5

    .line 81
    :goto_5a
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->isInner()Z

    move-result p2

    if-eqz p2, :cond_70

    iget-object p2, p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isStatic()Z

    move-result p2

    if-nez p2, :cond_70

    invoke-direct {p0, p4}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->checkFirstParameterType(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v0, 0x1

    :cond_70
    :goto_70
    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideFirstParam:Z

    .line 83
    new-instance p2, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    invoke-direct {p2, p4}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureReader:Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    .line 85
    new-instance p3, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    iget p4, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->access:I

    invoke-direct {p3, p4}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(I)V

    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    .line 87
    invoke-virtual {p3, p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->setConvert(Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;)Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    .line 89
    invoke-virtual {p2, p3}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->accept(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V

    return-void
.end method

.method private checkFirstParameterType(Ljava/lang/String;)Z
    .registers 7

    .line 336
    const-string v0, "()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 340
    :cond_a
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 341
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const/4 v3, 0x2

    if-lt v0, v3, :cond_42

    .line 351
    const-string v0, "L"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 352
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 354
    :cond_27
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->isInner()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getExternal()Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/termux/terminal/TerminalEmulator$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_41

    :cond_40
    const/4 v1, 0x1

    :cond_41
    :goto_41
    return v1

    .line 345
    :cond_42
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "<"

    aput-object v4, v3, v1

    const-string v4, ";"

    aput-object v4, v3, v2

    aget-object v3, v3, v0

    .line 346
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_58

    .line 348
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method private getParameterName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 376
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_18

    .line 380
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_18

    return-object p2

    .line 385
    :cond_18
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->paramNameCache:Ljava/util/Map;

    if-nez p2, :cond_23

    .line 386
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->paramNameCache:Ljava/util/Map;

    .line 388
    :cond_23
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->paramNameCache:Ljava/util/Map;

    invoke-static {p2, p1}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->inferParamNameFromClass(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleVarargs(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isVarargs()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 360
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

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

    if-eqz v1, :cond_39

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
    :cond_39
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    return-void
.end method

.method private insertParameterList(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 287
    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 288
    const/16 v2, 0x29

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v1, :cond_69

    if-le v1, v3, :cond_11

    goto :goto_69

    .line 294
    :cond_11
    add-int/lit8 v3, v3, 0x1

    invoke-static {p2, v1, v3}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->getTypesFromDeclaration(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    .line 302
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_25

    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideFirstParam:Z

    if-eqz v1, :cond_25

    .line 303
    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 307
    :cond_25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_2c
    if-lt v3, v0, :cond_32

    .line 332
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 309
    :cond_32
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-lez v3, :cond_3f

    .line 312
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_3f
    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterAnnotationAttributes:Landroid/util/SparseArray;

    if-eqz v4, :cond_57

    .line 317
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    if-eqz v4, :cond_57

    .line 319
    invoke-virtual {v4}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    invoke-direct {p0, v1, v3}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->getParameterName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 291
    :cond_69
    :goto_69
    const-string p2, "()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
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

    if-nez v0, :cond_43

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    if-nez v0, :cond_9

    goto :goto_43

    .line 269
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-lt v1, v0, :cond_1c

    .line 281
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 282
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    return-void

    .line 271
    :cond_1c
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v2

    .line 272
    iget-boolean v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-eqz v3, :cond_31

    .line 273
    const-string v3, "//"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_31
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v2, v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_43
    :goto_43
    return-void
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
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 402
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 405
    :cond_6
    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_10

    iget-boolean v3, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    if-nez v3, :cond_10

    return v2

    :cond_10
    const/4 v3, 0x1

    if-nez v1, :cond_18

    .line 408
    iget-boolean v1, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    if-eqz v1, :cond_18

    return v3

    .line 411
    :cond_18
    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-eqz v1, :cond_21

    iget-boolean v4, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-nez v4, :cond_21

    return v3

    :cond_21
    if-nez v1, :cond_28

    .line 415
    iget-boolean v1, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-eqz v1, :cond_28

    return v2

    .line 419
    :cond_28
    iget-object v1, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 420
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->descriptor:Ljava/lang/String;

    iget-object p1, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 422
    :cond_39
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    iget-object p1, p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->compareTo(Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;)I

    move-result p1

    return p1
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
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 113
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    if-nez p2, :cond_b

    .line 114
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    .line 116
    :cond_b
    new-instance p2, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {p2, v0, p1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationAttribute:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public visitAnnotationDefault()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 108
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-direct {v2, v0, v1, v1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    invoke-direct {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->printMethodAnnotations(Ljava/lang/StringBuilder;)V

    .line 189
    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-eqz v1, :cond_11

    .line 191
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_11
    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHideCurrentMethod:Z

    if-nez v1, :cond_7e

    iget-boolean v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isDefaultMethod:Z

    if-eqz v1, :cond_7e

    .line 194
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 195
    const-string v1, "/* @static */\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 197
    :cond_27
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_34

    .line 198
    const-string v1, "/* default */\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_34
    :goto_34
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v1, v1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    iget v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->access:I

    invoke-direct {v1, v2}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;-><init>(I)V

    .line 204
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureReader:Lzeroaicy/org/objectweb/asm/signature/SignatureReader;

    invoke-virtual {v2, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->accept(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V

    .line 206
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getAttribute()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getClassSignatureSummary()Ljava/lang/String;

    move-result-object v2

    .line 210
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    invoke-static {v3, v1}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->getMethodSignatureSummary(Ljava/lang/String;Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->addDefaultMethod(Ljava/lang/String;)V

    .line 216
    :cond_7e
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->getMethodModifiers()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->toModifiersString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getDeclaration()Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, " "

    const/4 v5, 0x0

    if-nez v3, :cond_b2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 222
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_b2
    iget-boolean v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isConstructionMethod:Z

    if-nez v2, :cond_c2

    .line 228
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->signatureResolve:Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getReturnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_c2
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationDefault:Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    if-eqz v2, :cond_df

    .line 236
    const-string v1, "() default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodAnnotationDefault:Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_115

    .line 242
    :cond_df
    invoke-direct {p0, v0, v1}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->insertParameterList(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->exceptions:[Ljava/lang/String;

    if-eqz v1, :cond_110

    array-length v1, v1

    if-lez v1, :cond_110

    .line 246
    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->exceptions:[Ljava/lang/String;

    .line 249
    :goto_f0
    array-length v2, v1

    if-lt v5, v2, :cond_fd

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_110

    .line 247
    :cond_fd
    aget-object v2, v1, v5

    .line 248
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-virtual {v3, v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_f0

    .line 253
    :cond_110
    :goto_110
    const-string v1, " {}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :goto_115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->methodString:Ljava/lang/String;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;I)V
    .registers 7
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
    const-string p2, "this"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    .line 166
    :cond_9
    iget-boolean p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHasParameter:Z

    if-eqz p2, :cond_e

    return-void

    .line 168
    :cond_e
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    if-nez p2, :cond_19

    .line 169
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    .line 171
    :cond_19
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x3c

    if-ne p2, p3, :cond_33

    .line 173
    const/4 p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "-?>"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_33
    const/16 p2, 0x2d

    const/16 p3, 0x5f

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 176
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_48

    .line 177
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 147
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    const/4 v0, 0x1

    if-nez p2, :cond_e

    .line 148
    iput-boolean v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->isHasParameter:Z

    .line 149
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    .line 151
    :cond_e
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x3c

    if-ne p2, v1, :cond_27

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "-?>"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 154
    :cond_27
    const/16 p2, 0x2d

    const/16 v0, 0x5f

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    .line 156
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 134
    new-instance p3, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->classAttributeVisitor:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {p3, v0, p2}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 135
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterAnnotationAttributes:Landroid/util/SparseArray;

    if-nez p2, :cond_12

    .line 136
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterAnnotationAttributes:Landroid/util/SparseArray;

    .line 138
    :cond_12
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->parameterAnnotationAttributes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p3
.end method
