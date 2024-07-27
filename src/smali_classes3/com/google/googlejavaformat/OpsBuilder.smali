.class public final Lcom/google/googlejavaformat/OpsBuilder;
.super Ljava/lang/Object;
.source "OpsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;,
        Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;,
        Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;
    }
.end annotation


# static fields
.field private static final SPACE:Lcom/google/googlejavaformat/Doc$Space;

.field private static final ZERO:Lcom/google/googlejavaformat/Indent$Const;


# instance fields
.field depth:I

.field private final input:Lcom/google/googlejavaformat/Input;

.field private inputPosition:I

.field private lastPartialFormatBoundary:I

.field private final ops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Lcom/google/googlejavaformat/Output;

.field private tokenI:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    sget-object v0, Lcom/google/googlejavaformat/Indent$Const;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    sput-object v0, Lcom/google/googlejavaformat/OpsBuilder;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    .line 38
    invoke-static {}, Lcom/google/googlejavaformat/Doc$Space;->make()Lcom/google/googlejavaformat/Doc$Space;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/OpsBuilder;->SPACE:Lcom/google/googlejavaformat/Doc$Space;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlejavaformat/Input;Lcom/google/googlejavaformat/Output;)V
    .registers 5

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    .line 45
    iput v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    .line 46
    iput v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    .line 47
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->inputPosition:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    .line 57
    iput-object p1, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    .line 58
    iput-object p2, p0, Lcom/google/googlejavaformat/OpsBuilder;->output:Lcom/google/googlejavaformat/Output;

    .line 59
    return-void
.end method

.method private add(Lcom/google/googlejavaformat/Op;)V
    .registers 3

    .line 123
    instance-of v0, p1, Lcom/google/googlejavaformat/OpenOp;

    if-eqz v0, :cond_1

    .line 124
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void

    .line 125
    :cond_1
    instance-of v0, p1, Lcom/google/googlejavaformat/CloseOp;

    if-eqz v0, :cond_0

    .line 126
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    .line 127
    if-gez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static getI(Lcom/google/googlejavaformat/Input$Token;)I
    .registers 4

    .line 62
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 63
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v2

    if-ltz v2, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    goto :goto_0
.end method

