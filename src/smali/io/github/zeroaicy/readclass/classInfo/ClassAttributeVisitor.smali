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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field private final imports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
            "Ljava/util/List<",
            "Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorInfo:Ljava/lang/StringBuilder;

.field protected methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;",
            ">;"
        }
    .end annotation
.end field

.field private final simpleNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
    .registers 5

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
    iget-object p2, p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classFile:Lio/github/zeroaicy/readclass/classInfo/ClassFile;

    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classFile:Lio/github/zeroaicy/readclass/classInfo/ClassFile;

    .line 100
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p1, p1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    .line 101
    iput p3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClassAccess:I

    return-void
.end method

.method public constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassFile;)V
    .registers 3

    .line 65
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ClassVisitor;-><init>(I)V

    .line 67
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classFile:Lio/github/zeroaicy/readclass/classInfo/ClassFile;

    .line 70
    iput-object p0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    .line 76
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 79
    const-string v0, "\t"

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    .line 82
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClassName:Ljava/lang/String;

    return-void
.end method

.method public static StringToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 671
    const-string v0, "^[一-龥-\\x20-\\x7e]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object p0

    .line 675
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 695
    :goto_16
    array-length v4, p0

    if-lt v3, v4, :cond_1e

    .line 698
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 677
    :cond_1e
    aget-object v4, p0, v3

    .line 680
    const-string v5, "\""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 681
    const-string v5, "\\"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 683
    :cond_31
    const-string v5, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 684
    const-string v4, "\\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 685
    :cond_3f
    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 687
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 688
    array-length v6, v5

    const/4 v4, 0x0

    :goto_4b
    if-lt v4, v6, :cond_4e

    goto :goto_6c

    .line 691
    :cond_4e
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "\\\\u"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-char v8, v5, v4

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 695
    :cond_69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16
.end method

.method static synthetic access$Lzeroaicy$org$objectweb$asm$ClassVisitor$1(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;)I
    .registers 1

    iget p0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->api:I

    return p0
.end method

