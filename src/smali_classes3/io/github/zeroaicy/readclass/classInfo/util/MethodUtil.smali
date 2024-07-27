.class public Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;
.super Ljava/lang/Object;
.source "MethodUtil.java"


# static fields
.field public static JavaKeyWordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static JavaKeyWords:[Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->JavaKeyWordSet:Ljava/util/Set;

    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "double"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "float"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "byte"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "short"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "char"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "true"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "instanceof"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "void"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "catch"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "continue"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "else"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "while"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "finally"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "throw"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "this"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "super"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "volatile"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "transient"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "class"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "extends"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "implements"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "interface"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "package"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "import"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "throws"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "cat"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "future"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "generic"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "innerr"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "operator"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "outer"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "rest"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "var"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "null"

    aput-object v2, v0, v1

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->JavaKeyWords:[Ljava/lang/String;

    .line 24
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->JavaKeyWordSet:Ljava/util/Set;

    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->JavaKeyWords:[Ljava/lang/String;

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
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p1}, Lio/github/zeroaicy/readclass/classInfo/signature/SignatureResolve;->getFormalTypeParameterString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTypesFromDeclaration(Ljava/lang/String;II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    const/4 v0, 0x0

    move v1, p1

    move v2, p1

    .line 143
    :goto_0
    if-lt v2, p2, :cond_0

    .line 171
    return-object v3

    .line 144
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 145
    sparse-switch v4, :sswitch_data_0

    .line 143
    :cond_1
    :goto_1
    add-int/lit8 p1, v2, 0x1

    move v2, p1

    goto :goto_0

    .line 147
    :sswitch_0
    add-int/lit8 v1, v2, 0x1

    .line 148
    goto :goto_1

    .line 150
    :sswitch_1
    sub-int v4, v2, v1

    if-nez v4, :cond_1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :sswitch_2
    if-nez v0, :cond_1

    sub-int v4, v2, v1

    if-lez v4, :cond_1

    .line 158
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 164
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 165
    goto :goto_1

    .line 167
    :sswitch_4
    add-int/lit8 v0, v0, -0x1

    .line 168
    goto :goto_1

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x28 -> :sswitch_0
        0x29 -> :sswitch_2
        0x2c -> :sswitch_2
        0x3c -> :sswitch_3
        0x3e -> :sswitch_4
    .end sparse-switch
.end method

.method private static inferParamNameFromClass(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "<"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v3, "<"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "["

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "..."

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, " "

    aput-object v3, v2, v0

    move v0, v1

    .line 60
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 63
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 64
    if-lez v0, :cond_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->isJavaKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_1
    return-object v0

    .line 57
    :cond_1
    aget-object v3, v2, v0

    .line 58
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 59
    if-lez v3, :cond_2

    .line 60
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_3
    invoke-static {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->method(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static inferParamNameFromClass(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 112
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object p1

    .line 116
    :cond_1
    invoke-static {p1}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->inferParamNameFromClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    if-eqz p0, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 125
    if-nez v0, :cond_2

    .line 126
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_2
    new-instance v2, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static isJavaKeyword(Ljava/lang/String;)Z
    .registers 2

    .line 104
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->JavaKeyWordSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Class"

    invoke-static {v0, v2}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->inferParamNameFromClass(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Class"

    invoke-static {v0, v2}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->inferParamNameFromClass(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Class"

    invoke-static {v0, v2}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->inferParamNameFromClass(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static method(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 81
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->isJavaKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    const/16 v1, 0x6d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    aget-char v1, v0, v3

    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    aget-char v1, v0, v3

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    .line 85
    aget-char v1, v0, v3

    add-int/lit8 v1, v1, -0x20

    int-to-char v1, v1

    aput-char v1, v0, v3

    .line 94
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/util/MethodUtil;->isJavaKeyword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-object p0

    .line 90
    :cond_2
    aget-char v1, v0, v3

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    aget-char v1, v0, v3

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_1

    .line 91
    aget-char v1, v0, v3

    add-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method
