.class public Lcom/sun/tools/javac/model/JavacElements;
.super Ljava/lang/Object;
.source "JavacElements.java"

# interfaces
.implements Ljavax/lang/model/util/Elements;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/model/JavacElements$1TS;,
        Lcom/sun/tools/javac/model/JavacElements$1Vis;,
        Lcom/sun/tools/javac/model/JavacElements$2Vis;
    }
.end annotation


# instance fields
.field private enter:Lcom/sun/tools/javac/comp/Enter;

.field private javaCompiler:Lcom/sun/tools/javac/main/JavaCompiler;

.field private names:Lcom/sun/tools/javac/util/Names;

.field private syms:Lcom/sun/tools/javac/code/Symtab;

.field private types:Lcom/sun/tools/javac/code/Types;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->setContext(Lcom/sun/tools/javac/util/Context;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/model/JavacElements;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/model/JavacElements;->scanForAssign(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/model/JavacElements;Lcom/sun/tools/javac/code/Attribute$Compound;Lcom/sun/tools/javac/code/Attribute;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/model/JavacElements;->matchAnnoToTree(Lcom/sun/tools/javac/code/Attribute$Compound;Lcom/sun/tools/javac/code/Attribute;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/model/JavacElements;)Lcom/sun/tools/javac/code/Types;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->types:Lcom/sun/tools/javac/code/Types;

    return-object v0
.end method

.method private addMembers(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Type;)V
    .registers 13

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 410
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v6, v0

    :goto_d
    if-eqz v6, :cond_97

    .line 411
    iget-object v0, v6, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v3, v0

    .line 412
    :goto_1a
    iget-object v0, v3, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_5f

    .line 413
    iget-object v0, v3, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget-object v1, v6, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v0, v1, :cond_59

    iget-object v0, v3, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 414
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v8, 0x1000

    and-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-nez v0, :cond_59

    .line 416
    iget-object v0, v3, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_59

    iget-object v0, v3, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    iget-object v1, v6, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 417
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/model/JavacElements;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 410
    :cond_55
    :goto_55
    iget-object v0, v6, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v6, v0

    goto :goto_d

    .line 421
    :cond_59
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v3, v0

    goto :goto_1a

    .line 423
    :cond_5f
    iget-object v0, v6, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, v1, :cond_93

    move v0, v4

    .line 424
    :goto_6a
    iget-object v1, v6, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    .line 425
    sget-object v2, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_98

    sget-object v2, Ljavax/lang/model/element/ElementKind;->INSTANCE_INIT:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_98

    sget-object v2, Ljavax/lang/model/element/ElementKind;->STATIC_INIT:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_95

    move v1, v4

    .line 428
    :goto_7d
    if-eqz v0, :cond_8d

    if-nez v1, :cond_55

    iget-object v0, v6, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/model/JavacElements;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 429
    :cond_8d
    iget-object v0, v6, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    goto :goto_55

    :cond_93
    move v0, v5

    .line 423
    goto :goto_6a

    :cond_95
    move v1, v5

    .line 425
    goto :goto_7d

    .line 431
    :cond_97
    return-void

    :cond_98
    move v1, v4

    goto :goto_7d
.end method

.method private static cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 631
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 633
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 632
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static containsAnnoOfType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")Z"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 479
    iget-object v0, v0, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v2, :cond_4

    .line 480
    const/4 v0, 0x1

    .line 482
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static getAnnotation(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .line 118
    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    .line 119
    const/4 v0, 0x0

    move-object v1, v0

    .line 120
    :goto_8
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->java_lang_Object:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v3, :cond_1c

    .line 121
    invoke-static {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getAnnotation(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 122
    if-nez v1, :cond_1c

    if-nez v2, :cond_1d

    .line 129
    :cond_1c
    return-object v1

    .line 124
    :cond_1d
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 125
    iget v3, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1c

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 127
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-object p0, v0

    .line 128
    goto :goto_8
.end method

.method public static getAnnotation(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 105
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 107
    iget-object v3, v0, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 108
    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/AnnotationProxyMaker;->generateAnnotation(Lcom/sun/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 109
    :goto_34
    return-object v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34

    .line 103
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not an annotation type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEnterEnv(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/comp/Env;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 617
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    .line 618
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    .line 620
    :goto_9
    if-eqz p1, :cond_15

    .line 621
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->enter:Lcom/sun/tools/javac/comp/Enter;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Enter;->getEnv(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 620
    :goto_11
    return-object v0

    .line 619
    :cond_12
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    goto :goto_9

    .line 622
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private getTreeAndTopLevel(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 570
    const-class v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 571
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/model/JavacElements;->getEnterEnv(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v2

    .line 572
    if-nez v2, :cond_11

    move-object v0, v1

    .line 577
    :goto_10
    return-object v0

    .line 574
    :cond_11
    iget-object v3, v2, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, v3}, Lcom/sun/tools/javac/tree/TreeInfo;->declarationFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v3

    .line 575
    if-eqz v3, :cond_1d

    iget-object v0, v2, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    if-nez v0, :cond_1f

    :cond_1d
    move-object v0, v1

    .line 576
    goto :goto_10

    .line 577
    :cond_1f
    new-instance v0, Lcom/sun/tools/javac/util/Pair;

    iget-object v1, v2, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-direct {v0, v3, v1}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/model/JavacElements;
    .registers 2

    .line 70
    const-class v0, Lcom/sun/tools/javac/model/JavacElements;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/model/JavacElements;

    .line 71
    if-nez v0, :cond_f

    .line 72
    new-instance v0, Lcom/sun/tools/javac/model/JavacElements;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/model/JavacElements;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 73
    :cond_f
    return-object v0
.end method

.method private isInherited(Lcom/sun/tools/javac/code/Type;)Z
    .registers 5

    .line 465
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 466
    iget-object v0, v0, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/model/JavacElements;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->inheritedType:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v2, :cond_a

    .line 467
    const/4 v0, 0x1

    .line 469
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private matchAnnoToTree(Lcom/sun/tools/javac/code/Attribute$Compound;Lcom/sun/tools/javac/code/Attribute;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 6

    .line 269
    if-ne p2, p1, :cond_f

    .line 270
    iget-object v0, p3, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_d

    .line 310
    :goto_c
    return-object p3

    .line 270
    :cond_d
    const/4 p3, 0x0

    goto :goto_c

    .line 308
    :cond_f
    new-instance v0, Lcom/sun/tools/javac/model/JavacElements$2Vis;

    invoke-direct {v0, p0, p3, p1}, Lcom/sun/tools/javac/model/JavacElements$2Vis;-><init>(Lcom/sun/tools/javac/model/JavacElements;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Attribute$Compound;)V

    .line 309
    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Attribute;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    .line 310
    iget-object p3, v0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->result:Lcom/sun/tools/javac/tree/JCTree;

    goto :goto_c
.end method

.method private matchAnnoToTree(Lcom/sun/tools/javac/code/Attribute$Compound;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 251
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 252
    invoke-virtual {p3}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    .line 253
    invoke-direct {p0, p1, v1, v0}, Lcom/sun/tools/javac/model/JavacElements;->matchAnnoToTree(Lcom/sun/tools/javac/code/Attribute$Compound;Lcom/sun/tools/javac/code/Attribute;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_15

    .line 258
    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private matchAnnoToTree(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/Element;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 7

    .line 218
    const-class v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v0, p2}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 234
    new-instance v2, Lcom/sun/tools/javac/model/JavacElements$1Vis;

    invoke-direct {v2, p0}, Lcom/sun/tools/javac/model/JavacElements$1Vis;-><init>(Lcom/sun/tools/javac/model/JavacElements;)V

    .line 235
    invoke-virtual {p3, v2}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 236
    iget-object v1, v2, Lcom/sun/tools/javac/model/JavacElements$1Vis;->result:Lcom/sun/tools/javac/util/List;

    if-nez v1, :cond_16

    .line 237
    const/4 v0, 0x0

    .line 238
    :goto_15
    return-object v0

    :cond_16
    const-class v1, Lcom/sun/tools/javac/code/Attribute$Compound;

    invoke-static {v1, p1}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 239
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v2, v2, Lcom/sun/tools/javac/model/JavacElements$1Vis;->result:Lcom/sun/tools/javac/util/List;

    .line 238
    invoke-direct {p0, v1, v0, v2}, Lcom/sun/tools/javac/model/JavacElements;->matchAnnoToTree(Lcom/sun/tools/javac/code/Attribute$Compound;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    goto :goto_15
.end method

.method private nameToSymbol(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/tools/javac/code/Symbol;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    .line 156
    const-class v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-ne p2, v0, :cond_44

    .line 157
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 161
    :goto_15
    if-nez v0, :cond_1d

    .line 162
    :try_start_17
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->javaCompiler:Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/main/JavaCompiler;->resolveIdent(Ljava/lang/String;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 164
    :cond_1d
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->complete()V

    .line 166
    iget v3, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_4f

    .line 167
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->exists()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 169
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;
    :try_end_42
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_17 .. :try_end_42} :catch_51

    :goto_42
    move-object v1, v0

    .line 173
    :goto_43
    return-object v1

    .line 158
    :cond_44
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->packages:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_15

    :cond_4f
    move-object v0, v1

    .line 171
    goto :goto_42

    .line 172
    :catch_51
    move-exception v0

    goto :goto_43
.end method

.method private scanForAssign(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 337
    new-instance v0, Lcom/sun/tools/javac/model/JavacElements$1TS;

    invoke-direct {v0, p0, p2, p1}, Lcom/sun/tools/javac/model/JavacElements$1TS;-><init>(Lcom/sun/tools/javac/model/JavacElements;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 338
    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 339
    iget-object v0, v0, Lcom/sun/tools/javac/model/JavacElements$1TS;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method


# virtual methods
.method public getAllAnnotationMirrors(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    .line 441
    const-class v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 442
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 443
    :goto_c
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v3, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v3, :cond_30

    .line 444
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 445
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_30

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/model/JavacElements;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, v3, :cond_31

    .line 458
    :cond_30
    return-object v2

    .line 449
    :cond_31
    iget-object v3, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 450
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 452
    iget-object v5, v0, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v5}, Lcom/sun/tools/javac/model/JavacElements;->isInherited(Lcom/sun/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_61

    iget-object v5, v0, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    .line 453
    invoke-static {v2, v5}, Lcom/sun/tools/javac/model/JavacElements;->containsAnnoOfType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 454
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_5c
    move-object v1, v0

    .line 456
    goto :goto_3c

    :cond_5e
    move-object v0, v3

    move-object v2, v1

    .line 457
    goto :goto_c

    :cond_61
    move-object v0, v1

    goto :goto_5c
.end method

.method public bridge synthetic getAllAnnotationMirrors(Ljavax/lang/model/element/Element;)Ljava/util/List;
    .registers 3

    .line 61
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getAllAnnotationMirrors(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllMembers(Ljavax/lang/model/element/TypeElement;)Lcom/sun/tools/javac/model/FilteredMemberList;
    .registers 5

    .line 400
    const-class v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 401
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope;->dupUnshared()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/sun/tools/javac/model/JavacElements;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Types;->closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 404
    invoke-direct {p0, v1, v0}, Lcom/sun/tools/javac/model/JavacElements;->addMembers(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_1e

    .line 405
    :cond_2e
    new-instance v0, Lcom/sun/tools/javac/model/FilteredMemberList;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/model/FilteredMemberList;-><init>(Lcom/sun/tools/javac/code/Scope;)V

    return-object v0
.end method

.method public bridge synthetic getAllMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;
    .registers 3

    .line 61
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getAllMembers(Ljavax/lang/model/element/TypeElement;)Lcom/sun/tools/javac/model/FilteredMemberList;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryName(Ljavax/lang/model/element/TypeElement;)Lcom/sun/tools/javac/util/Name;
    .registers 3

    .line 376
    const-class v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBinaryName(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/Name;
    .registers 3

    .line 61
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getBinaryName(Ljavax/lang/model/element/TypeElement;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getConstantExpression(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 544
    invoke-static {p1}, Lcom/sun/tools/javac/util/Constants;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocComment(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    .line 356
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getTreeAndTopLevel(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v1

    .line 357
    if-nez v1, :cond_9

    move-object v0, v2

    .line 363
    :goto_8
    return-object v0

    .line 359
    :cond_9
    iget-object v0, v1, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 360
    iget-object v1, v1, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 361
    iget-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Ljava/util/Map;

    if-nez v3, :cond_17

    move-object v0, v2

    .line 362
    goto :goto_8

    .line 363
    :cond_17
    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8
.end method

.method public getElementValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation

    .line 381
    const-class v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 382
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    .line 383
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Attribute$Compound;->getElementValues()Ljava/util/Map;

    move-result-object v2

    .line 386
    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 387
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 388
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getDefaultValue()Lcom/sun/tools/javac/code/Attribute;

    move-result-object v3

    .line 389
    if-eqz v3, :cond_20

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 390
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 393
    :cond_3e
    return-object v2
.end method

.method public getName(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/util/Name;
    .registers 4

    .line 562
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->names:Lcom/sun/tools/javac/util/Names;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName(Ljava/lang/CharSequence;)Ljavax/lang/model/element/Name;
    .registers 3

    .line 61
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getName(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getPackageElement(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
    .registers 4

    .line 134
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 136
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->unnamedPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 137
    :goto_10
    return-object v0

    :cond_11
    invoke-static {v0}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 138
    const-class v1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/model/JavacElements;->nameToSymbol(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    goto :goto_10

    .line 139
    :cond_20
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bridge synthetic getPackageElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/PackageElement;
    .registers 3

    .line 61
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getPackageElement(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    return-object v0
.end method

.method public getPackageOf(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;
    .registers 3

    .line 367
    const-class v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    return-object v0
.end method

.method public getSourcePosition(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/model/JavacSourcePosition;
    .registers 6

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getTreeAndTopLevel(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v1

    .line 179
    if-nez v1, :cond_9

    move-object v0, v2

    .line 186
    :goto_8
    return-object v0

    .line 181
    :cond_9
    iget-object v0, v1, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 182
    iget-object v1, v1, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 183
    iget-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 184
    if-nez v3, :cond_17

    move-object v0, v2

    .line 185
    goto :goto_8

    .line 186
    :cond_17
    new-instance v2, Lcom/sun/tools/javac/model/JavacSourcePosition;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/sun/tools/javac/model/JavacSourcePosition;-><init>(Ljavax/tools/JavaFileObject;ILcom/sun/tools/javac/util/Position$LineMap;)V

    move-object v0, v2

    goto :goto_8
.end method

.method public getSourcePosition(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)Lcom/sun/tools/javac/model/JavacSourcePosition;
    .registers 8

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getTreeAndTopLevel(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v1

    .line 191
    if-nez v1, :cond_9

    move-object v0, v2

    .line 202
    :goto_8
    return-object v0

    .line 193
    :cond_9
    iget-object v0, v1, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 194
    iget-object v1, v1, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 195
    iget-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 196
    if-nez v3, :cond_17

    move-object v0, v2

    .line 197
    goto :goto_8

    .line 199
    :cond_17
    invoke-direct {p0, p2, p1, v0}, Lcom/sun/tools/javac/model/JavacElements;->matchAnnoToTree(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/Element;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v4

    .line 200
    if-nez v4, :cond_1f

    move-object v0, v2

    .line 201
    goto :goto_8

    .line 202
    :cond_1f
    new-instance v0, Lcom/sun/tools/javac/model/JavacSourcePosition;

    iget v2, v4, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    invoke-direct {v0, v3, v2, v1}, Lcom/sun/tools/javac/model/JavacSourcePosition;-><init>(Ljavax/tools/JavaFileObject;ILcom/sun/tools/javac/util/Position$LineMap;)V

    goto :goto_8
.end method

.method public getSourcePosition(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/tools/javac/model/JavacSourcePosition;
    .registers 5

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/model/JavacElements;->getSourcePosition(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)Lcom/sun/tools/javac/model/JavacSourcePosition;

    move-result-object v0

    return-object v0
.end method

.method public getTree(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 347
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getTreeAndTopLevel(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTreeAndTopLevel(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/tools/javac/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationValue;",
            ")",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 591
    if-nez p1, :cond_4

    .line 608
    :cond_3
    :goto_3
    return-object v0

    .line 594
    :cond_4
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getTreeAndTopLevel(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v1

    .line 595
    if-eqz v1, :cond_3

    .line 598
    if-nez p2, :cond_e

    move-object v0, v1

    .line 599
    goto :goto_3

    .line 601
    :cond_e
    iget-object v0, v1, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0, p2, p1, v0}, Lcom/sun/tools/javac/model/JavacElements;->matchAnnoToTree(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/Element;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    .line 602
    if-nez v2, :cond_1a

    move-object v0, v1

    .line 603
    goto :goto_3

    .line 608
    :cond_1a
    new-instance v0, Lcom/sun/tools/javac/util/Pair;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public getTypeElement(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 4

    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 145
    const-class v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/model/JavacElements;->nameToSymbol(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 144
    :goto_12
    return-object v0

    .line 146
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public bridge synthetic getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;
    .registers 3

    .line 61
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getTypeElement(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    return-object v0
.end method

.method public hides(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;)Z
    .registers 9

    const/4 v2, 0x0

    .line 486
    const-class v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 487
    const-class v1, Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v1, p2}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    .line 491
    if-eq v0, v1, :cond_1f

    iget v3, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v4, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v3, v4, :cond_1f

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v4, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    if-eq v3, v4, :cond_21

    :cond_1f
    move v0, v2

    .line 518
    :goto_20
    return v0

    .line 499
    :cond_21
    iget v3, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3b

    .line 500
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/sun/tools/javac/model/JavacElements;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v5, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 501
    invoke-virtual {v3, v4, v5}, Lcom/sun/tools/javac/code/Types;->isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v3

    if-nez v3, :cond_3b

    :cond_39
    move v0, v2

    .line 502
    goto :goto_20

    .line 509
    :cond_3b
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 510
    iget-object v3, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    .line 511
    if-eqz v0, :cond_53

    if-eqz v3, :cond_53

    iget-object v4, p0, Lcom/sun/tools/javac/model/JavacElements;->types:Lcom/sun/tools/javac/code/Types;

    .line 512
    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v3

    if-nez v3, :cond_55

    :cond_53
    move v0, v2

    .line 513
    goto :goto_20

    .line 518
    :cond_55
    iget-object v2, p0, Lcom/sun/tools/javac/model/JavacElements;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    goto :goto_20
.end method

.method public isDeprecated(Ljavax/lang/model/element/Element;)Z
    .registers 6

    .line 371
    const-class v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 372
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z
    .registers 10

    const/4 v3, 0x0

    .line 523
    const-class v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 524
    const-class v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-static {v1, p2}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 525
    const-class v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v2, p3}, Lcom/sun/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 527
    iget-object v4, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    if-ne v4, v5, :cond_39

    if-eq v0, v1, :cond_39

    .line 534
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isStatic()Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, p0, Lcom/sun/tools/javac/model/JavacElements;->types:Lcom/sun/tools/javac/code/Types;

    .line 537
    invoke-virtual {v1, v2, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, p0, Lcom/sun/tools/javac/model/JavacElements;->types:Lcom/sun/tools/javac/code/Types;

    .line 540
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    .line 527
    :goto_38
    return v0

    :cond_39
    move v0, v3

    goto :goto_38
.end method

.method public varargs printElements(Ljava/io/Writer;[Ljavax/lang/model/element/Element;)V
    .registers 7

    .line 557
    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_19

    aget-object v0, p2, v1

    .line 558
    new-instance v3, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    invoke-direct {v3, p1, p0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;-><init>(Ljava/io/Writer;Ljavax/lang/model/util/Elements;)V

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visit(Ljavax/lang/model/element/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->flush()V

    .line 557
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 559
    :cond_19
    return-void
.end method

.method public setContext(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 88
    const-class v0, Lcom/sun/tools/javac/model/JavacElements;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 89
    invoke-static {p1}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->javaCompiler:Lcom/sun/tools/javac/main/JavaCompiler;

    .line 90
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 91
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->names:Lcom/sun/tools/javac/util/Names;

    .line 92
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->types:Lcom/sun/tools/javac/code/Types;

    .line 93
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Enter;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements;->enter:Lcom/sun/tools/javac/comp/Enter;

    .line 94
    return-void
.end method
