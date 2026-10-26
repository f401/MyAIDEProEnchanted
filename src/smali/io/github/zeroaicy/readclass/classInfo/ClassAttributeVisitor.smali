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
    .locals 2

    .line 88
    iget v0, p1, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassVisitor;-><init>(I)V

    .line 90
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 92
    iget-object v0, p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 93
    iget-object v0, p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    .line 94
    iget-object v0, p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

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
    .locals 2

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

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 79
    const-string v0, "\t"

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    move-object v0, v1

    .line 82
    check-cast v0, Ljava/lang/String;

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClassName:Ljava/lang/String;

    return-void
.end method

.method public static StringToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    .line 671
    const-string v0, "^[\u4e00-\u9fa5-\\x20-\\x7e]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    :goto_0
    return-object p0

    .line 675
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 695
    :goto_1
    array-length v2, v4

    if-lt v0, v2, :cond_1

    .line 698
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 677
    :cond_1
    aget-object v2, v4, v0

    .line 680
    const-string v5, "\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 681
    const-string v5, "\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 683
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 684
    const-string v2, "\\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 685
    :cond_4
    const-string v5, "^[\u4e00-\u9fa5-\\x20-\\x7e]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 687
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 688
    array-length v6, v5

    move v2, v1

    :goto_3
    if-ge v2, v6, :cond_2

    .line 691
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "\\\\u"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-char v8, v5, v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 695
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method static synthetic access$Lzeroaicy$org$objectweb$asm$ClassVisitor$1(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;)I
    .locals 1

    iget v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    return v0
.end method

