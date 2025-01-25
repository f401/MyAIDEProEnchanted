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
    .registers 1

    .line 35
    new-instance v0, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/SemanticContext$Predicate;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;)Ljava/util/List;
    .registers 1

    .line 30
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/SemanticContext;->filterPrecedencePredicates(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static and(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;
    .registers 3

    if-eqz p0, :cond_1f

    .line 396
    sget-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-ne p0, v0, :cond_7

    goto :goto_1f

    :cond_7
    if-eqz p1, :cond_1e

    if-ne p1, v0, :cond_c

    goto :goto_1e

    .line 398
    :cond_c
    new-instance v0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;-><init>(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 399
    iget-object p0, v0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    array-length p0, p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1d

    .line 400
    iget-object p0, v0, Lorg/antlr/v4/runtime/atn/SemanticContext$AND;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1d
    return-object v0

    :cond_1e
    :goto_1e
    return-object p0

    :cond_1f
    :goto_1f
    return-object p1
.end method

.method private static filterPrecedencePredicates(Ljava/util/Collection;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/antlr/v4/runtime/atn/SemanticContext;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;",
            ">;"
        }
    .end annotation

    .line 424
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 425
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/SemanticContext;

    .line 426
    instance-of v2, v1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    if-eqz v2, :cond_5

    if-nez v0, :cond_1c

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    :cond_1c
    check-cast v1, Lorg/antlr/v4/runtime/atn/SemanticContext$PrecedencePredicate;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_25
    if-nez v0, :cond_2c

    .line 437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2c
    return-object v0
.end method

.method public static or(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;
    .registers 3

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    .line 413
    :cond_6
    sget-object v0, Lorg/antlr/v4/runtime/atn/SemanticContext;->NONE:Lorg/antlr/v4/runtime/atn/SemanticContext;

    if-eq p0, v0, :cond_1e

    if-ne p1, v0, :cond_d

    goto :goto_1e

    .line 414
    :cond_d
    new-instance v0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;-><init>(Lorg/antlr/v4/runtime/atn/SemanticContext;Lorg/antlr/v4/runtime/atn/SemanticContext;)V

    .line 415
    iget-object p0, v0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    array-length p0, p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1e

    .line 416
    iget-object p0, v0, Lorg/antlr/v4/runtime/atn/SemanticContext$OR;->opnds:[Lorg/antlr/v4/runtime/atn/SemanticContext;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1e
    :goto_1e
    return-object v0
.end method


# virtual methods
.method public abstract eval(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;",
            "Lorg/antlr/v4/runtime/RuleContext;",
            ")Z"
        }
    .end annotation
.end method

.method public evalPrecedence(Lorg/antlr/v4/runtime/Recognizer;Lorg/antlr/v4/runtime/RuleContext;)Lorg/antlr/v4/runtime/atn/SemanticContext;
    .registers 3
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

    return-object p0
.end method
