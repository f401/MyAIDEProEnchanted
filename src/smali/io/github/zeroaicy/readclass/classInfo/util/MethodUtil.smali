.class public Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;
.super Ljava/lang/Object;
.source "MethodUtil.java"


# static fields
.field public static JavaKeyWordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static JavaKeyWords:[Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->JavaKeyWordSet:Ljava/util/Set;

    const/16 v1, 0x2c

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "long"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "double"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "float"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "int"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "byte"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "short"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "char"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "boolean"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "true"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "false"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "instanceof"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "new"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "void"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "catch"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "continue"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "default"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "do"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "else"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "if"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "return"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "for"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "while"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "finally"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "throw"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "this"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "super"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "volatile"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "transient"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "class"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "extends"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "implements"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "interface"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "package"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "import"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "throws"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "cat"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "future"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "generic"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "innerr"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "operator"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "outer"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "rest"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "var"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "null"

    aput-object v3, v1, v2

    sput-object v1, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->JavaKeyWords:[Ljava/lang/String;

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMethodSignatureSummary(Ljava/lang/String;Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;)Ljava/lang/String;
    .registers 5

    .line 37
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getDeclaration()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 43
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getFormalTypeParameterString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTypesFromDeclaration(Ljava/lang/String;II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v1, p1

    const/4 v2, 0x0

    :goto_8
    if-lt p1, p2, :cond_b

    return-object v0

    .line 144
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_2b

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_28

    const/16 v4, 0x28

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x29

    if-eq v3, v4, :cond_2e

    goto :goto_44

    :cond_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_44

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_2e
    if-nez v2, :cond_44

    sub-int v3, p1, v1

    if-lez v3, :cond_44

    .line 158
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3b
    add-int/lit8 v1, p1, 0x1

    goto :goto_44

    .line 159
    :cond_3e
    sub-int v3, p1, v1

    if-nez v3, :cond_44

    add-int/lit8 v1, v1, 0x1

    :cond_44
    :goto_44
    add-int/lit8 p1, p1, 0x1

    goto :goto_8
.end method

.method private static inferParamNameFromClass(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2d

    .line 63
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_13

    .line 65
    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->isJavaKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 70
    const-string p0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    .line 73
    :cond_28
    invoke-static {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->method(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    :goto_2c
    return-object p0

    .line 57
    :cond_2d
    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "<"

    aput-object v4, v2, v0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "["

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "..."

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, " "

    aput-object v4, v2, v3

    aget-object v2, v2, v1

    .line 58
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_50

    .line 60
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static inferParamNameFromClass(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p1

    .line 116
    :cond_3
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->inferParamNameFromClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_a

    return-object p1

    .line 120
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_25

    .line 126
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_25
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isJavaKeyword(Ljava/lang/String;)Z
    .registers 2

    .line 104
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->JavaKeyWordSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Class"

    invoke-static {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->inferParamNameFromClass(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->inferParamNameFromClass(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v1}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->inferParamNameFromClass(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static method(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 5

    .line 80
    nop

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 81
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->isJavaKeyword(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_21

    .line 82
    const/16 p0, 0x6d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    aget-char p0, v0, v1

    const/16 v2, 0x61

    if-lt p0, v2, :cond_30

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_30

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    .line 85
    aput-char p0, v0, v1

    goto :goto_30

    .line 90
    :cond_21
    aget-char p0, v0, v1

    const/16 v2, 0x41

    if-lt p0, v2, :cond_30

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_30

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    .line 91
    aput-char p0, v0, v1

    .line 94
    :cond_30
    :goto_30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->isJavaKeyword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0
.end method
