.class public final Lcom/s1243808733/android/dx/command/grep/Grep;
.super Ljava/lang/Object;
.source "Grep.java"


# instance fields
.field private final codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

.field private count:I

.field private currentClass:Lcom/s1243808733/android/dex/ClassDef;

.field private currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

.field private final dex:Lcom/s1243808733/android/dex/Dex;

.field private final out:Ljava/io/PrintWriter;

.field private final stringIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mencounterString(Lcom/s1243808733/android/dx/command/grep/Grep;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/grep/Grep;->encounterString(I)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;Ljava/util/regex/Pattern;Ljava/io/PrintWriter;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/s1243808733/android/dx/io/CodeReader;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/io/CodeReader;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->count:I

    .line 43
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 44
    iput-object p3, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->out:Ljava/io/PrintWriter;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/command/grep/Grep;->getStringIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/regex/Pattern;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->stringIds:Ljava/util/Set;

    .line 48
    new-instance v1, Lcom/s1243808733/android/dx/command/grep/Grep$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/command/grep/Grep$1;-><init>(Lcom/s1243808733/android/dx/command/grep/Grep;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setStringVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    return-void
.end method

.method private encounterString(I)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->stringIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/grep/Grep;->location()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->count:I

    :cond_0
    return-void
.end method

.method private getStringIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/regex/Pattern;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 123
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private location()Ljava/lang/String;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentClass:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/ClassData$Method;->getMethodIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dex/MethodId;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/MethodId;->getNameIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private readArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .locals 4

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readArray()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_1

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_0

    .line 60
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/grep/Grep;->readArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readString()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/command/grep/Grep;->encounterString(I)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public grep()I
    .locals 8

    const/4 v7, 0x0

    .line 90
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/ClassDef;

    .line 91
    iput-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentClass:Lcom/s1243808733/android/dex/ClassDef;

    .line 92
    iput-object v7, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    .line 94
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getClassDataOffset()I

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dex/Dex;->readClassData(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassData;

    move-result-object v2

    .line 101
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getStaticValuesOffset()I

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v3, Lcom/s1243808733/android/dex/EncodedValueReader;

    iget-object v4, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/util/ByteInput;)V

    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/command/grep/Grep;->readArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    .line 107
    :cond_1
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/ClassData;->allMethods()[Lcom/s1243808733/android/dex/ClassData$Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 108
    iput-object v4, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    .line 109
    invoke-virtual {v4}, Lcom/s1243808733/android/dex/ClassData$Method;->getCodeOffset()I

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    iget-object v6, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v6, v4}, Lcom/s1243808733/android/dex/Dex;->readCode(Lcom/s1243808733/android/dex/ClassData$Method;)Lcom/s1243808733/android/dex/Code;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dex/Code;->getInstructions()[S

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/s1243808733/android/dx/io/CodeReader;->visitAll([S)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_3
    iput-object v7, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentClass:Lcom/s1243808733/android/dex/ClassDef;

    .line 116
    iput-object v7, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    .line 117
    iget v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->count:I

    return v0
.end method
