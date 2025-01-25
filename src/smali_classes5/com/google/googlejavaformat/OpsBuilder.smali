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

    if-eqz v0, :cond_10

    .line 124
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    .line 131
    :cond_a
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void

    .line 125
    :cond_10
    instance-of v0, p1, Lcom/google/googlejavaformat/CloseOp;

    if-eqz v0, :cond_a

    .line 126
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    .line 127
    if-gez v0, :cond_a

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

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 63
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v2

    if-ltz v2, :cond_8

    .line 64
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    .line 67
    :goto_1e
    return v0

    :cond_1f
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v0

    goto :goto_1e
.end method

.method private static isForcedBreak(Lcom/google/googlejavaformat/Op;)Z
    .registers 2

    .line 71
    instance-of v0, p0, Lcom/google/googlejavaformat/Doc$Break;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/google/googlejavaformat/Doc$Break;

    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc$Break;->isForced()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
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

    if-eqz v0, :cond_f

    .line 76
    invoke-static {p0}, Lcom/google/googlejavaformat/Doc$Tok;->make(Lcom/google/googlejavaformat/Input$Tok;)Lcom/google/googlejavaformat/Doc$Tok;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 75
    :goto_e
    return-object v0

    .line 77
    :cond_f
    invoke-static {p0}, Lcom/google/googlejavaformat/Doc$Tok;->make(Lcom/google/googlejavaformat/Input$Tok;)Lcom/google/googlejavaformat/Doc$Tok;

    move-result-object v0

    invoke-static {}, Lcom/google/googlejavaformat/Doc$Break;->makeForced()Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_e
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

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 87
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 88
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3a
    move v1, v0

    .line 90
    goto :goto_20

    .line 91
    :cond_3c
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

    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 94
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 95
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v4

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_88
    move v2, v0

    .line 97
    goto :goto_69

    .line 98
    :cond_8a
    sub-int v0, v2, v1

    return v0

    :cond_8d
    move v0, v2

    goto :goto_88

    :cond_8f
    move v0, v1

    goto :goto_3a
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

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 109
    iget-object v4, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/googlejavaformat/Input;->getLineNumber(I)I

    move-result v4

    if-eq v2, v4, :cond_43

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 116
    :goto_42
    return-object v0

    .line 112
    :cond_43
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 113
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_51
    move v1, v0

    .line 115
    goto :goto_26

    .line 116
    :cond_53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_42

    :cond_58
    move v0, v1

    goto :goto_51
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

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 139
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/OpsBuilder;->add(Lcom/google/googlejavaformat/Op;)V

    goto :goto_4

    .line 141
    :cond_14
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

    :goto_e
    if-ge v9, v7, :cond_1d0

    .line 417
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 418
    instance-of v1, v0, Lcom/google/googlejavaformat/Doc$Token;

    if-eqz v1, :cond_26d

    .line 424
    check-cast v0, Lcom/google/googlejavaformat/Doc$Token;

    .line 425
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc$Token;->getToken()Lcom/google/googlejavaformat/Input$Token;

    move-result-object v12

    move v10, v9

    .line 427
    :goto_23
    if-lez v10, :cond_35

    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    add-int/lit8 v2, v10, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/googlejavaformat/OpenOp;

    if-eqz v1, :cond_35

    .line 428
    add-int/lit8 v1, v10, -0x1

    move v10, v1

    goto :goto_23

    :cond_35
    move v8, v9

    .line 431
    :goto_36
    add-int/lit8 v1, v8, 0x1

    if-ge v1, v7, :cond_4a

    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    add-int/lit8 v2, v8, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/googlejavaformat/CloseOp;

    if-eqz v1, :cond_4a

    .line 432
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_36

    .line 434
    :cond_4a
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc$Token;->realOrImaginary()Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->isReal()Z

    move-result v1

    if-eqz v1, :cond_18e

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

    :goto_61
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/Input$Tok;

    .line 444
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isNewline()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 445
    add-int/lit8 v5, v5, 0x1

    move v1, v2

    :goto_76
    move v2, v1

    .line 446
    goto :goto_61

    :cond_78
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v6

    if-eqz v6, :cond_270

    .line 447
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isSlashSlashComment()Z

    move-result v2

    if-eqz v2, :cond_d0

    sget-object v2, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    .line 452
    :goto_86
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

    if-eqz v2, :cond_b7

    .line 458
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/googlejavaformat/Doc$Break;->makeForced()Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 460
    :cond_b7
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isSlashSlashComment()Z

    move-result v2

    if-nez v2, :cond_c9

    .line 462
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isSlashStarComment()Z

    move-result v2

    if-eqz v2, :cond_d3

    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isJavadocComment()Z

    move-result v1

    if-nez v1, :cond_d3

    :cond_c9
    const/4 v1, 0x1

    move v2, v1

    :goto_cb
    const/4 v3, 0x1

    const/4 v5, 0x0

    move v1, v6

    move v4, v2

    goto :goto_76

    .line 447
    :cond_d0
    sget-object v2, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    goto :goto_86

    .line 462
    :cond_d3
    const/4 v1, 0x0

    move v2, v1

    goto :goto_cb

    .line 465
    :cond_d6
    if-eqz v4, :cond_ea

    const/4 v1, 0x1

    if-le v5, v1, :cond_ea

    .line 467
    iget-object v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->output:Lcom/google/googlejavaformat/Output;

    invoke-interface {v12}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v4

    sget-object v6, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v1, v4, v6}, Lcom/google/googlejavaformat/Output;->blankLine(ILcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 465
    :cond_ea
    if-eqz v3, :cond_16d

    if-lez v5, :cond_16d

    .line 470
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/google/googlejavaformat/Doc$Break;->makeForced()Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 475
    :cond_f9
    :goto_f9
    invoke-interface {v12}, Lcom/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :cond_101
    :goto_101
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_188

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/Input$Tok;

    .line 476
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 477
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isJavadocComment()Z

    move-result v2

    if-nez v2, :cond_129

    .line 479
    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->isSlashStarComment()Z

    move-result v2

    if-eqz v2, :cond_179

    .line 480
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc$Token;->breakAndIndentTrailingComment()Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_179

    :cond_129
    const/4 v2, 0x1

    move v3, v2

    .line 481
    :goto_12b
    if-eqz v3, :cond_17c

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
    :goto_14a
    add-int/lit8 v2, v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/google/googlejavaformat/OpsBuilder;->makeComment(Lcom/google/googlejavaformat/Input$Tok;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v2, v1}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 492
    if-eqz v3, :cond_101

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

    goto :goto_101

    .line 471
    :cond_16d
    if-eqz v2, :cond_f9

    .line 472
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/googlejavaformat/OpsBuilder;->SPACE:Lcom/google/googlejavaformat/Doc$Space;

    invoke-interface {v11, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_f9

    .line 480
    :cond_179
    const/4 v2, 0x0

    move v3, v2

    goto :goto_12b

    .line 489
    :cond_17c
    add-int/lit8 v2, v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lcom/google/googlejavaformat/OpsBuilder;->SPACE:Lcom/google/googlejavaformat/Doc$Space;

    invoke-interface {v11, v2, v5}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_14a

    :cond_188
    move v0, v7

    .line 418
    :goto_189
    add-int/lit8 v9, v9, 0x1

    move v7, v0

    goto/16 :goto_e

    .line 503
    :cond_18e
    invoke-interface {v12}, Lcom/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_196
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 504
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/google/googlejavaformat/Doc$Tok;->make(Lcom/google/googlejavaformat/Input$Tok;)Lcom/google/googlejavaformat/Doc$Tok;

    move-result-object v0

    invoke-interface {v11, v2, v0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_196

    .line 506
    :cond_1ae
    invoke-interface {v12}, Lcom/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1b6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26d

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

    goto :goto_1b6

    .line 516
    :cond_1d0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 517
    const/4 v0, 0x0

    .line 518
    const/4 v1, 0x0

    move v3, v1

    :goto_1d7
    if-ge v3, v7, :cond_23c

    .line 519
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_1e6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_201

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 520
    if-eqz v2, :cond_1f8

    instance-of v5, v0, Lcom/google/googlejavaformat/Doc$Space;

    if-nez v5, :cond_26b

    .line 521
    :cond_1f8
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 522
    invoke-static {v0}, Lcom/google/googlejavaformat/OpsBuilder;->isForcedBreak(Lcom/google/googlejavaformat/Op;)Z

    move-result v0

    :goto_1ff
    move v2, v0

    .line 524
    goto :goto_1e6

    .line 525
    :cond_201
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 526
    if-eqz v2, :cond_230

    instance-of v1, v0, Lcom/google/googlejavaformat/Doc$Space;

    if-nez v1, :cond_22b

    instance-of v1, v0, Lcom/google/googlejavaformat/Doc$Break;

    if-eqz v1, :cond_230

    move-object v1, v0

    check-cast v1, Lcom/google/googlejavaformat/Doc$Break;

    .line 529
    invoke-virtual {v1}, Lcom/google/googlejavaformat/Doc$Break;->getPlusIndent()I

    move-result v1

    if-nez v1, :cond_230

    move-object v1, v0

    check-cast v1, Lcom/google/googlejavaformat/Doc;

    .line 530
    const-string v5, " "

    invoke-virtual {v1}, Lcom/google/googlejavaformat/Doc;->getFlat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_230

    .line 518
    :cond_22b
    :goto_22b
    add-int/lit8 v1, v3, 0x1

    move v0, v2

    move v3, v1

    goto :goto_1d7

    .line 533
    :cond_230
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 534
    instance-of v1, v0, Lcom/google/googlejavaformat/OpenOp;

    if-nez v1, :cond_22b

    .line 535
    invoke-static {v0}, Lcom/google/googlejavaformat/OpsBuilder;->isForcedBreak(Lcom/google/googlejavaformat/Op;)Z

    move-result v2

    goto :goto_22b

    .line 538
    :cond_23c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_249
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_264

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Op;

    .line 539
    if-eqz v1, :cond_25b

    instance-of v3, v0, Lcom/google/googlejavaformat/Doc$Space;

    if-nez v3, :cond_269

    .line 540
    :cond_25b
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 541
    invoke-static {v0}, Lcom/google/googlejavaformat/OpsBuilder;->isForcedBreak(Lcom/google/googlejavaformat/Op;)Z

    move-result v0

    :goto_262
    move v1, v0

    .line 543
    goto :goto_249

    .line 544
    :cond_264
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_269
    move v0, v1

    goto :goto_262

    :cond_26b
    move v0, v2

    goto :goto_1ff

    :cond_26d
    move v0, v7

    goto/16 :goto_189

    :cond_270
    move v1, v2

    goto/16 :goto_76
.end method

.method public checkClosed(I)V
    .registers 7

    .line 163
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->depth:I

    if-ne v0, p1, :cond_5

    .line 166
    return-void

    .line 164
    :cond_5
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

    if-le v1, v0, :cond_4a

    .line 202
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->input:Lcom/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    .line 204
    :goto_1a
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    if-ge v0, v3, :cond_4a

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    if-le v1, v0, :cond_4a

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

    goto :goto_1a

    .line 211
    :cond_4a
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

    if-ne v0, v1, :cond_a

    .line 385
    iget v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    iput v0, p0, Lcom/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    .line 395
    :cond_9
    :goto_9
    return-void

    .line 388
    :cond_a
    iget v1, p0, Lcom/google/googlejavaformat/OpsBuilder;->tokenI:I

    if-eq v1, v0, :cond_9

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

    goto :goto_9
.end method

.method public final op(Ljava/lang/String;)V
    .registers 8

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 285
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_1b

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

    goto :goto_5

    .line 289
    :cond_1b
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

    if-ge v1, v2, :cond_23

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
    :goto_22
    return-object v0

    .line 238
    :cond_23
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_22
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

    if-le p1, v0, :cond_24

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

    if-ge v2, v0, :cond_24

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    if-gt p1, v0, :cond_25

    .line 194
    :cond_24
    return-void

    .line 189
    :cond_25
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

    if-eqz v1, :cond_2a

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
    :cond_29
    return-void

    .line 269
    :cond_2a
    invoke-virtual {p2}, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->isReal()Z

    move-result v0

    if-eqz v0, :cond_29

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