.method private addConvertClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 508
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 537
    :goto_0
    return-object v0

    .line 517
    :cond_0
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {v1}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->isJavaKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 523
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 533
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 537
    :cond_4
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    invoke-static {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addConvertClassName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 529
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getSimpleClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static addConvertClassName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
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

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/16 v5, 0x24

    const/16 v4, 0x2e

    if-nez p1, :cond_0

    move-object v0, v1

    .line 452
    check-cast v0, Ljava/lang/String;

    .line 492
    :goto_0
    return-object v1

    .line 454
    :cond_0
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->compatibleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 462
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 471
    :goto_1
    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 472
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 475
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 482
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 484
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v4, v1

    .line 487
    :goto_2
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    .line 490
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object v4, v5

    :cond_1
    move-object v1, v4

    .line 492
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 462
    goto :goto_1

    :cond_3
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v0

    .line 484
    goto :goto_2

    .line 492
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3
.end method

.method private static compatibleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    .line 433
    check-cast v0, Ljava/lang/String;

    .line 444
    :goto_0
    return-object v1

    .line 435
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-le v1, v0, :cond_1

    .line 440
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x4c

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    move v2, v1

    .line 444
    :goto_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    move-object v1, p0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static convertClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2e

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    .line 424
    check-cast v0, Ljava/lang/String;

    .line 427
    :goto_0
    return-object v1

    .line 426
    :cond_0
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->compatibleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2e

    .line 542
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->compatibleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 548
    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 550
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 552
    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static importSort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 574
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor$100000000;

    invoke-direct {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor$100000000;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static isLetterDigitOrChinese(Ljava/lang/String;)Z
    .locals 1

    .line 666
    const-string v0, "^[\u4e00-\u9fa5-\\x20-\\x7e]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static modifiersToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
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

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 415
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 413
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static parserBasicArrayValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 640
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->basicTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 643
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 644
    check-cast v0, [Ljava/lang/Object;

    .line 645
    array-length v2, v0

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 655
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    :goto_1
    return-object v0

    .line 656
    :cond_0
    if-eqz v1, :cond_1

    .line 649
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    :cond_1
    aget-object v4, v0, v1

    .line 652
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 653
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static parserBasicValue(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    .line 587
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 588
    check-cast v0, Ljava/lang/String;

    .line 635
    :goto_0
    return-object v1

    .line 590
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 593
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 594
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 595
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 596
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 597
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 598
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 599
    :cond_4
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 600
    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_5

    .line 602
    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v0, v0

    .line 605
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, " /*"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 610
    :cond_6
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 613
    :cond_7
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_9

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    .line 616
    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_8

    .line 617
    const-string p0, "\\n"

    .line 619
    :cond_8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 620
    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 622
    :cond_9
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    if-nez p1, :cond_a

    if-eqz p0, :cond_b

    .line 623
    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 624
    :cond_a
    check-cast p0, Ljava/lang/String;

    .line 626
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->StringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    .line 633
    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 635
    :cond_c
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->parserBasicArrayValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static startsWithNumber(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 565
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor$$ExternalSyntheticBackport1;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 503
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addConvertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    return-object v0
.end method

.method public getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .locals 1

    .line 420
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v0

    return-object v0
.end method

.method public getExternal()Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    return-object v0
.end method

.method public getFullClassName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getFullClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 560
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleClassName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getSimpleClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInner()Z
    .locals 1

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    if-nez v0, :cond_1

    .line 332
    :cond_0
    return-void

    .line 326
    :cond_1
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 332
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;

    .line 327
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    if-eqz v2, :cond_2

    .line 329
    iget-object v2, v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_2
    invoke-interface {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public printField(Ljava/lang/StringBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 339
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    if-nez v0, :cond_1

    .line 365
    :cond_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v0

    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    if-ne v0, v1, :cond_3

    move v2, v3

    move v1, v3

    .line 345
    :goto_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    if-nez v2, :cond_2

    .line 361
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_2
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    :cond_3
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_0

    .line 367
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    .line 368
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 370
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 346
    :cond_5
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    .line 347
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->isEnumField()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    .line 349
    const-string v4, ",\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_6
    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 354
    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    :goto_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public printInnerClass(Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-nez v0, :cond_1

    .line 403
    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 405
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 406
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public printMethod(Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    if-nez v0, :cond_1

    .line 386
    :cond_0
    return-void

    .line 382
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 385
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    .line 386
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 388
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    .line 389
    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 391
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 321
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
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
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-direct {v2, p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;-><init>(I)V

    iput-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    .line 135
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

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
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 200
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    .line 203
    :cond_0
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-direct {v0, p0, p1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->visitAnnotation(Ljava/lang/String;Z)Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitEnd()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    invoke-virtual {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printAnnotation(Ljava/lang/StringBuilder;)V

    .line 263
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->toAttributeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printField(Ljava/lang/StringBuilder;)V

    .line 271
    invoke-virtual {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printMethod(Ljava/lang/StringBuilder;)V

    .line 273
    invoke-virtual {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printInnerClass(Ljava/lang/StringBuilder;)V

    .line 275
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_1
    const-string v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->isInner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->valueString:Ljava/lang/String;

    .line 311
    :goto_0
    return-void

    .line 288
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 294
    const-string v3, "package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v0, ";\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_3
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->importSort(Ljava/util/List;)V

    .line 301
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 303
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 305
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->mErrorInfo:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    .line 307
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 309
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->valueString:Ljava/lang/String;

    goto :goto_0

    .line 301
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "import "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

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

    .line 303
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;
    .locals 7
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

    return-object v0
.end method

.method public bridge visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/FieldVisitor;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
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

    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 4294967295
    :cond_1
    if-eqz p2, :cond_0

    .line 217
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

    .line 222
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v1, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 223
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    .line 226
    :cond_2
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v0, v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_3
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->startsWithNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classFile:Lio/github/zeroaicy/readclass/classInfo/ClassFile;

    invoke-interface {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFile;->loadClassFileData(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-nez v1, :cond_4

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    .line 250
    :cond_4
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {v1, p0, p1, p4}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;I)V

    .line 251
    new-instance v2, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {v2, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 252
    const/16 v0, 0x8

    invoke-virtual {v2, v1, v0}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 253
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 151
    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 152
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    .line 194
    :goto_0
    return-object v1

    .line 154
    :cond_0
    const-string v0, "java/lang/Object"

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "<init>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 156
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto :goto_0

    .line 158
    :cond_1
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-direct {v2, p1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;-><init>(I)V

    .line 160
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    const-string v0, "values"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "()[L"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 163
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto :goto_0

    .line 166
    :cond_2
    const-string v0, "valueOf"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "(Ljava/lang/String;)L"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 167
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "<init>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 172
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isBridge()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 177
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto/16 :goto_0

    .line 180
    :cond_5
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "of"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "copyOf"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    const-string v0, "java/util/Set"

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "java/util/List"

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move-object v0, v1

    .line 185
    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    goto/16 :goto_0

    .line 189
    :cond_8
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    if-nez v0, :cond_9

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    .line 193
    :cond_9
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public bridge visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    move-result-object v0

    return-object v0
.end method
