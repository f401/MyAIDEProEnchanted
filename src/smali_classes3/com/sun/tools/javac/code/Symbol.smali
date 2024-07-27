.class public abstract Lcom/sun/tools/javac/code/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"

# interfaces
.implements Ljavax/lang/model/element/Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/Symbol$ClassSymbol;,
        Lcom/sun/tools/javac/code/Symbol$Completer;,
        Lcom/sun/tools/javac/code/Symbol$CompletionFailure;,
        Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;,
        Lcom/sun/tools/javac/code/Symbol$MethodSymbol;,
        Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;,
        Lcom/sun/tools/javac/code/Symbol$PackageSymbol;,
        Lcom/sun/tools/javac/code/Symbol$TypeSymbol;,
        Lcom/sun/tools/javac/code/Symbol$VarSymbol;,
        Lcom/sun/tools/javac/code/Symbol$Visitor;
    }
.end annotation


# instance fields
.field public attributes_field:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation
.end field

.field public completer:Lcom/sun/tools/javac/code/Symbol$Completer;

.field public erasure_field:Lcom/sun/tools/javac/code/Type;

.field public flags_field:J

.field public kind:I

.field public name:Lcom/sun/tools/javac/util/Name;

.field public owner:Lcom/sun/tools/javac/code/Symbol;

.field public type:Lcom/sun/tools/javac/code/Type;


# direct methods
.method public constructor <init>(IJLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 9

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    .line 118
    iput-wide p2, p0, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 119
    iput-object p5, p0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 120
    iput-object p6, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 121
    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 122
    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    .line 123
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    .line 124
    iput-object p4, p0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 125
    return-void
.end method

.method private hiddenIn(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Types;)Z
    .registers 13

    const-wide/16 v8, 0x8

    const-wide/16 v6, 0x0

    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 340
    iget v0, p0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v8

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    move v0, v1

    .line 354
    :goto_0
    return v0

    .line 355
    :cond_0
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-object p1, v0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v0, p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 344
    :goto_1
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_6

    .line 345
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v2, p0, :cond_3

    move v0, v1

    goto :goto_0

    .line 346
    :cond_3
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v3, p0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-ne v2, v3, :cond_5

    if-ne v3, v4, :cond_4

    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 348
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 349
    invoke-virtual {p2, v2, v3}, Lcom/sun/tools/javac/code/Types;->isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 350
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    :cond_5
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_1

    .line 353
    :cond_6
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p2, v0}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 354
    iget v2, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/code/Symbol$Visitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 135
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Symbol$Visitor;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asMemberOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;
    .registers 4

    .line 399
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public asType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public bridge synthetic asType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Attribute$Compound;
    .registers 5

    .line 89
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 90
    iget-object v2, v0, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, p1, :cond_0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public complete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 421
    invoke-interface {v0, p0}, Lcom/sun/tools/javac/code/Symbol$Completer;->complete(Lcom/sun/tools/javac/code/Symbol;)V

    .line 423
    :cond_0
    return-void
.end method

.method public enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 4

    .line 283
    move-object v0, p0

    .line 284
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 286
    :cond_0
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0

    .line 288
    :cond_1
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    return-object v0
.end method

.method public erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public exists()Z
    .registers 2

    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public externalType(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 183
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 184
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, v0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 186
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 187
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 188
    new-instance v0, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 191
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public flags()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    return-wide v0
.end method

.method public flatName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 252
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    invoke-static {p0, p1}, Lcom/sun/tools/javac/model/JavacElements;->getAnnotation(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationMirrors()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosedElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 461
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    return-object v0
.end method

.method public bridge synthetic getEnclosingElement()Ljavax/lang/model/element/Element;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/element/ElementKind;
    .registers 2

    .line 440
    sget-object v0, Ljavax/lang/model/element/ElementKind;->OTHER:Ljavax/lang/model/element/ElementKind;

    return-object v0
.end method

.method public getModifiers()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Flags;->asModifierSet(J)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public getSimpleName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getSimpleName()Ljavax/lang/model/element/Name;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            ">;"
        }
    .end annotation

    .line 465
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    .line 466
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 467
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasOuterInstance()Z
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 277
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x400200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnonymous()Z
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, v0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnclosedBy(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z
    .registers 4

    const/4 v0, 0x1

    .line 332
    :goto_0
    iget v1, p0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v1, v0, :cond_1

    .line 333
    if-ne p0, p1, :cond_0

    .line 334
    :goto_1
    return v0

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z
    .registers 15

    const-wide/16 v10, 0x200

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 367
    iget-wide v2, p0, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, 0x7

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v10

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 372
    :cond_3
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v2, p1, :cond_2

    goto :goto_0

    .line 377
    :cond_4
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    move-object v2, p1

    .line 379
    :goto_1
    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v2, v4, :cond_8

    .line 381
    :goto_2
    iget-object v4, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v4, v4, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_5

    .line 382
    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_2

    .line 383
    :cond_5
    iget-object v4, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v4

    if-nez v4, :cond_0

    .line 385
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/32 v6, 0x1000000

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_7

    .line 380
    :cond_6
    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p2, v2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_1

    .line 387
    :cond_7
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v4

    if-eq v4, v3, :cond_6

    move v0, v1

    .line 388
    goto :goto_0

    .line 390
    :cond_8
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v10

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public isInner()Z
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterface()Z
    .registers 5

    .line 202
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocal()Z
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v2, v1, 0x14

    if-nez v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 223
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    .line 223
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v0, p1, :cond_0

    .line 325
    invoke-virtual {p1, v0, p2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/code/Symbol;->hiddenIn(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 323
    :goto_0
    return v0

    .line 327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPolymorphicSignatureGeneric()Z
    .registers 5

    .line 207
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x12000000000L

    and-long/2addr v0, v2

    const-wide v2, 0x10000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPolymorphicSignatureInstance()Z
    .registers 5

    const-wide v2, 0x12000000000L

    .line 212
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatic()Z
    .registers 7

    const-wide/16 v4, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 198
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z
    .registers 5

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSubClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public location()Lcom/sun/tools/javac/code/Symbol;
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 153
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0
.end method

.method public location(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p2, p1, v0}, Lcom/sun/tools/javac/code/Types;->asOuterSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0
.end method

.method public members()Lcom/sun/tools/javac/code/Scope;
    .registers 2

    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 5

    .line 294
    .line 295
    const/4 v0, 0x0

    move-object v1, p0

    .line 296
    :goto_0
    iget v2, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 298
    iget-object p0, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    move-object v0, v1

    move-object v1, p0

    goto :goto_0

    .line 300
    :cond_0
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    return-object v0
.end method

.method public overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z
    .registers 6

    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
    .registers 4

    .line 306
    move-object v0, p0

    .line 307
    :goto_0
    iget v1, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 308
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0

    .line 310
    :cond_0
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
