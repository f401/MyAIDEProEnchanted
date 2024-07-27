.class public Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;
.super Lzeroaicy/org/objectweb/asm/ClassVisitor;
.source "ClassAttributeVisitor.java"

# interfaces
.implements Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;
.implements Lio/github/zeroaicy/readclass/classInfo/signature/ClassNameConvert;


# static fields
.field public static final indentation:Ljava/lang/String; = "\t"


# instance fields
.field protected accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

.field protected addedInnerClass:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field protected classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

.field protected final classFile:Lio/github/zeroaicy/readclass/classInfo/ClassFile;

.field public final currentIndent:Ljava/lang/String;

.field protected final external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

.field protected fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field private final imports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected innerClassAccess:I

.field private final innerClassName:Ljava/lang/String;

.field protected innerClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorInfo:Ljava/lang/StringBuilder;

.field protected methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field private final simpleNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

.field private valueString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;I)V
    .registers 6

    .line 88
    iget v0, p1, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassVisitor;-><init>(I)V

    .line 90
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 92
    iget-object v0, p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 93
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    .line 94
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    .line 97
    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClassName:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classFile:Lio/github/zeroaicy/readclass/classInfo/ClassFile;

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classFile:Lio/github/zeroaicy/readclass/classInfo/ClassFile;

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    .line 101
    iput p3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClassAccess:I

    return-void
.end method

.method public constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassFile;)V
    .registers 4

    const/4 v1, 0x0

    .line 65
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassVisitor;-><init>(I)V

    .line 67
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classFile:Lio/github/zeroaicy/readclass/classInfo/ClassFile;

    .line 70
    iput-object p0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    move-object v0, v1

    .line 76
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 79
    const-string v0, "\t"

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    .line 82
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClassName:Ljava/lang/String;

    return-void
.end method

.method public static StringToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    .line 667
    const-string v0, "^[\u4e00-\u9fa5-\\x20-\\x7e]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    :goto_0
    return-object p0

    .line 672
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 692
    :goto_1
    array-length v2, v4

    if-lt v0, v2, :cond_1

    .line 695
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 674
    :cond_1
    aget-object v2, v4, v0

    .line 677
    const-string v5, "\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 678
    const-string v5, "\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 680
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 681
    const-string v2, "\\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 682
    :cond_4
    const-string v5, "^[\u4e00-\u9fa5-\\x20-\\x7e]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 684
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 685
    array-length v6, v5

    move v2, v1

    .line 686
    :goto_3
    if-ge v2, v6, :cond_2

    .line 688
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\\\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    aget-char v8, v5, v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 692
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method static synthetic access$Lzeroaicy$org$objectweb$asm$ClassVisitor$1(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;)I
    .registers 2

    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    return v0
.end method

