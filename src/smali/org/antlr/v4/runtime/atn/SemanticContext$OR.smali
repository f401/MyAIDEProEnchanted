.class public Lorg/antlr/v4/runtime/atn/SemanticContext$OR;
.super Lorg/antlr/v4/runtime/atn/SemanticContext$Operator;
.source "SemanticContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/SemanticContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OR"
.end annotation


# instance fields
.field public final opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V
    .registers 5

    .line 305
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/SemanticContext$Operator;-><init>()V

    .line 306
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 307
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;

    if-eqz v1, :cond_18

    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b

    .line 308
    :cond_18
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    :goto_1b
    instance-of p1, p2, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;

    if-eqz p1, :cond_2b

    check-cast p2, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;

    iget-object p1, p2, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2e

    .line 310
    :cond_2b
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    :goto_2e
    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/SemanticContext;->access$000(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 313
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_41

    .line 315
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    .line 316
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_41
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/antlr/v4/runtime/atn/SemanticContext;

    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 330
    :cond_4
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 331
    :cond_a
    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;

    .line 332
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public eval(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")Z"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 350
    invoke-virtual {v4, p1, p2}, Lorg/antlr/v4/runtime/atn/SemanticContext;->eval(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public evalPrecedence(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")",
            "Lorg/antlr/v4/runtime/atn/SemanticContext;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    const/4 v6, 0x1

    if-ge v4, v2, :cond_28

    aget-object v7, v1, v4

    .line 360
    invoke-virtual {v7, p1, p2}, Lorg/antlr/v4/runtime/atn/SemanticContext;->evalPrecedence(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object v8

    if-eq v8, v7, :cond_17

    goto :goto_18

    :cond_17
    const/4 v6, 0x0

    :goto_18
    or-int/2addr v5, v6

    .line 362
    sget-object v6, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-ne v8, v6, :cond_20

    .line 364
    sget-object p1, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    return-object p1

    :cond_20
    if-eqz v8, :cond_25

    .line 368
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_28
    if-nez v5, :cond_2b

    return-object p0

    .line 376
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 p1, 0x0

    return-object p1

    .line 381
    :cond_33
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext;

    .line 382
    :goto_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v6, p2, :cond_4c

    .line 383
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/atn/SemanticContext;->or(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_4c
    return-object p1
.end method

.method public getOperands()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/atn/SemanticContext;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 337
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    const-class v1, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->hashCode([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 391
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "||"

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Utils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