.method private static isForcedBreak(Lcom/google/googlejavaformat/Op;)Z
    .registers 2

    .line 71
    instance-of v0, p0, Lcom/google/googlejavaformat/Doc$Break;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/googlejavaformat/Doc$Break;

    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc$Break;->isForced()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeComment(Lcom/google/googlejavaformat/Input$Tok;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/Input$Tok;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Tok;->isSlashStarComment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0}, Lcom/google/googlejavaformat/Doc$Tok;->make(Lcom/google/googlejavaformat/Input$Tok;)Lcom/google/googlejavaformat/Doc$Tok;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/google/googlejavaformat/Doc$Tok;->make(Lcom/google/googlejavaformat/Input$Tok;)Lcom/google/googlejavaformat/Doc$Tok;

    move-result-object v0

    invoke-static {}, Lcom/google/googlejavaformat/Doc$Break;->makeForced()Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public actualSize(II)I
    .registers 8

    .line 84
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getPositionTokenMap()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableRangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    .line 85
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v1

    .line 86
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 87
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    move v1, v0

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getPositionTokenMap()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableRangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    .line 92
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v2

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlejavaformat/Input$Tok;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 93
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 94
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v4

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_3
    move v2, v0

    .line 97
    goto :goto_2

    .line 98
    :cond_1
    sub-int v0, v2, v1

    return v0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public actualStartColumn(I)Ljava/lang/Integer;
    .registers 8

    .line 105
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getPositionTokenMap()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableRangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    .line 106
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v1

    .line 107
    iget-object v2, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v2, v1}, Lcom/google/googlejavaformat/Input;->getLineNumber(I)I

    move-result v2

    .line 108
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 109
    iget-object v4, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/googlejavaformat/Input;->getLineNumber(I)I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 116
    :goto_1
    return-object v0

    .line 112
    :cond_0
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    move v1, v0

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final addAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 139
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->add(Lcom/google/googlejavaformat/Op;)V

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public final blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V
    .registers 5

    .line 403
    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->output:Lcom/google/googlejavaformat/Output;

    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v2, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    invoke-static {v0}, Lcom/google/googlejavaformat/OpsBuilder;->getI(Lcom/google/googlejavaformat/Input$Token;)I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/google/googlejavaformat/Output;->blankLine(ILcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 404
    return-void
.end method

.method public final breakOp()V
    .registers 4

    .line 302
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    sget-object v2, Lcom/google/googlejavaformat/OpsBuilder;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 303
    return-void
.end method

.method public final breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V
    .registers 5

    .line 363
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 364
    return-void
.end method

.method public final breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/Doc$FillMode;",
            "Ljava/lang/String;",
            "Lcom/google/googlejavaformat/Indent;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)V"
        }
    .end annotation

    .line 376
    invoke-static {p1, p2, p3, p4}, Lcom/google/googlejavaformat/Doc$Break;->make(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->add(Lcom/google/googlejavaformat/Op;)V

    .line 377
    return-void
.end method

.method public final breakOp(Lcom/google/googlejavaformat/Indent;)V
    .registers 4

    .line 311
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 312
    return-void
.end method

.method public final breakOp(Ljava/lang/String;)V
    .registers 4

    .line 343
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 344
    return-void
.end method

.method public final breakToFill()V
    .registers 4

    .line 318
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    sget-object v2, Lcom/google/googlejavaformat/OpsBuilder;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 319
    return-void
.end method

.method public final breakToFill(Ljava/lang/String;)V
    .registers 4

    .line 352
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 353
    return-void
.end method

.method public final build()Lcom/google/common/collect/ImmutableList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/google/googlejavaformat/OpsBuilder;->markForPartialFormat()V

    .line 414
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v11

    .line 415
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 416
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_12

    .line 417
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 418
    instance-of v1, v0, Lcom/google/googlejavaformat/Doc$Token;

    if-eqz v1, :cond_1c

    .line 424
    check-cast v0, Lcom/google/googlejavaformat/Doc$Token;

    .line 425
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc$Token;->getToken()Lcom/google/googlejavaformat/Input$Token;

    move-result-object v12

    move v10, v9

    .line 427
    :goto_1
    if-lez v10, :cond_0

    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    add-int/lit8 v2, v10, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/googlejavaformat/OpenOp;

    if-eqz v1, :cond_0

    .line 428
    add-int/lit8 v1, v10, -0x1

    move v10, v1

    goto :goto_1

    :cond_0
    move v8, v9

    .line 431
    :goto_2
    add-int/lit8 v1, v8, 0x1

    if-ge v1, v7, :cond_1

    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    add-int/lit8 v2, v8, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/googlejavaformat/CloseOp;

    if-eqz v1, :cond_1

    .line 432
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_2

    .line 434
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc$Token;->realOrImaginary()Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->isReal()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 439
    const/4 v5, 0x0

    .line 440
    const/4 v1, 0x0

    .line 441
    const/4 v3, 0x0

    .line 442
    const/4 v4, 0x0

    .line 443
    invoke-interface {v12}, Lcom/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v13

    move v2, v1

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/Input$Tok;

    .line 444
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isNewline()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 445
    add-int/lit8 v5, v5, 0x1

    move v1, v2

    :goto_4
    move v2, v1

    .line 446
    goto :goto_3

    :cond_2
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 447
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isSlashSlashComment()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    .line 452
    :goto_5
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc$Token;->getPlusIndentCommentsBefore()Lcom/google/googlejavaformat/Indent;

    move-result-object v3

    .line 449
    const-string v4, ""

    invoke-static {v2, v4, v3}, Lcom/google/googlejavaformat/Doc$Break;->make(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v2

    .line 447
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 453
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/google/googlejavaformat/OpsBuilder;->makeComment(Lcom/google/googlejavaformat/Input$Tok;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 454
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isSlashStarComment()Z

    move-result v6

    .line 455
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isJavadocComment()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/googlejavaformat/Doc$Break;->makeForced()Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 460
    :cond_3
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isSlashSlashComment()Z

    move-result v2

    if-nez v2, :cond_4

    .line 462
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isSlashStarComment()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isJavadocComment()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    const/4 v1, 0x1

    move v2, v1

    :goto_6
    const/4 v3, 0x1

    const/4 v5, 0x0

    move v1, v6

    move v4, v2

    goto :goto_4

    .line 447
    :cond_5
    sget-object v2, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    goto :goto_5

    .line 462
    :cond_6
    const/4 v1, 0x0

    move v2, v1

    goto :goto_6

    .line 465
    :cond_7
    if-eqz v4, :cond_8

    const/4 v1, 0x1

    if-le v5, v1, :cond_8

    .line 467
    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->output:Lcom/google/googlejavaformat/Output;

    invoke-interface {v12}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v4

    sget-object v6, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v1, v4, v6}, Lcom/google/googlejavaformat/Output;->blankLine(ILcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 465
    :cond_8
    if-eqz v3, :cond_c

    if-lez v5, :cond_c

    .line 470
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/google/googlejavaformat/Doc$Break;->makeForced()Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 475
    :cond_9
    :goto_7
    invoke-interface {v12}, Lcom/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :cond_a
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/Input$Tok;

    .line 476
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 477
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isJavadocComment()Z

    move-result v2

    if-nez v2, :cond_b

    .line 479
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isSlashStarComment()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 480
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc$Token;->breakAndIndentTrailingComment()Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    const/4 v2, 0x1

    move v3, v2

    .line 481
    :goto_9
    if-eqz v3, :cond_e

    .line 482
    sget-object v5, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    .line 487
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc$Token;->breakAndIndentTrailingComment()Lcom/google/common/base/Optional;

    move-result-object v2

    sget-object v6, Lcom/google/googlejavaformat/Indent$Const;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v2, v6}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlejavaformat/Indent;

    .line 484
    const-string v6, ""

    invoke-static {v5, v6, v2}, Lcom/google/googlejavaformat/Doc$Break;->make(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v2

    .line 482
    add-int/lit8 v5, v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 491
    :goto_a
    add-int/lit8 v2, v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/google/googlejavaformat/OpsBuilder;->makeComment(Lcom/google/googlejavaformat/Input$Tok;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v2, v1}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 492
    if-eqz v3, :cond_a

    .line 493
    add-int/lit8 v1, v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v3, ""

    sget-object v5, Lcom/google/googlejavaformat/OpsBuilder;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v2, v3, v5}, Lcom/google/googlejavaformat/Doc$Break;->make(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_8

    .line 471
    :cond_c
    if-eqz v2, :cond_9

    .line 472
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/googlejavaformat/OpsBuilder;->SPACE:Lcom/google/googlejavaformat/Doc$Space;

    invoke-interface {v11, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_7

    .line 480
    :cond_d
    const/4 v2, 0x0

    move v3, v2

    goto :goto_9

    .line 489
    :cond_e
    add-int/lit8 v2, v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lcom/google/googlejavaformat/OpsBuilder;->SPACE:Lcom/google/googlejavaformat/Doc$Space;

    invoke-interface {v11, v2, v5}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    move v0, v7

    .line 418
    :goto_b
    add-int/lit8 v9, v9, 0x1

    move v7, v0

    goto/16 :goto_0

    .line 503
    :cond_10
    invoke-interface {v12}, Lcom/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 504
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/google/googlejavaformat/Doc$Tok;->make(Lcom/google/googlejavaformat/Input$Tok;)Lcom/google/googlejavaformat/Doc$Tok;

    move-result-object v0

    invoke-interface {v11, v2, v0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_c

    .line 506
    :cond_11
    invoke-interface {v12}, Lcom/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 507
    add-int/lit8 v2, v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/google/googlejavaformat/Doc$Tok;->make(Lcom/google/googlejavaformat/Input$Tok;)Lcom/google/googlejavaformat/Doc$Tok;

    move-result-object v0

    invoke-interface {v11, v2, v0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_d

    .line 516
    :cond_12
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 517
    const/4 v0, 0x0

    .line 518
    const/4 v1, 0x0

    move v3, v1

    :goto_e
    if-ge v3, v7, :cond_17

    .line 519
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 520
    if-eqz v2, :cond_13

    instance-of v5, v0, Lcom/google/googlejavaformat/Doc$Space;

    if-nez v5, :cond_1b

    .line 521
    :cond_13
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 522
    invoke-static {v0}, Lcom/google/googlejavaformat/OpsBuilder;->isForcedBreak(Lcom/google/googlejavaformat/Op;)Z

    move-result v0

    :goto_10
    move v2, v0

    .line 524
    goto :goto_f

    .line 525
    :cond_14
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 526
    if-eqz v2, :cond_16

    instance-of v1, v0, Lcom/google/googlejavaformat/Doc$Space;

    if-nez v1, :cond_15

    instance-of v1, v0, Lcom/google/googlejavaformat/Doc$Break;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/google/googlejavaformat/Doc$Break;

    .line 529
    invoke-virtual {v1}, Lcom/google/googlejavaformat/Doc$Break;->getPlusIndent()I

    move-result v1

    if-nez v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/google/googlejavaformat/Doc;

    .line 530
    const-string v5, " "

    invoke-virtual {v1}, Lcom/google/googlejavaformat/Doc;->getFlat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 518
    :cond_15
    :goto_11
    add-int/lit8 v1, v3, 0x1

    move v0, v2

    move v3, v1

    goto :goto_e

    .line 533
    :cond_16
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 534
    instance-of v1, v0, Lcom/google/googlejavaformat/OpenOp;

    if-nez v1, :cond_15

    .line 535
    invoke-static {v0}, Lcom/google/googlejavaformat/OpsBuilder;->isForcedBreak(Lcom/google/googlejavaformat/Op;)Z

    move-result v2

    goto :goto_11

    .line 538
    :cond_17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 539
    if-eqz v1, :cond_18

    instance-of v3, v0, Lcom/google/googlejavaformat/Doc$Space;

    if-nez v3, :cond_1a

    .line 540
    :cond_18
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 541
    invoke-static {v0}, Lcom/google/googlejavaformat/OpsBuilder;->isForcedBreak(Lcom/google/googlejavaformat/Op;)Z

    move-result v0

    :goto_13
    move v1, v0

    .line 543
    goto :goto_12

    .line 544
    :cond_19
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_1a
    move v0, v1

    goto :goto_13

    :cond_1b
    move v0, v2

    goto :goto_10

    :cond_1c
    move v0, v7

    goto/16 :goto_b

    :cond_1d
    move v1, v2

    goto/16 :goto_4
.end method

.method public checkClosed(I)V
    .registers 7

    .line 163
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    if-ne v0, p1, :cond_0

    .line 166
    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/google/googlejavaformat/FormattingError;

    const-string v1, "saw %d unclosed ops"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->diagnostic(Ljava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/FormattingError;-><init>(Lcom/google/googlejavaformat/FormatterDiagnostic;)V

    throw v0
.end method

.method public final close()V
    .registers 2

    .line 228
    invoke-static {}, Lcom/google/googlejavaformat/CloseOp;->make()Lcom/google/googlejavaformat/Op;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->add(Lcom/google/googlejavaformat/Op;)V

    .line 229
    return-void
.end method

.method public depth()I
    .registers 2

    .line 154
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    return v0
.end method

.method public diagnostic(Ljava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;
    .registers 7

    .line 172
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ">>>> %d: %s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/googlejavaformat/OpsBuilder;->inputPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 173
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    iget v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->inputPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/google/googlejavaformat/Input;->createDiagnostic(ILjava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public final drain()V
    .registers 8

    .line 200
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 201
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->inputPosition:I

    if-le v1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    .line 204
    :goto_0
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 205
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    .line 206
    sget-object v4, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->IMAGINARY:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v5, Lcom/google/googlejavaformat/OpsBuilder;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    .line 208
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    .line 207
    invoke-static {v0, v4, v5, v6}, Lcom/google/googlejavaformat/Doc$Token;->make(Lcom/google/googlejavaformat/Input$Token;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)Lcom/google/googlejavaformat/Op;

    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->add(Lcom/google/googlejavaformat/Op;)V

    goto :goto_0

    .line 211
    :cond_0
    iput v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->inputPosition:I

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->checkClosed(I)V

    .line 213
    return-void
.end method

.method public final forcedBreak()V
    .registers 4

    .line 325
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    sget-object v2, Lcom/google/googlejavaformat/OpsBuilder;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 326
    return-void
.end method

.method public final forcedBreak(Lcom/google/googlejavaformat/Indent;)V
    .registers 4

    .line 334
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 335
    return-void
.end method

.method public final getInput()Lcom/google/googlejavaformat/Input;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    return-object v0
.end method

.method public final guessToken(Ljava/lang/String;)V
    .registers 5

    .line 248
    sget-object v0, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->IMAGINARY:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 249
    return-void
.end method

.method public markForPartialFormat()V
    .registers 4

    .line 384
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 385
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    iput v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    if-eq v1, v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    .line 392
    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget v2, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/Input$Token;

    .line 393
    iget-object v2, p0, Lcom/google/googlejavaformat/OpsBuilder;->output:Lcom/google/googlejavaformat/Output;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlejavaformat/Output;->markForPartialFormat(Lcom/google/googlejavaformat/Input$Token;Lcom/google/googlejavaformat/Input$Token;)V

    .line 394
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    iput v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    goto :goto_0
.end method

.method public final op(Ljava/lang/String;)V
    .registers 8

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 285
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 286
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v4, Lcom/google/googlejavaformat/OpsBuilder;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method public final open(Lcom/google/googlejavaformat/Indent;)V
    .registers 3

    .line 221
    invoke-static {p1}, Lcom/google/googlejavaformat/OpenOp;->make(Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Op;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->add(Lcom/google/googlejavaformat/Op;)V

    .line 222
    return-void
.end method

.method public final peekToken()Lcom/google/common/base/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 236
    iget v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 237
    iget v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method public final space()V
    .registers 2

    .line 295
    invoke-static {}, Lcom/google/googlejavaformat/Doc$Space;->make()Lcom/google/googlejavaformat/Doc$Space;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->add(Lcom/google/googlejavaformat/Op;)V

    .line 296
    return-void
.end method

.method public final sync(I)V
    .registers 7

    .line 183
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->inputPosition:I

    if-le p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 186
    iput p1, p0, Lcom/google/googlejavaformat/OpsBuilder;->inputPosition:I

    .line 187
    iget v2, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 194
    :cond_0
    return-void

    .line 189
    :cond_1
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    .line 190
    new-instance v1, Lcom/google/googlejavaformat/FormattingError;

    const-string v2, "did not generate token \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getText()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->diagnostic(Ljava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlejavaformat/FormattingError;-><init>(Lcom/google/googlejavaformat/FormatterDiagnostic;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 549
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    .line 550
    const-string v2, "input"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    .line 551
    const-string v2, "ops"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->output:Lcom/google/googlejavaformat/Output;

    .line 552
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    .line 553
    const-string v2, "tokenI"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->inputPosition:I

    .line 554
    const-string v2, "inputPosition"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    return-object v0
.end method

.method public final token(Ljava/lang/String;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;",
            "Lcom/google/googlejavaformat/Indent;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Indent;",
            ">;)V"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    .line 260
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    sget-object v1, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    .line 259
    invoke-static {v0, v1, p3, p4}, Lcom/google/googlejavaformat/Doc$Token;->make(Lcom/google/googlejavaformat/Input$Token;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)Lcom/google/googlejavaformat/Op;

    move-result-object v0

    .line 258
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->add(Lcom/google/googlejavaformat/Op;)V

    .line 276
    :cond_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p2}, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->isReal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    .line 272
    const-string v1, "expected token: \'%s\'; generated %s instead"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/google/googlejavaformat/FormattingError;

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->diagnostic(Ljava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlejavaformat/FormattingError;-><init>(Lcom/google/googlejavaformat/FormatterDiagnostic;)V

    throw v1
.end method
