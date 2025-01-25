.class public final Lcom/s1243808733/android/dx/command/findusages/FindUsages;
.super Ljava/lang/Object;
.source "FindUsages.java"


# instance fields
.field private final codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

.field private currentClass:Lcom/s1243808733/android/dex/ClassDef;

.field private currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

.field private final dex:Lcom/s1243808733/android/dex/Dex;

.field private final fieldIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final methodIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Ljava/io/PrintWriter;


# direct methods
.method static bridge synthetic -$$Nest$fgetfieldIds(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmethodIds(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlocation(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->location()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/s1243808733/android/dx/io/CodeReader;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/io/CodeReader;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    .line 45
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 46
    iput-object p4, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->out:Ljava/io/PrintWriter;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 50
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 51
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    .line 52
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 53
    :goto_25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 54
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 55
    invoke-virtual {p2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_42
    invoke-virtual {p3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 62
    :cond_56
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b7

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_63

    goto :goto_b7

    .line 67
    :cond_63
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    .line 68
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    .line 69
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_75
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 70
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->typeIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_8f

    goto :goto_75

    .line 74
    :cond_8f
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p3}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->getMethodIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p3}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->getFieldIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_75

    .line 78
    :cond_a2
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance p3, Lcom/s1243808733/android/dx/command/findusages/FindUsages$1;

    invoke-direct {p3, p0, p4, p1}, Lcom/s1243808733/android/dx/command/findusages/FindUsages$1;-><init>(Lcom/s1243808733/android/dx/command/findusages/FindUsages;Ljava/io/PrintWriter;Lcom/s1243808733/android/dex/Dex;)V

    invoke-virtual {p2, p3}, Lcom/s1243808733/android/dx/io/CodeReader;->setFieldVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 90
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance p3, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;

    invoke-direct {p3, p0, p4, p1}, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;-><init>(Lcom/s1243808733/android/dx/command/findusages/FindUsages;Ljava/io/PrintWriter;Lcom/s1243808733/android/dex/Dex;)V

    invoke-virtual {p2, p3}, Lcom/s1243808733/android/dx/io/CodeReader;->setMethodVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    return-void

    .line 63
    :cond_b7
    :goto_b7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    return-void
.end method

.method private findAssignableTypes(Lcom/s1243808733/android/dex/Dex;I)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 193
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dex/ClassDef;

    .line 196
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 197
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 201
    :cond_3a
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getInterfaces()[S

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_40
    if-ge v3, v2, :cond_14

    aget-short v4, v1, v3

    .line 202
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 203
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_5d
    return-object v0
.end method

.method private getFieldIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 159
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dex/FieldId;

    .line 160
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/FieldId;->getNameIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 161
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/FieldId;->getDeclaringClassIndex()I

    move-result v2

    if-ne p3, v2, :cond_35

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_38
    return-object v0
.end method

.method private getMethodIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p3}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->findAssignableTypes(Lcom/s1243808733/android/dex/Dex;I)Ljava/util/Set;

    move-result-object p3

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 178
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dex/MethodId;

    .line 179
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/MethodId;->getNameIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 180
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/MethodId;->getDeclaringClassIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_44
    return-object v0
.end method

.method private location()Ljava/lang/String;
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentClass:Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    if-eqz v1, :cond_4c

    .line 105
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/ClassData$Method;->getMethodIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dex/MethodId;

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

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


# virtual methods
.method public findUsages()V
    .registers 11

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    if-nez v0, :cond_a

    goto/16 :goto_d5

    .line 120
    :cond_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dex/ClassDef;

    .line 121
    iput-object v1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentClass:Lcom/s1243808733/android/dex/ClassDef;

    .line 122
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    .line 124
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/ClassDef;->getClassDataOffset()I

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_14

    .line 128
    :cond_2c
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dex/Dex;->readClassData(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassData;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/ClassData;->allFields()[Lcom/s1243808733/android/dex/ClassData$Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_39
    if-ge v5, v3, :cond_77

    aget-object v6, v2, v5

    .line 130
    invoke-virtual {v6}, Lcom/s1243808733/android/dex/ClassData$Field;->getFieldIndex()I

    move-result v6

    .line 131
    iget-object v7, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 132
    iget-object v7, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->location()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " field declared "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v9}, Lcom/s1243808733/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 136
    :cond_77
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/ClassData;->allMethods()[Lcom/s1243808733/android/dex/ClassData$Method;

    move-result-object v1

    array-length v2, v1

    :goto_7c
    if-ge v4, v2, :cond_14

    aget-object v3, v1, v4

    .line 137
    iput-object v3, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    .line 138
    invoke-virtual {v3}, Lcom/s1243808733/android/dex/ClassData$Method;->getMethodIndex()I

    move-result v5

    .line 139
    iget-object v6, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 140
    iget-object v6, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->out:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->location()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " method declared "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v8}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    :cond_b9
    invoke-virtual {v3}, Lcom/s1243808733/android/dex/ClassData$Method;->getCodeOffset()I

    move-result v5

    if-eqz v5, :cond_ce

    .line 143
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    iget-object v6, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v6, v3}, Lcom/s1243808733/android/dex/Dex;->readCode(Lcom/s1243808733/android/dex/ClassData$Method;)Lcom/s1243808733/android/dex/Code;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/Code;->getInstructions()[S

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/io/CodeReader;->visitAll([S)V

    :cond_ce
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 148
    :cond_d1
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentClass:Lcom/s1243808733/android/dex/ClassDef;

    .line 149
    iput-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    :cond_d5
    :goto_d5
    return-void
.end method
