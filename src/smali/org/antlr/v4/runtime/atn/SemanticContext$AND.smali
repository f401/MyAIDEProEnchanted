.class public Lorg/antlr/v4/runtime/atn/SemanticContext$AND;
.super Lorg/antlr/v4/runtime/atn/SemanticContext$Operator;
.source "SemanticContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/SemanticContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AND"
.end annotation


# instance fields
.field public final opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V
    .registers 5

    .line 208
    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/SemanticContext$Operator;-><init>()V

    .line 209
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 210
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;

    if-eqz v1, :cond_18

    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b

    .line 211
    :cond_18
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_1b
    instance-of p1, p2, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;

    if-eqz p1, :cond_2b

    check-cast p2, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;

    iget-object p1, p2, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2e

    .line 213
    :cond_2b
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    :goto_2e
    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/SemanticContext;->access$000(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 216
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_41

    .line 218
    invoke-static {p1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    .line 219
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_41
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/antlr/v4/runtime/atn/SemanticContext;

    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 233
    :cond_4
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 234
    :cond_a
    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;

    .line 235
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

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

    .line 252
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 253
    invoke-virtual {v4, p1, p2}, Lorg/antlr/v4/runtime/atn/SemanticContext;->eval(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Z

    move-result v4

    if-nez v4, :cond_10

    return v2

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    const/4 p1, 0x1

    return p1
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

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    const/4 v6, 0x1

    if-ge v4, v2, :cond_27

    aget-object v7, v1, v4

    .line 263
    invoke-virtual {v7, p1, p2}, Lorg/antlr/v4/runtime/atn/SemanticContext;->evalPrecedence(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

    move-result-object v8

    if-eq v8, v7, :cond_17

    goto :goto_18

    :cond_17
    const/4 v6, 0x0

    :goto_18
    or-int/2addr v5, v6

    if-nez v8, :cond_1d

    const/4 p1, 0x0

    return-object p1

    .line 269
    :cond_1d
    sget-object v6, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq v8, v6, :cond_24

    .line 271
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_27
    if-nez v5, :cond_2a

    return-object p0

    .line 279
    :cond_2a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 281
    sget-object p1, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    return-object p1

    .line 284
    :cond_33
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/SemanticContext;

    .line 285
    :goto_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v6, p2, :cond_4c

    .line 286
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/atn/SemanticContext;->and(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;

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

    .line 227
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 240
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    const-class v1, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->hashCode([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 294
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "&&"

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Utils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