.method private addConvertClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 508
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-eqz v0, :cond_58

    .line 511
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    return-object v0

    .line 517
    :cond_f
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-static {v0}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->isJavaKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 519
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 522
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2f

    .line 523
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 527
    :cond_2f
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 533
    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_58

    .line 527
    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 529
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getSimpleClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 531
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->simpleNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 537
    :cond_58
    :goto_58
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    invoke-static {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addConvertClassName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static addConvertClassName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 452
    const/4 p0, 0x0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    return-object p0

    .line 454
    :cond_7
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->compatibleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 456
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 459
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_20

    .line 462
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_20
    move-object v0, p1

    .line 471
    :goto_21
    const-string v2, "$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 472
    const/16 v2, 0x24

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 475
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 484
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_4b

    :cond_48
    move-object v1, v0

    move-object v2, v1

    move-object v0, p1

    .line 487
    :goto_4b
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_57

    .line 490
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 492
    :cond_57
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5e

    :goto_5d
    move-object v0, v2

    :cond_5e
    return-object v0
.end method

.method private static compatibleClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_7

    .line 433
    const/4 p0, 0x0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object p0

    .line 435
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_27

    .line 440
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_23

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_23

    const/4 v1, 0x1

    move v0, v2

    .line 444
    :cond_23
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_27
    return-object p0
.end method

.method public static convertClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_7

    .line 424
    const/4 p0, 0x0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object p0

    .line 426
    :cond_7
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->compatibleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 427
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x24

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 542
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->compatibleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 544
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 545
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_24

    .line 548
    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1e

    .line 550
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 552
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_24
    return-object p1
.end method

.method public static importSort(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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
    .registers 2

    .line 666
    const-string v0, "^[一-龥-\\x20-\\x7e]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static modifiersToString(Ljava/util/Set;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 415
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 413
    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b
.end method

.method private static parserBasicArrayValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 640
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->basicTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 643
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_32

    .line 644
    check-cast v0, [Ljava/lang/Object;

    .line 645
    array-length v1, v0

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    const-string p0, "{"

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_13
    if-lt p0, v1, :cond_1f

    .line 655
    const/16 p0, 0x7d

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_36

    :cond_1f
    if-eqz p0, :cond_26

    .line 649
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    :cond_26
    aget-object v3, v0, p0

    .line 652
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_13

    .line 658
    :cond_32
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_36
    return-object p0
.end method

.method public static parserBasicValue(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 5

    .line 587
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 588
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    return-object v1

    .line 590
    :cond_b
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_cc

    .line 591
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 593
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3c

    .line 594
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c7

    .line 595
    :cond_3c
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_57

    .line 596
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, "d"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c7

    .line 597
    :cond_57
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_72

    .line 598
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, "f"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c7

    .line 599
    :cond_72
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_c7

    .line 600
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_88

    .line 602
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v0, v0

    .line 605
    :cond_88
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, " /*"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, "*/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c7

    .line 610
    :cond_c4
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 612
    :cond_c7
    :goto_c7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 613
    :cond_cc
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_ef

    .line 615
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    move-object v1, p0

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_e4

    .line 617
    const-string p0, "\\n"

    .line 619
    :cond_e4
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 622
    :cond_ef
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_11c

    if-nez p1, :cond_104

    if-eqz p0, :cond_100

    .line 623
    const-string p1, "null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_100

    goto :goto_104

    .line 633
    :cond_100
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    return-object v1

    .line 624
    :cond_104
    :goto_104
    check-cast p0, Ljava/lang/String;

    .line 626
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->StringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 627
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 635
    :cond_11c
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->parserBasicArrayValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startsWithNumber(Ljava/lang/String;)Z
    .registers 3

    .line 565
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor$$ExternalSyntheticBackport1;->m(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 566
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_15

    const/16 v0, 0x39

    if-gt p0, v0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 503
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addConvertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;
    .registers 2

    .line 114
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    return-object v0
.end method

.method public getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;
    .registers 2

    .line 420
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

    .line 560
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

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
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

    .line 325
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 326
    :cond_5
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 332
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 326
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;

    .line 327
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    if-eqz v2, :cond_21

    .line 329
    iget-object v2, v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_21
    invoke-interface {v1}, Lio/github/zeroaicy/readclass/classInfo/attribute/BaseAttribute;->getInfoValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b
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

    .line 339
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 343
    :cond_5
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object v0

    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Enum:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_52

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 345
    :goto_12
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_27

    if-nez v1, :cond_21

    .line 361
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_21
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 346
    :cond_27
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    .line 347
    invoke-virtual {v3}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->isEnumField()Z

    move-result v4

    if-eqz v4, :cond_4f

    if-eqz v1, :cond_3c

    .line 349
    const-string v4, ",\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_3c
    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    .line 354
    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v3, v3, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 365
    :cond_52
    :goto_52
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_58
    if-lt v2, v0, :cond_5b

    return-void

    .line 367
    :cond_5b
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    .line 368
    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 370
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_58
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

    .line 401
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 403
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-lt v1, v0, :cond_d

    return-void

    .line 405
    :cond_d
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    .line 406
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a
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

    .line 378
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 382
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 385
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v0}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->Annotation:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    .line 386
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-lt v1, v0, :cond_19

    return-void

    .line 388
    :cond_19
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    .line 389
    invoke-virtual {v2}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;->getInfoValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 391
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method public release()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    :cond_7
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    :cond_e
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 321
    :cond_15
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1c
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

    move-result p1

    if-eqz p1, :cond_8

    .line 132
    iget p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClassAccess:I

    .line 134
    :cond_8
    new-instance v2, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-direct {v2, p2}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;-><init>(I)V

    iput-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->accessFlags:Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    .line 135
    new-instance p1, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 200
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    if-nez p2, :cond_b

    .line 201
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    .line 203
    :cond_b
    new-instance p2, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    invoke-direct {p2, p0, p1}, Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->annotations:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public bridge visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->visitAnnotation(Ljava/lang/String;Z)Lio/github/zeroaicy/readclass/classInfo/AnnotationAttributeVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitEnd()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printAnnotation(Ljava/lang/StringBuilder;)V

    .line 263
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    if-eqz v1, :cond_11

    .line 264
    iget-object v1, v1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_11
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printField(Ljava/lang/StringBuilder;)V

    .line 271
    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printMethod(Ljava/lang/StringBuilder;)V

    .line 273
    invoke-virtual {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->printInnerClass(Ljava/lang/StringBuilder;)V

    .line 275
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->external:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    if-eqz v2, :cond_31

    .line 279
    iget-object v2, v2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->currentIndent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_31
    const-string v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->isInner()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->valueString:Ljava/lang/String;

    goto :goto_95

    .line 288
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    iget-object v3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classAttribute:Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;

    invoke-virtual {v3}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 291
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_63

    .line 294
    const-string v4, "package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->imports:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    invoke-static {v3}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->importSort(Ljava/util/List;)V

    .line 301
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 303
    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_96

    .line 305
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object v1, v1, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->mErrorInfo:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8c

    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 309
    :cond_8c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->valueString:Ljava/lang/String;

    :goto_95
    return-void

    .line 301
    :cond_96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 302
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "import "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;
    .registers 14
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 140
    new-instance v7, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    if-nez p1, :cond_17

    .line 142
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    .line 144
    :cond_17
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->fields:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public bridge visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/FieldVisitor;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lio/github/zeroaicy/readclass/classInfo/FieldAttributeVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
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

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_80

    .line 217
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    goto :goto_80

    .line 222
    :cond_1a
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object p3, p2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    if-nez p3, :cond_27

    .line 223
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    .line 226
    :cond_27
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object p2, p2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    return-void

    .line 230
    :cond_32
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->topClass:Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    iget-object p2, p2, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->addedInnerClass:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->convertClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 233
    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_51

    .line 235
    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 238
    :cond_51
    invoke-static {p2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->startsWithNumber(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_58

    return-void

    .line 242
    :cond_58
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->classFile:Lio/github/zeroaicy/readclass/classInfo/ClassFile;

    invoke-interface {p2, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFile;->loadClassFileData(Ljava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_61

    return-void

    .line 246
    :cond_61
    iget-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    if-nez p3, :cond_6c

    .line 247
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    .line 250
    :cond_6c
    new-instance p3, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;

    invoke-direct {p3, p0, p1, p4}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Ljava/lang/String;I)V

    .line 251
    new-instance p1, Lzeroaicy/org/objectweb/asm/ClassReader;

    invoke-direct {p1, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;-><init>([B)V

    .line 252
    const/16 p2, 0x8

    invoke-virtual {p1, p3, p2}, Lzeroaicy/org/objectweb/asm/ClassReader;->accept(Lzeroaicy/org/objectweb/asm/ClassVisitor;I)V

    .line 253
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->innerClasses:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_80
    :goto_80
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;
    .registers 15
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 151
    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 152
    move-object p1, v1

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    return-object v1

    .line 154
    :cond_d
    const-string v0, "java/lang/Object"

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "<init>"

    if-eqz v0, :cond_25

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 156
    move-object p1, v1

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    return-object v1

    .line 158
    :cond_25
    new-instance v4, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;

    invoke-direct {v4, p1}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;-><init>(I)V

    .line 160
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getClassType()Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/attribute/ClassAttribute$ClassType;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 162
    const-string p1, "values"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "()[L"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 163
    move-object p1, v1

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    return-object v1

    .line 166
    :cond_59
    const-string p1, "valueOf"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    const-string p1, "(Ljava/lang/String;)L"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 167
    move-object p1, v1

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    return-object v1

    .line 170
    :cond_6d
    invoke-virtual {v4}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_7d

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 172
    move-object p1, v1

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    return-object v1

    .line 175
    :cond_7d
    invoke-virtual {v4}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isSynthetic()Z

    move-result p1

    if-eqz p1, :cond_8d

    invoke-virtual {v4}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isBridge()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 177
    move-object p1, v1

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    return-object v1

    .line 180
    :cond_8d
    invoke-virtual {v4}, Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;->isStatic()Z

    move-result p1

    if-eqz p1, :cond_bf

    const-string p1, "of"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a3

    const-string p1, "copyOf"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bf

    :cond_a3
    const-string p1, "java/util/Set"

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    const-string p1, "java/util/List"

    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->getFullClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 185
    :cond_bb
    move-object p1, v1

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    return-object v1

    .line 189
    :cond_bf
    iget-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    if-nez p1, :cond_ca

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    .line 193
    :cond_ca
    new-instance p1, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    move-object v2, p1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;Lio/github/zeroaicy/readclass/classInfo/util/AccessFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 194
    iget-object p2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->methods:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public bridge visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/MethodAttributeVisitor;

    move-result-object p1

    return-object p1
.end method
