.class public Lcom/sun/tools/javac/model/AnnotationProxyMaker;
.super Ljava/lang/Object;
.source "AnnotationProxyMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;,
        Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;,
        Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;,
        Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;
    }
.end annotation


# instance fields
.field private final anno:Lcom/sun/tools/javac/code/Attribute$Compound;

.field private final annoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sun/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->anno:Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 81
    iput-object p2, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->annoType:Ljava/lang/Class;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/model/AnnotationProxyMaker;)Ljava/lang/Class;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->annoType:Ljava/lang/Class;

    return-object v0
.end method

.method private generateAnnotation()Ljava/lang/annotation/Annotation;
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->annoType:Ljava/lang/Class;

    .line 100
    invoke-direct {p0}, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->getAllReflectedValues()Ljava/util/Map;

    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lsun/reflect/annotation/AnnotationParser;->annotationForMap(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static generateAnnotation(Lcom/sun/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/sun/tools/javac/model/AnnotationProxyMaker;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/model/AnnotationProxyMaker;-><init>(Lcom/sun/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)V

    .line 91
    invoke-direct {v0}, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->generateAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method private generateValue(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Attribute;)Ljava/lang/Object;
    .registers 4

    .line 155
    new-instance v0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;-><init>(Lcom/sun/tools/javac/model/AnnotationProxyMaker;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 156
    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->getValue(Lcom/sun/tools/javac/code/Attribute;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getAllReflectedValues()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    invoke-direct {p0}, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->getAllValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute;

    invoke-direct {p0, v1, v0}, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->generateValue(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Attribute;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_1
    return-object v2
.end method

.method private getAllValues()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->anno:Lcom/sun/tools/javac/code/Attribute$Compound;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 135
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 136
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 137
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 138
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getDefaultValue()Lcom/sun/tools/javac/code/Attribute;

    move-result-object v3

    .line 139
    if-eqz v3, :cond_0

    .line 140
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->anno:Lcom/sun/tools/javac/code/Attribute$Compound;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    .line 145
    iget-object v3, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 146
    :cond_2
    return-object v2
.end method