.method private addConvertClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 507
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 510
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    if-eqz v0, :cond_0

    .line 536
    :goto_0
    return-object v0

    .line 516
    :cond_0
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-static {v1}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->isJavaKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 522
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 526
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 532
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 536
    :cond_4
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    invoke-static {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addConvertClassName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 526
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 528
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getSimpleClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static addConvertClassName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v6, 0x24

    const/16 v4, 0x2e

    .line 450
    if-nez p1, :cond_0

    .line 451
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 497
    :goto_0
    return-object v0

    .line 453
    :cond_0
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->compatibleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 461
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    :goto_1
    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 471
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 474
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 479
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 483
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v4, v1

    .line 486
    :goto_2
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    if-nez v0, :cond_3

    .line 489
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 461
    goto :goto_1

    .line 491
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v5

    .line 495
    goto :goto_0

    :cond_4
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    goto :goto_2
.end method

.method public static compatibleClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    .line 431
    if-nez p0, :cond_0

    .line 432
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 445
    :goto_0
    return-object v0

    .line 434
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 435
    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    .line 439
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 440
    const/4 v1, 0x1

    .line 441
    add-int/lit8 v0, v0, -0x1

    .line 443
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method public static convertClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x2e

    .line 422
    if-nez p0, :cond_0

    .line 423
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 426
    :goto_0
    return-object v0

    .line 425
    :cond_0
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->compatibleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x2e

    .line 541
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->compatibleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 546
    if-lez v2, :cond_1

    .line 547
    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 548
    if-gtz v0, :cond_0

    .line 549
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 551
    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 553
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static importSort(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 573
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor$100000000;

    invoke-direct {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor$100000000;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static isLetterDigitOrChinese(Ljava/lang/String;)Z
    .registers 2

    .line 662
    const-string v0, "^[\u4e00-\u9fa5-\\x20-\\x7e]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static modifiersToString(Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 414
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 412
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 413
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static parserBasicArrayValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 637
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->basicTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 638
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 641
    check-cast v0, [Ljava/lang/Object;

    .line 642
    array-length v2, v0

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 652
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    :goto_1
    return-object v0

    .line 645
    :cond_0
    if-eqz v1, :cond_1

    .line 646
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    :cond_1
    aget-object v4, v0, v1

    .line 649
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 650
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static parserBasicValue(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 586
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    check-cast v0, Ljava/lang/String;

    .line 632
    :goto_0
    return-object v0

    .line 588
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_7

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Infinity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 591
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 592
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 593
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 594
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 595
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 596
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 597
    :cond_4
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 598
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 599
    if-gez v0, :cond_5

    .line 600
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    neg-int v0, v0

    .line 603
    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " /*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "*/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 607
    :cond_6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 610
    :cond_7
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_9

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    .line 613
    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_8

    .line 614
    const-string p0, "\\n"

    .line 616
    :cond_8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 617
    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 619
    :cond_9
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 620
    if-nez p1, :cond_a

    if-eqz p0, :cond_b

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 621
    :cond_a
    check-cast p0, Ljava/lang/String;

    .line 623
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->StringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 630
    :cond_b
    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 632
    :cond_c
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->parserBasicArrayValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static startsWithNumber(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 564
    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 566
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 567
    const/4 v0, 0x1

    .line 570
    :cond_0
    return v0
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 502
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addConvertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;
    .registers 2

    .line 114
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    return-object v0
.end method

.method public getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .registers 2

    .line 419
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v0

    return-object v0
.end method

.method public getExternal()Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;
    .registers 2

    .line 111
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    return-object v0
.end method

.method public getFullClassName()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getFullClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoValue()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 559
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleClassName()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getSimpleClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInner()Z
    .registers 2

    .line 105
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public printAnnotation(Ljava/lang/StringBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    if-nez v0, :cond_1

    .line 331
    :cond_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 331
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;

    .line 326
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    if-eqz v2, :cond_2

    .line 328
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v2, v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_2
    invoke-interface {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public printField(Ljava/lang/StringBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    if-nez v0, :cond_1

    .line 365
    :cond_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v0

    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-ne v0, v1, :cond_3

    move v1, v2

    move v3, v2

    .line 344
    :goto_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 359
    if-nez v3, :cond_2

    .line 360
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_2
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_3
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 365
    :goto_1
    if-ge v2, v1, :cond_0

    .line 366
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    .line 367
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_4

    .line 369
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 345
    :cond_5
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    .line 346
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->isEnumField()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 347
    if-eqz v3, :cond_6

    .line 348
    const-string v4, ",\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_6
    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 351
    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, 0x1

    .line 344
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public printInnerClass(Ljava/lang/StringBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-nez v0, :cond_1

    .line 403
    :cond_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 403
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 404
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 405
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public printMethod(Ljava/lang/StringBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    if-nez v0, :cond_1

    .line 386
    :cond_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 384
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v0

    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-ne v0, v1, :cond_2

    .line 385
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 386
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 387
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    .line 388
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_3

    .line 390
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public release()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 130
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->isInner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClassAccess:I

    .line 134
    :cond_0
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-direct {v0, p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;-><init>(I)V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    .line 135
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 199
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    .line 202
    :cond_0
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-direct {v0, p0, p1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-object v0
.end method

.method public bridge visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->visitAnnotation(Ljava/lang/String;Z)Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitEnd()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    invoke-virtual {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printAnnotation(Ljava/lang/StringBuilder;)V

    .line 262
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->toAttributeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printField(Ljava/lang/StringBuilder;)V

    .line 270
    invoke-virtual {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printMethod(Ljava/lang/StringBuilder;)V

    .line 272
    invoke-virtual {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printInnerClass(Ljava/lang/StringBuilder;)V

    .line 274
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_1
    const-string v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->isInner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->valueString:Ljava/lang/String;

    .line 310
    :goto_0
    return-void

    .line 287
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 293
    const-string v3, "package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v0, ";\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_3
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 299
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->importSort(Ljava/util/List;)V

    .line 300
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 302
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 304
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->mErrorInfo:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    .line 306
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->mErrorInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 308
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->valueString:Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "import "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;
    .registers 13
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 140
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    .line 144
    :cond_0
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-object v0
.end method

.method public bridge visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/FieldVisitor;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 209
    if-nez p1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    .line 225
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_3
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->startsWithNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classFile:Lio/github/zeroaicy/readclass/classInfo/ClassFile;

    invoke-interface {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFile;->loadClassFileData(Ljava/lang/String;)[B

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-nez v1, :cond_4

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    .line 249
    :cond_4
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v1, p0, p1, p4}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;I)V

    .line 250
    new-instance v2, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v2, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 251
    const/16 v0, 0x8

    invoke-virtual {v2, v1, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 252
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;
    .registers 13
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 151
    const-string v1, "<clinit>"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    .line 194
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const-string v1, "java/lang/Object"

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "<init>"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto :goto_0

    .line 158
    :cond_1
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-direct {v2, p1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;-><init>(I)V

    .line 160
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v1

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    const-string v1, "values"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "()[L"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto :goto_0

    .line 166
    :cond_2
    const-string v1, "valueOf"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "(Ljava/lang/String;)L"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "<init>"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isBridge()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto/16 :goto_0

    .line 180
    :cond_5
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "of"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "copyOf"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    const-string v1, "java/util/Set"

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "java/util/List"

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 184
    :cond_7
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto/16 :goto_0

    .line 188
    :cond_8
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    if-nez v0, :cond_9

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    .line 192
    :cond_9
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public bridge visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    move-result-object v0

    return-object v0
.end method
