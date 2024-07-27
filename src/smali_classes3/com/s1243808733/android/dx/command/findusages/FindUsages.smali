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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final methodIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 13

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/android/dx/io/CodeReader;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/io/CodeReader;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    .line 45
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 46
    iput-object p4, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->out:Ljava/io/PrintWriter;

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 49
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 50
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 51
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 52
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v6

    .line 53
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 62
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    .line 90
    :goto_1
    return-void

    .line 54
    :cond_1
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 67
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    move-object v0, v1

    .line 69
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 78
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance v1, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;

    invoke-direct {v1, p0, p4, p1}, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;-><init>(Lcom/s1243808733/android/dx/command/findusages/FindUsages;Ljava/io/PrintWriter;Lcom/s1243808733/android/dex/Dex;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setFieldVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 90
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance v1, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000001;

    invoke-direct {v1, p0, p4, p1}, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000001;-><init>(Lcom/s1243808733/android/dx/command/findusages/FindUsages;Ljava/io/PrintWriter;Lcom/s1243808733/android/dex/Dex;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setMethodVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    goto :goto_1

    .line 69
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->typeIds()Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 71
    if-ltz v0, :cond_5

    .line 74
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    invoke-direct {p0, p1, v3, v0}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->getMethodIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    invoke-direct {p0, p1, v3, v0}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->getFieldIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method static synthetic access$1000009(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->location()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    return-object v0
.end method

.method private findAssignableTypes(Lcom/s1243808733/android/dex/Dex;I)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    return-object v2

    .line 195
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/ClassDef;

    .line 196
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getInterfaces()[S

    move-result-object v4

    const/4 v1, 0x0

    .line 204
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 201
    aget-short v5, v4, v1

    .line 202
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 203
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getFieldIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 158
    const/4 v1, 0x0

    .line 159
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 164
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    return-object v2

    .line 159
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/FieldId;

    .line 160
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/FieldId;->getNameIndex()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/FieldId;->getDeclaringClassIndex()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private getMethodIds(Lcom/s1243808733/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p3}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->findAssignableTypes(Lcom/s1243808733/android/dex/Dex;I)Ljava/util/Set;

    move-result-object v2

    .line 176
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 177
    const/4 v1, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 183
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    return-object v3

    .line 178
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/MethodId;

    .line 179
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/MethodId;->getNameIndex()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/MethodId;->getDeclaringClassIndex()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private location()Ljava/lang/String;
    .registers 5

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

    if-eqz v1, :cond_0

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
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/MethodId;->getNameIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    return-object v0
.end method


# virtual methods
.method public findUsages()V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 143
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 148
    check-cast v0, Lcom/s1243808733/android/dex/ClassDef;

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentClass:Lcom/s1243808733/android/dex/ClassDef;

    .line 149
    check-cast v1, Lcom/s1243808733/android/dex/ClassData$Method;

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    goto :goto_0

    .line 120
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/ClassDef;

    .line 121
    iput-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentClass:Lcom/s1243808733/android/dex/ClassDef;

    move-object v2, v1

    .line 122
    check-cast v2, Lcom/s1243808733/android/dex/ClassData$Method;

    iput-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    .line 124
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getClassDataOffset()I

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dex/Dex;->readClassData(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassData;

    move-result-object v5

    .line 129
    invoke-virtual {v5}, Lcom/s1243808733/android/dex/ClassData;->allFields()[Lcom/s1243808733/android/dex/ClassData$Field;

    move-result-object v6

    move v2, v3

    .line 132
    :goto_1
    array-length v0, v6

    if-lt v2, v0, :cond_6

    .line 136
    invoke-virtual {v5}, Lcom/s1243808733/android/dex/ClassData;->allMethods()[Lcom/s1243808733/android/dex/ClassData$Method;

    move-result-object v5

    move v2, v3

    .line 143
    :goto_2
    array-length v0, v5

    if-ge v2, v0, :cond_2

    .line 136
    aget-object v6, v5, v2

    .line 137
    iput-object v6, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/s1243808733/android/dex/ClassData$Method;

    .line 138
    invoke-virtual {v6}, Lcom/s1243808733/android/dex/ClassData$Method;->getMethodIndex()I

    move-result v0

    .line 139
    iget-object v7, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 140
    iget-object v7, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->location()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " method declared "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v9}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/MethodId;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    :cond_4
    invoke-virtual {v6}, Lcom/s1243808733/android/dex/ClassData$Method;->getCodeOffset()I

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->codeReader:Lcom/s1243808733/android/dx/io/CodeReader;

    iget-object v7, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v7, v6}, Lcom/s1243808733/android/dex/Dex;->readCode(Lcom/s1243808733/android/dex/ClassData$Method;)Lcom/s1243808733/android/dex/Code;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dex/Code;->getInstructions()[S

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/io/CodeReader;->visitAll([S)V

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 129
    :cond_6
    aget-object v0, v6, v2

    .line 130
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassData$Field;->getFieldIndex()I

    move-result v0

    .line 131
    iget-object v7, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 132
    iget-object v7, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->location()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " field declared "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v9}, Lcom/s1243808733/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/FieldId;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1
.end method
