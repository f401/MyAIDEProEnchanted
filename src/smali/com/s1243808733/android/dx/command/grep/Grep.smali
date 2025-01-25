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
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mencounterString(Lcom/s1243808733/android/dx/command/grep/Grep;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/grep/Grep;->encounterString(I)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;Ljava/util/regex/Pattern;Ljava/io/PrintWriter;)V
    .registers 6

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

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->stringIds:Ljava/util/Set;

    .line 48
    new-instance p1, Lcom/s1243808733/android/dx/command/grep/Grep$1;

    invoke-direct {p1, p0}, Lcom/s1243808733/android/dx/command/grep/Grep$1;-><init>(Lcom/s1243808733/android/dx/command/grep/Grep;)V

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/io/CodeReader;->setStringVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    return-void
.end method

.method private encounterString(I)V
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->stringIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 71
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/grep/Grep;->location()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    iget p1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->count:I

    :cond_3b
    return-void
.end method

.method private getStringIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/regex/Pattern;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2e
    return-object v0
.end method

.method private location()Ljava/lang/String;
    .registers 4

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

    if-eqz v1, :cond_4c

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

    :cond_4c
    return-object v0
.end method

.method private readArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V
    .registers 6

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readArray()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_22

    .line 58
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_18

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_14

    goto :goto_1f

    .line 63
    :cond_14
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/grep/Grep;->readArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    goto :goto_1f

    .line 60
    :cond_18
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValueReader;->readString()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/command/grep/Grep;->encounterString(I)V

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method


# virtual methods
.method public grep()I
    .registers 8

    .line 90
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dex/ClassDef;

    .line 91
    iput-object v1, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentClass:Lcom/s1243808733/android/dex/ClassDef;

    .line 92
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    .line 94
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/ClassDef;->getClassDataOffset()I

    move-result v2

    if-nez v2, :cond_22

    goto :goto_a

    .line 98
    :cond_22
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dex/Dex;->readClassData(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassData;

    move-result-object v2

    .line 101
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/ClassDef;->getStaticValuesOffset()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 103
    new-instance v3, Lcom/s1243808733/android/dex/EncodedValueReader;

    iget-object v4, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/util/ByteInput;)V

    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/command/grep/Grep;->readArray(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    .line 107
    :cond_3c
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/ClassData;->allMethods()[Lcom/s1243808733/android/dex/ClassData$Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_42
    if-ge v3, v2, :cond_a

    aget-object v4, v1, v3

    .line 108
    iput-object v4, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    .line 109
    invoke-virtual {v4}, Lcom/s1243808733/android/dex/ClassData$Method;->getCodeOffset()I

    move-result v5

    if-eqz v5, :cond_5d

    .line 110
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    iget-object v6, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v6, v4}, Lcom/s1243808733/android/dex/Dex;->readCode(Lcom/s1243808733/android/dex/ClassData$Method;)Lcom/s1243808733/android/dex/Code;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dex/Code;->getInstructions()[S

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/s1243808733/android/dx/io/CodeReader;->visitAll([S)V

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 115
    :cond_60
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentClass:Lcom/s1243808733/android/dex/ClassDef;

    .line 116
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    .line 117
    iget v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep;->count:I

    return v0
.end method
