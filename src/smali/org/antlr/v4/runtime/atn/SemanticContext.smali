.class public abstract Lorg/antlr/v4/runtime/atn/SemanticContext;
.super Ljava/lang/Object;
.source "SemanticContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/SemanticContext$AND;,
        Lorg/antlr/v4/runtime/atn/SemanticContext$OR;,
        Lorg/antlr/v4/runtime/atn/SemanticContext$Operator;,
        Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;,
        Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;
    }
.end annotation


# static fields
.field public static final NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;)Ljava/util/List;
    .locals 1

    .line 30
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/SemanticContext;->filterPrecedencePredicates(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static and(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;
    .locals 3

    if-eqz p0, :cond_0

    .line 396
    sget-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-ne p0, v0, :cond_2

    :cond_0
    move-object p0, p1

    .line 400
    :cond_1
    :goto_0
    return-object p0

    .line 396
    :cond_2
    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    .line 398
    new-instance v0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;-><init>(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 399
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 400
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    const/4 v1, 0x0

    aget-object p0, v0, v1

    goto :goto_0

    :cond_3
    move-object p0, v0

    goto :goto_0
.end method

.method private static filterPrecedencePredicates(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/antlr/v4/runtime/atn/SemanticContext;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;",
            ">;"
        }
    .end annotation

    .line 424
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/SemanticContext;

    .line 426
    instance-of v3, v0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    :cond_1
    check-cast v0, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static or(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;
    .locals 3

    if-nez p0, :cond_0

    .line 416
    :goto_0
    return-object p1

    .line 4294967295
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 413
    :cond_1
    sget-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq p0, v0, :cond_2

    if-ne p1, v0, :cond_3

    :cond_2
    move-object p1, v0

    .line 416
    goto :goto_0

    .line 414
    :cond_3
    new-instance v0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;-><init>(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 415
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 416
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    const/4 v1, 0x0

    aget-object p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abstract eval(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")Z"
        }
    .end annotation
.end method

.method public evalPrecedence(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer",
            "<**>;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")",
            "Lorg/antlr/v4/runtime/atn/SemanticContext;"
        }
    .end annotation

    return-object p0
.end method
