.class public final Lcom/google/googlejavaformat/java/JavaInputAstVisitor;
.super Lcom/sun/source/util/TreePathScanner;
.source "JavaInputAstVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;,
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;,
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;,
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;,
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;,
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;,
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;,
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;,
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;,
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;,
        Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreePathScanner",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_SPECIFIER:Ljava/util/regex/Pattern;

.field private static final IS_ARRAY_VALUE:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_ITEM_LENGTH_FOR_FILLING:I = 0xa

.field private static final ZERO:Lcom/google/googlejavaformat/Indent$Const;


# instance fields
.field private final builder:Lcom/google/googlejavaformat/OpsBuilder;

.field private final inExpression:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final indentMultiplier:I

.field private final minusFour:Lcom/google/googlejavaformat/Indent$Const;

.field private final minusTwo:Lcom/google/googlejavaformat/Indent$Const;

.field private final plusFour:Lcom/google/googlejavaformat/Indent$Const;

.field private final plusTwo:Lcom/google/googlejavaformat/Indent$Const;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 142
    sget-object v0, Lcom/google/googlejavaformat/Indent$Const;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    .line 143
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->EMPTY_LIST:Lcom/google/common/collect/ImmutableList;

    .line 149
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$1;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$1;-><init>()V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->IS_ARRAY_VALUE:Lcom/google/common/base/Predicate;

    .line 161
    const-string v0, "%|\\{[0-9]\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->FORMAT_SPECIFIER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlejavaformat/OpsBuilder;I)V
    .registers 7

    const/4 v3, 0x0

    .line 178
    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    .line 179
    iput-object p1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    .line 180
    iput p2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->indentMultiplier:I

    .line 181
    const/4 v0, -0x2

    invoke-static {v0, p2}, Lcom/google/googlejavaformat/Indent$Const;->make(II)Lcom/google/googlejavaformat/Indent$Const;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->minusTwo:Lcom/google/googlejavaformat/Indent$Const;

    .line 182
    const/4 v0, -0x4

    invoke-static {v0, p2}, Lcom/google/googlejavaformat/Indent$Const;->make(II)Lcom/google/googlejavaformat/Indent$Const;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->minusFour:Lcom/google/googlejavaformat/Indent$Const;

    .line 183
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/google/googlejavaformat/Indent$Const;->make(II)Lcom/google/googlejavaformat/Indent$Const;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    .line 184
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/google/googlejavaformat/Indent$Const;->make(II)Lcom/google/googlejavaformat/Indent$Const;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    .line 185
    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .registers 1

    .line 140
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->FORMAT_SPECIFIER:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private actualColumn(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/Integer;
    .registers 5

    .line 2898
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->getInput()Lcom/google/googlejavaformat/Input;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Input;->getPositionToColumnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 2899
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-static {p1}, Lcom/google/googlejavaformat/java/Trees;->getStartPosition(Lcom/sun/source/tree/Tree;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->actualStartColumn(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private ambiguousUnaryOperator(Lcom/sun/source/tree/UnaryTree;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    .line 1521
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_15

    const/4 v2, 0x6

    if-eq v0, v2, :cond_15

    move v0, v1

    .line 1538
    :goto_14
    return v0

    .line 1524
    :cond_15
    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/source/tree/UnaryTree;

    if-nez v0, :cond_1f

    move v0, v1

    .line 1529
    goto :goto_14

    .line 1531
    :cond_1f
    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    .line 1532
    invoke-static {v0}, Lcom/google/googlejavaformat/java/OpUtil;->isPostUnaryOp(I)Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v1

    .line 1533
    goto :goto_14

    .line 1535
    :cond_31
    invoke-static {p1}, Lcom/google/googlejavaformat/java/Trees;->operatorName(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    move v0, v1

    .line 1536
    goto :goto_14

    .line 1538
    :cond_3d
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private argList(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)V"
        }
    .end annotation

    .line 2762
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2763
    const/4 v2, 0x1

    .line 2764
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->hasOnlyShortItems(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    move-object v1, v0

    .line 2765
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 2766
    if-nez v2, :cond_31

    .line 2767
    const-string v2, ","

    invoke-virtual {p0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2768
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v4, " "

    sget-object v5, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v2, v1, v4, v5}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 2770
    :cond_31
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2771
    const/4 v0, 0x0

    move v2, v0

    .line 2772
    goto :goto_15

    .line 2764
    :cond_38
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    move-object v1, v0

    goto :goto_11

    .line 2773
    :cond_3c
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2774
    return-void
.end method

.method private argumentsAreTabular(Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)I"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 2836
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    .line 2894
    :goto_a
    return v0

    .line 2839
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2840
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v3

    .line 2842
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->actualColumn(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2844
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2845
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2846
    :goto_32
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->actualColumn(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_50

    .line 2847
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 2849
    :cond_50
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_58

    move v0, v2

    .line 2850
    goto :goto_a

    .line 2852
    :cond_58
    invoke-static {v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->rowLength(Ljava/util/List;)I

    move-result v0

    if-gt v0, v1, :cond_60

    move v0, v2

    .line 2853
    goto :goto_a

    .line 2855
    :cond_60
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2857
    :goto_63
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 2858
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2859
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->actualColumn(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2860
    if-eq v0, v5, :cond_80

    move v0, v2

    .line 2861
    goto :goto_a

    .line 2863
    :cond_80
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2864
    :goto_87
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->actualColumn(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_a5

    .line 2865
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 2867
    :cond_a5
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 2869
    :cond_a9
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2870
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v4, v7, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->expressionsAreParallel(Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_c0

    move v0, v2

    .line 2871
    goto/16 :goto_a

    :cond_c0
    move v0, v1

    .line 2873
    :goto_c1
    if-ge v0, v3, :cond_d7

    .line 2874
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->expressionsAreParallel(Ljava/util/List;II)Z

    move-result v5

    if-nez v5, :cond_d4

    move v0, v2

    .line 2875
    goto/16 :goto_a

    .line 2873
    :cond_d4
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 2879
    :cond_d7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_f3

    .line 2880
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v3, v0, :cond_ed

    move v0, v3

    .line 2881
    goto/16 :goto_a

    :cond_ed
    move v0, v2

    .line 2883
    goto/16 :goto_a

    .line 2886
    :cond_f0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_f3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_10a

    .line 2887
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v3, v0, :cond_f0

    move v0, v2

    .line 2888
    goto/16 :goto_a

    .line 2891
    :cond_10a
    invoke-static {v4}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_119

    move v0, v2

    .line 2892
    goto/16 :goto_a

    :cond_119
    move v0, v3

    .line 2894
    goto/16 :goto_a
.end method

.method private static final breakFillList(Lcom/google/common/base/Optional;)Lcom/google/common/collect/ImmutableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    .line 193
    invoke-static {v0}, Lcom/google/googlejavaformat/OpenOp;->make(Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Op;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    .line 194
    const-string v3, " "

    invoke-static {v1, v3, v2, p0}, Lcom/google/googlejavaformat/Doc$Break;->make(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v1

    .line 195
    invoke-static {}, Lcom/google/googlejavaformat/CloseOp;->make()Lcom/google/googlejavaformat/Op;

    move-result-object v2

    .line 192
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static final breakList(Lcom/google/common/base/Optional;)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, " "

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v0, v1, v2, p0}, Lcom/google/googlejavaformat/Doc$Break;->make(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private canLocalHaveHorizontalAnnotations(Lcom/sun/source/tree/ModifiersTree;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;
    .registers 5

    .line 3243
    const/4 v0, 0x0

    .line 3244
    invoke-interface {p1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/AnnotationTree;

    .line 3245
    invoke-interface {v0}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3246
    add-int/lit8 v0, v1, 0x1

    :goto_22
    move v1, v0

    .line 3248
    goto :goto_a

    .line 3249
    :cond_24
    const/4 v0, 0x1

    if-gt v1, v0, :cond_34

    invoke-interface {p1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_34

    .line 3250
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 3249
    :goto_33
    return-object v0

    .line 3251
    :cond_34
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    goto :goto_33

    :cond_37
    move v0, v1

    goto :goto_22
.end method

.method private declareMany(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/VariableTree;",
            ">;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 3078
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 3080
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v1

    .line 3081
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 3083
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {p0, v1, p2, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAndBreakModifiers(Lcom/sun/source/tree/ModifiersTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)V

    .line 3084
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 3085
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 3086
    sget-object v1, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {v0, v1}, Lcom/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object v0

    .line 3087
    new-instance v1, Ljava/util/ArrayDeque;

    iget-object v3, v0, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v3}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 3088
    iget-object v0, v0, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v0, v9}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 3089
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v3

    .line 3090
    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    .line 3091
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v4

    .line 3092
    const/4 v0, 0x1

    .line 3093
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    .line 3094
    if-nez v1, :cond_68

    .line 3095
    const-string v6, ","

    invoke-virtual {p0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 3097
    :cond_68
    sub-int v6, v3, v4

    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v7

    invoke-direct {p0, v1, v6, v7}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->variableFragmentDims(ZILcom/sun/source/tree/Tree;)Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object v6

    .line 3098
    new-instance v7, Ljava/util/ArrayDeque;

    iget-object v6, v6, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v7, v6}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 3099
    iget-object v6, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 3100
    iget-object v6, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v8, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v6, v8}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 3101
    invoke-direct {p0, v7}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    .line 3102
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    .line 3103
    invoke-direct {p0, v7}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    .line 3104
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 3105
    if-eqz v0, :cond_ba

    .line 3106
    iget-object v6, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v6}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 3107
    const-string v6, "="

    invoke-virtual {p0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 3108
    iget-object v6, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v7, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v6, v7}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 3109
    iget-object v6, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 3110
    invoke-virtual {p0, v0, v9}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 3111
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 3113
    :cond_ba
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 3114
    if-eqz v1, :cond_c6

    .line 3115
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    :cond_c6
    move v1, v2

    .line 3118
    goto :goto_55

    .line 3119
    :cond_c8
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 3120
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 3121
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 3122
    return-void
.end method

.method private dotExpressionArgsAndParen(Lcom/sun/source/tree/ExpressionTree;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)V
    .registers 8

    .line 2642
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayIndices(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/Deque;

    move-result-object v1

    .line 2643
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 2644
    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1c

    .line 2650
    :goto_18
    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->formatArrayIndices(Ljava/util/Deque;)V

    .line 2655
    return-void

    .line 2646
    :cond_1c
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2, p2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2647
    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    .line 2648
    invoke-interface {v0}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->addArguments(Ljava/util/List;Lcom/google/googlejavaformat/Indent;)V

    .line 2649
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_18
.end method

.method private dotExpressionUpToArgs(Lcom/sun/source/tree/ExpressionTree;Lcom/google/common/base/Optional;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)V"
        }
    .end annotation

    .line 2596
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 2597
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_60

    .line 2617
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2601
    :goto_17
    return-void

    .line 2614
    :pswitch_18  #0xa
    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    goto :goto_17

    .line 2603
    :pswitch_22  #0x9
    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    .line 2604
    invoke-interface {v0}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 2605
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2606
    invoke-interface {v0}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->addTypeArguments(Ljava/util/List;Lcom/google/googlejavaformat/Indent;)V

    .line 2608
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v3, ""

    sget-object v4, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 2609
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2611
    :cond_4e
    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->getMethodName(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    goto :goto_17

    .line 2599
    :pswitch_56  #0x8
    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    .line 2600
    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    goto :goto_17

    .line 2597
    :pswitch_data_60
    .packed-switch 0x8
        :pswitch_56  #00000008
        :pswitch_22  #00000009
        :pswitch_18  #0000000a
    .end packed-switch
.end method

.method private dropEmptyDeclarations()V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 333
    :goto_12
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 334
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 335
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_12

    .line 338
    :cond_2d
    return-void
.end method

.method private static expressionsAreParallel(Ljava/util/List;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;>;II)Z"
        }
    .end annotation

    .line 246
    invoke-static {}, Lcom/google/common/collect/HashMultiset;->create()Lcom/google/common/collect/HashMultiset;

    move-result-object v1

    .line 247
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_8

    .line 251
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 253
    :cond_28
    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 254
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    if-lt v0, p2, :cond_30

    .line 255
    const/4 v0, 0x1

    .line 258
    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method private fieldAnnotationDirection(Lcom/sun/source/tree/ModifiersTree;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;
    .registers 4

    .line 3261
    invoke-interface {p1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/AnnotationTree;

    .line 3262
    invoke-interface {v0}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3263
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 3266
    :goto_20
    return-object v0

    :cond_21
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    goto :goto_20
.end method

.method private fillFirstArgument(Lcom/sun/source/tree/ExpressionTree;Ljava/util/List;Lcom/google/googlejavaformat/Indent;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;",
            "Lcom/google/googlejavaformat/Indent;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2493
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_a

    .line 2517
    :cond_9
    :goto_9
    return v0

    .line 2497
    :cond_a
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_9

    .line 2500
    check-cast p1, Lcom/sun/source/tree/MethodInvocationTree;

    .line 2501
    invoke-static {p1}, Lcom/google/googlejavaformat/java/Trees;->getMethodName(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/Name;

    move-result-object v2

    .line 2502
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v3, :cond_9

    .line 2503
    invoke-interface {v2}, Ljavax/lang/model/element/Name;->length()I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_9

    .line 2504
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2505
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_9

    .line 2508
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2509
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, p3}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2510
    invoke-virtual {p0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    .line 2511
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2512
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 2513
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2514
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2515
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2516
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    move v0, v1

    .line 2517
    goto :goto_9
.end method

.method private static final forceBreakList(Lcom/google/common/base/Optional;)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    sget-object v2, Lcom/google/googlejavaformat/Indent$Const;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v0, v1, v2, p0}, Lcom/google/googlejavaformat/Doc$Break;->make(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)Lcom/google/googlejavaformat/Doc$Break;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private formatArrayIndices(Ljava/util/Deque;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)V"
        }
    .end annotation

    .line 2661
    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2672
    :goto_6
    return-void

    .line 2664
    :cond_7
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2666
    :cond_e
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2667
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill()V

    .line 2668
    invoke-interface {p1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2669
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2670
    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2671
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_6
.end method

.method private getArrayBase(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;
    .registers 4

    .line 2629
    move-object v0, p1

    :goto_1
    instance-of v1, v0, Lcom/sun/source/tree/ArrayAccessTree;

    if-eqz v1, :cond_c

    .line 2630
    check-cast v0, Lcom/sun/source/tree/ArrayAccessTree;

    invoke-interface {v0}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    goto :goto_1

    .line 2632
    :cond_c
    return-object v0
.end method

.method private getArrayIndices(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/Deque;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            ")",
            "Ljava/util/Deque",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;"
        }
    .end annotation

    .line 2679
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    move-object v0, p1

    .line 2680
    :goto_6
    instance-of v2, v0, Lcom/sun/source/tree/ArrayAccessTree;

    if-eqz v2, :cond_18

    .line 2681
    check-cast v0, Lcom/sun/source/tree/ArrayAccessTree;

    .line 2682
    invoke-interface {v0}, Lcom/sun/source/tree/ArrayAccessTree;->getIndex()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 2683
    invoke-interface {v0}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    goto :goto_6

    .line 2685
    :cond_18
    return-object v1
.end method

.method private getMethodReceiver(Lcom/sun/source/tree/MethodInvocationTree;)Lcom/sun/source/tree/ExpressionTree;
    .registers 4

    .line 2636
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 2637
    instance-of v1, v0, Lcom/sun/source/tree/MemberSelectTree;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static getNextToken(Lcom/google/googlejavaformat/Input;I)Lcom/google/common/base/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/Input;",
            "I)",
            "Lcom/google/common/base/Optional",
            "<+",
            "Lcom/google/googlejavaformat/Input$Token;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Input;->getPositionTokenMap()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableRangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method private hasJavaDoc(Lcom/sun/source/tree/Tree;)Z
    .registers 5

    .line 3210
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v0

    .line 3211
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->getInput()Lcom/google/googlejavaformat/Input;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlejavaformat/Input;->getPositionTokenMap()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableRangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    .line 3212
    if-eqz v0, :cond_3e

    .line 3213
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 3214
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/**"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3215
    const/4 v0, 0x1

    .line 3219
    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method private hasOnlyShortItems(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)Z"
        }
    .end annotation

    .line 502
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 503
    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->getStartPosition(Lcom/sun/source/tree/Tree;)I

    move-result v2

    .line 504
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    .line 505
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/googlejavaformat/java/Trees;->getEndPosition(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I

    move-result v0

    .line 504
    sub-int/2addr v0, v2

    invoke-virtual {v3, v2, v0}, Lcom/google/googlejavaformat/OpsBuilder;->actualSize(II)I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_4

    .line 507
    const/4 v0, 0x0

    .line 510
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x1

    goto :goto_28
.end method

.method private hasTrailingToken(Lcom/google/googlejavaformat/Input;Ljava/util/List;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/Input;",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    .line 3226
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3232
    :goto_7
    return v1

    .line 3229
    :cond_8
    invoke-static {p2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 3230
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlejavaformat/java/Trees;->getEndPosition(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getNextToken(Lcom/google/googlejavaformat/Input;I)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 3232
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    :goto_35
    move v1, v0

    goto :goto_7

    :cond_37
    move v0, v1

    goto :goto_35
.end method

.method private inExpression()Z
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isFormatMethod(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2796
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_9

    .line 2799
    :goto_8
    return v0

    :cond_9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->isStringConcat(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    goto :goto_8
.end method

.method private isStringConcat(Lcom/sun/source/tree/ExpressionTree;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2803
    new-array v2, v0, [Z

    aput-boolean v0, v2, v1

    .line 2804
    new-array v3, v0, [Z

    aput-boolean v1, v3, v1

    .line 2805
    new-instance v4, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$2;

    invoke-direct {v4, p0, v2, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$2;-><init>(Lcom/google/googlejavaformat/java/JavaInputAstVisitor;[Z[Z)V

    check-cast p1, Lcom/sun/tools/javac/tree/JCTree;

    .line 2828
    invoke-virtual {v4, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$2;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 2829
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1d

    aget-boolean v2, v3, v1

    if-eqz v2, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c
.end method

.method private markForPartialFormat()V
    .registers 2

    .line 3301
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3302
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->markForPartialFormat()V

    .line 3304
    :cond_b
    return-void
.end method

.method private maybeAddDims(Ljava/util/Deque;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;>;)V"
        }
    .end annotation

    .line 3026
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;Ljava/util/Deque;)V

    .line 3027
    return-void
.end method

.method private maybeAddDims(Ljava/util/Deque;Ljava/util/Deque;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;",
            "Ljava/util/Deque",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;>;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3043
    move v1, v2

    .line 3044
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3045
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x40

    if-eq v5, v6, :cond_38

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_2e

    :cond_28
    move v0, v4

    :goto_29
    if-eqz v0, :cond_7c

    if-eq v0, v3, :cond_42

    .line 3075
    :cond_2d
    return-void

    .line 3045
    :cond_2e
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v3

    goto :goto_29

    :cond_38
    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v2

    goto :goto_29

    .line 3059
    :cond_42
    if-eqz v1, :cond_76

    .line 3060
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 3064
    :goto_4b
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 3065
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 3066
    invoke-interface {p1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 3068
    :cond_6e
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    move v0, v2

    :goto_74
    move v1, v0

    .line 3057
    goto :goto_3

    .line 3062
    :cond_76
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill()V

    goto :goto_4b

    .line 3047
    :cond_7c
    invoke-interface {p2}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 3050
    invoke-interface {p2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3051
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3054
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 3055
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    sget-object v4, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    invoke-direct {p0, v0, v1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotations(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;)V

    move v0, v3

    .line 3056
    goto :goto_74
.end method

.method private methodBody(Lcom/sun/source/tree/MethodTree;)V
    .registers 4

    .line 1354
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1355
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 1366
    :goto_15
    const-string v0, "}"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 1367
    return-void

    .line 1357
    :cond_1d
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1358
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1359
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 1360
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatements(Ljava/util/List;)V

    .line 1361
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1362
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1363
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 1364
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    goto :goto_15
.end method

.method static rowLength(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)I"
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    .line 226
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 227
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v4, :cond_1e

    .line 228
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 229
    goto :goto_6

    .line 231
    :cond_1e
    check-cast v0, Lcom/sun/source/tree/NewArrayTree;

    .line 232
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 233
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 234
    goto :goto_6

    .line 236
    :cond_2a
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->rowLength(Ljava/util/List;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 237
    goto :goto_6

    .line 238
    :cond_35
    return v1
.end method

.method private simpleNames(Ljava/util/Deque;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2570
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 2572
    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 2573
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->ARRAY_ACCESS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v4, :cond_35

    const/4 v1, 0x1

    .line 2574
    :goto_1d
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 2575
    sget-object v4, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_64

    .line 2592
    :cond_30
    :goto_30
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 2573
    :cond_35
    const/4 v1, 0x0

    goto :goto_1d

    .line 2580
    :pswitch_37  #0xa
    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 2578
    :goto_44
    if-eqz v1, :cond_8

    goto :goto_30

    .line 2583
    :pswitch_47  #0x9
    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->getMethodName(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_30

    .line 2577
    :pswitch_55  #0x8
    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_44

    .line 2575
    nop

    :pswitch_data_64
    .packed-switch 0x8
        :pswitch_55  #00000008
        :pswitch_47  #00000009
        :pswitch_37  #0000000a
    .end packed-switch
.end method

.method private splitToken(Ljava/lang/String;)V
    .registers 4

    .line 1515
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 1516
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1518
    :cond_15
    return-void
.end method

.method private typeParametersRest(Ljava/util/List;Lcom/google/googlejavaformat/Indent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/TypeParameterTree;",
            ">;",
            "Lcom/google/googlejavaformat/Indent;",
            ")V"
        }
    .end annotation

    .line 2300
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, p2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2301
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 2302
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2303
    const/4 v0, 0x1

    .line 2304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/TypeParameterTree;

    .line 2305
    if-nez v1, :cond_31

    .line 2306
    const-string v1, ","

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2307
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 2309
    :cond_31
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2310
    const/4 v0, 0x0

    move v1, v0

    .line 2311
    goto :goto_17

    .line 2312
    :cond_38
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2313
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2314
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2315
    return-void
.end method

.method private variableFragmentDims(ZILcom/sun/source/tree/Tree;)Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;
    .registers 8

    const/4 v1, 0x0

    .line 876
    if-nez p3, :cond_5

    move-object v0, v1

    .line 883
    :goto_4
    return-object v0

    .line 879
    :cond_5
    if-eqz p1, :cond_e

    .line 880
    sget-object v0, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {p3, v0}, Lcom/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object v0

    goto :goto_4

    .line 882
    :cond_e
    sget-object v0, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->NO:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {p3, v0}, Lcom/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object v2

    .line 883
    iget-object v0, v2, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/ImmutableList;

    if-lez p2, :cond_24

    const/4 v3, 0x0

    iget-object v2, v2, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :cond_24
    new-instance v2, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    invoke-direct {v2, v1, v0}, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;-><init>(Lcom/sun/source/tree/Tree;Lcom/google/common/collect/ImmutableList;)V

    move-object v0, v2

    goto :goto_4
.end method

.method private variableFragments(Lcom/google/common/collect/PeekingIterator;Lcom/sun/source/tree/Tree;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/PeekingIterator",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/VariableTree;",
            ">;"
        }
    .end annotation

    .line 3193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3194
    invoke-interface {p2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v2, :cond_40

    .line 3195
    invoke-static {p2}, Lcom/google/googlejavaformat/java/Trees;->getStartPosition(Lcom/sun/source/tree/Tree;)I

    move-result v2

    .line 3196
    check-cast p2, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3197
    :goto_16
    invoke-interface {p1}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3198
    invoke-interface {p1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v3, :cond_40

    .line 3199
    invoke-interface {p1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->getStartPosition(Lcom/sun/source/tree/Tree;)I

    move-result v0

    if-ne v0, v2, :cond_40

    .line 3200
    invoke-interface {p1}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 3203
    :cond_40
    return-object v1
.end method

.method private visitAnnotatedArrayType(Lcom/sun/source/tree/Tree;)V
    .registers 5

    .line 521
    sget-object v0, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {p1, v0}, Lcom/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 523
    iget-object v1, v0, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lcom/sun/source/tree/Tree;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 524
    new-instance v1, Ljava/util/ArrayDeque;

    iget-object v0, v0, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 525
    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    .line 526
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Verify;->verify(Z)V

    .line 527
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 528
    return-void
.end method

.method private visitAnnotations(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;",
            ")V"
        }
    .end annotation

    .line 1892
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1893
    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->isYes()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1894
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1896
    :cond_13
    const/4 v0, 0x1

    .line 1897
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/AnnotationTree;

    .line 1898
    if-nez v1, :cond_2e

    .line 1899
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1901
    :cond_2e
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1902
    const/4 v0, 0x0

    move v1, v0

    .line 1903
    goto :goto_19

    .line 1904
    :cond_35
    invoke-virtual {p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->isYes()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1905
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1908
    :cond_42
    return-void
.end method

.method private visitBlock(Lcom/sun/source/tree/BlockTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V
    .registers 7

    .line 1918
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1919
    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1920
    const-string v0, "static"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1921
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1923
    :cond_13
    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->isYes()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1924
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1926
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1953
    :goto_3a
    return-void

    .line 1928
    :cond_3b
    const-string v0, "{"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 1929
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 1930
    const-string v0, "}"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    goto :goto_3a

    .line 1933
    :cond_51
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1934
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1935
    const-string v0, "{"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 1936
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    if-ne p3, v0, :cond_9d

    .line 1937
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 1941
    :goto_71
    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatements(Ljava/util/List;)V

    .line 1942
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1943
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1944
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1945
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    if-ne p4, v0, :cond_a5

    .line 1946
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 1950
    :goto_92
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 1951
    const-string v0, "}"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    goto :goto_3a

    .line 1939
    :cond_9d
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    goto :goto_71

    .line 1948
    :cond_a5
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    goto :goto_92
.end method

.method private visitCatchClause(Lcom/sun/source/tree/CatchTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V
    .registers 6

    .line 2116
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 2117
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 2118
    const-string v0, "catch"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2119
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 2120
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2121
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2122
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v0

    .line 2123
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->UNION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_58

    .line 2124
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2125
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitUnionType(Lcom/sun/source/tree/VariableTree;)V

    .line 2126
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2134
    :goto_3d
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2135
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 2137
    invoke-interface {p1}, Lcom/sun/source/tree/CatchTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lcom/sun/source/tree/BlockTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 2139
    return-void

    .line 2129
    :cond_58
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill()V

    .line 2130
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2131
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2132
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_3d
.end method

.method private visitDotWithPrefix(Ljava/util/List;ZI)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 2531
    if-ltz p3, :cond_73

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_73

    move v1, v2

    .line 2533
    :goto_d
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v3, v4}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2534
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v4, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v3, v4}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2536
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lcom/google/googlejavaformat/Output$BreakTag;

    move-result-object v6

    move v3, v0

    .line 2537
    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7b

    .line 2538
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 2539
    if-eqz p2, :cond_46

    .line 2541
    if-ltz p3, :cond_75

    if-gt v3, p3, :cond_75

    .line 2542
    sget-object v4, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    .line 2547
    :goto_34
    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v7, ""

    sget-object v8, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v9

    invoke-virtual {v5, v4, v7, v8, v9}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 2548
    const-string v4, "."

    invoke-virtual {p0, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2550
    :cond_46
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lcom/google/googlejavaformat/Output$BreakTag;

    move-result-object v4

    .line 2551
    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dotExpressionUpToArgs(Lcom/sun/source/tree/ExpressionTree;Lcom/google/common/base/Optional;)V

    .line 2552
    if-ltz p3, :cond_5a

    if-ne v3, p3, :cond_5a

    .line 2553
    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2556
    :cond_5a
    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    sget-object v7, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v4, v5, v7}, Lcom/google/googlejavaformat/Indent$If;->make(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Indent$If;

    move-result-object v7

    .line 2557
    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    if-eqz v1, :cond_78

    move-object v4, v5

    :goto_67
    invoke-static {v6, v5, v4}, Lcom/google/googlejavaformat/Indent$If;->make(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Indent$If;

    move-result-object v4

    .line 2558
    invoke-direct {p0, v0, v7, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dotExpressionArgsAndParen(Lcom/sun/source/tree/ExpressionTree;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)V

    .line 2537
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move p2, v2

    goto :goto_20

    :cond_73
    move v1, v0

    .line 2531
    goto :goto_d

    .line 2544
    :cond_75
    sget-object v4, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    goto :goto_34

    .line 2557
    :cond_78
    sget-object v4, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_67

    .line 2563
    :cond_7b
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2564
    return-void
.end method

.method private visitEnumConstantDeclaration(Lcom/sun/source/tree/VariableTree;)V
    .registers 5

    .line 724
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/AnnotationTree;

    .line 725
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 726
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    goto :goto_c

    .line 728
    :cond_22
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    .line 729
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/NewClassTree;

    .line 730
    invoke-interface {v0}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 731
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    .line 736
    :goto_47
    invoke-interface {v0}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 737
    invoke-interface {v0}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->addBodyDeclarations(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V

    .line 740
    :cond_5c
    return-void

    .line 734
    :cond_5d
    invoke-interface {v0}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->addArguments(Ljava/util/List;Lcom/google/googlejavaformat/Indent;)V

    goto :goto_47
.end method

.method private visitFormals(Lcom/google/common/base/Optional;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/sun/source/tree/VariableTree;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/VariableTree;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    .line 2187
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2225
    :goto_d
    return-void

    .line 2190
    :cond_e
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2191
    const/4 v0, 0x1

    .line 2192
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move v8, v7

    .line 2210
    :goto_1a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_55

    .line 2211
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/VariableTree;

    .line 2212
    if-nez v0, :cond_2f

    .line 2213
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 2215
    :cond_2f
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->PARAMETER:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 2219
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    .line 2221
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_50

    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    .line 2215
    :goto_45
    const-string v5, "="

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitToDeclare(Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/sun/source/tree/VariableTree;Lcom/google/common/base/Optional;Ljava/lang/String;Lcom/google/common/base/Optional;)V

    .line 2210
    add-int/lit8 v1, v8, 0x1

    move v0, v7

    move v8, v1

    goto :goto_1a

    .line 2221
    :cond_50
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    goto :goto_45

    .line 2224
    :cond_55
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_d
.end method

.method private visitModifiers(Lcom/sun/source/tree/ModifiersTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ModifiersTree;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    .line 2026
    invoke-interface {p1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private visitModifiers(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2036
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->nextIsModifier()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2037
    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->EMPTY_LIST:Lcom/google/common/collect/ImmutableList;

    .line 2084
    :cond_11
    :goto_11
    return-object v3

    .line 2039
    :cond_12
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 2040
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    move v0, v1

    move v3, v2

    .line 2043
    :goto_20
    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 2044
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->nextIsModifier()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 2057
    :cond_2c
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v3}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2059
    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 2060
    invoke-static {p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->forceBreakList(Lcom/google/common/base/Optional;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 2062
    :goto_3b
    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->nextIsModifier()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2065
    :cond_47
    if-eqz v0, :cond_4e

    .line 2066
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 2069
    :cond_4e
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v3}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2071
    :goto_55
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->nextIsModifier()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_af

    .line 2072
    :cond_61
    if-nez v2, :cond_70

    .line 2073
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->breakFillList(Lcom/google/common/base/Optional;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 2075
    :cond_70
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->nextIsModifier()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 2076
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :goto_85
    move v2, v1

    .line 2079
    goto :goto_55

    .line 2047
    :cond_87
    if-nez v3, :cond_98

    .line 2048
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    .line 2049
    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 2050
    invoke-static {p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->forceBreakList(Lcom/google/common/base/Optional;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 2048
    :goto_95
    invoke-virtual {v3, v0}, Lcom/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 2053
    :cond_98
    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v0, v2

    move v3, v1

    .line 2055
    goto/16 :goto_20

    .line 2051
    :cond_a5
    invoke-static {p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->breakList(Lcom/google/common/base/Optional;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_95

    .line 2061
    :cond_aa
    invoke-static {p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->breakList(Lcom/google/common/base/Optional;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_3b

    .line 2083
    :cond_af
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2084
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->breakFillList(Lcom/google/common/base/Optional;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto/16 :goto_11

    .line 2078
    :cond_be
    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_85
.end method

.method private visitName(Lcom/sun/source/tree/Tree;)V
    .registers 5

    .line 2253
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    move-object v1, p1

    .line 2254
    :goto_6
    instance-of v0, v1, Lcom/sun/source/tree/MemberSelectTree;

    if-eqz v0, :cond_1b

    move-object v0, v1

    .line 2255
    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 2254
    check-cast v1, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    goto :goto_6

    .line 2257
    :cond_1b
    check-cast v1, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v1}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 2258
    const/4 v0, 0x1

    .line 2259
    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Name;

    .line 2260
    if-nez v1, :cond_3d

    .line 2261
    const-string v1, "."

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2263
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2264
    const/4 v0, 0x0

    move v1, v0

    .line 2265
    goto :goto_2a

    .line 2266
    :cond_47
    return-void
.end method

.method private visitPackage(Lcom/sun/source/tree/ExpressionTree;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;)V"
        }
    .end annotation

    .line 1444
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1445
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/AnnotationTree;

    .line 1446
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1447
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_a

    .line 1449
    :cond_20
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1451
    :cond_25
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1452
    const-string v0, "package"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1454
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitName(Lcom/sun/source/tree/Tree;)V

    .line 1455
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1456
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1457
    return-void
.end method

.method private visitRegularDot(Ljava/util/List;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 2449
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_74

    move v6, v3

    .line 2450
    :goto_9
    if-nez p2, :cond_12

    .line 2452
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2456
    :cond_12
    iget v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->indentMultiplier:I

    mul-int/lit8 v1, v1, 0x4

    .line 2457
    if-eqz p2, :cond_19

    move v0, v1

    .line 2458
    :cond_19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, p2

    move v4, v0

    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 2459
    if-eqz v2, :cond_84

    .line 2460
    if-le v4, v1, :cond_3a

    .line 2461
    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v8, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v9, ""

    sget-object v10, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v5, v8, v9, v10}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 2463
    :cond_3a
    const-string v5, "."

    invoke-virtual {p0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2464
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .line 2466
    :goto_42
    if-eqz v6, :cond_76

    sget-object v4, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    :goto_46
    invoke-direct {p0, v0, p1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->fillFirstArgument(Lcom/sun/source/tree/ExpressionTree;Ljava/util/List;Lcom/google/googlejavaformat/Indent;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 2467
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lcom/google/googlejavaformat/Output$BreakTag;

    move-result-object v4

    .line 2468
    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dotExpressionUpToArgs(Lcom/sun/source/tree/ExpressionTree;Lcom/google/common/base/Optional;)V

    .line 2469
    iget-object v8, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    sget-object v9, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v4, v8, v9}, Lcom/google/googlejavaformat/Indent$If;->make(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Indent$If;

    move-result-object v4

    .line 2470
    if-nez v6, :cond_63

    if-eqz v2, :cond_79

    :cond_63
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    :goto_65
    invoke-direct {p0, v0, v4, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dotExpressionArgsAndParen(Lcom/sun/source/tree/ExpressionTree;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)V

    .line 2473
    :cond_68
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlejavaformat/java/Trees;->getLength(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I

    move-result v0

    add-int/2addr v0, v5

    move v2, v3

    move v4, v0

    .line 2475
    goto :goto_1f

    :cond_74
    move v6, v0

    .line 2449
    goto :goto_9

    .line 2466
    :cond_76
    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->minusFour:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_46

    .line 2470
    :cond_79
    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_65

    .line 2476
    :cond_7c
    if-nez p2, :cond_83

    .line 2477
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2479
    :cond_83
    return-void

    :cond_84
    move v5, v4

    goto :goto_42
.end method

.method private visitStatement(Lcom/sun/source/tree/StatementTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V
    .registers 7

    .line 1963
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1964
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/StatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2a

    .line 1970
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1971
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 1972
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1973
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1968
    :goto_29
    return-void

    .line 1966
    :cond_2a
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1967
    check-cast p1, Lcom/sun/source/tree/BlockTree;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lcom/sun/source/tree/BlockTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    goto :goto_29
.end method

.method private visitStatements(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/StatementTree;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 1978
    const/4 v0, 0x1

    .line 1979
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v3

    .line 1981
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    move v1, v0

    .line 1982
    :goto_e
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1983
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/StatementTree;

    .line 1984
    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1985
    if-nez v1, :cond_28

    .line 1986
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v4, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v1, v4}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 1988
    :cond_28
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 1990
    invoke-direct {p0, v3, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->variableFragments(Lcom/google/common/collect/PeekingIterator;Lcom/sun/source/tree/Tree;)Ljava/util/List;

    move-result-object v1

    .line 1991
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 1992
    sget-object v4, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    .line 1995
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->canLocalHaveHorizontalAnnotations(Lcom/sun/source/tree/ModifiersTree;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    move-result-object v0

    .line 1992
    invoke-virtual {p0, v1, v4, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitVariables(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V

    :goto_48
    move v1, v2

    .line 1999
    goto :goto_e

    .line 1997
    :cond_4a
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_48

    .line 2000
    :cond_4f
    return-void
.end method

.method private visitThrowsClause(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)V"
        }
    .end annotation

    .line 2229
    const-string v0, "throws"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2230
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 2231
    const/4 v0, 0x1

    .line 2232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 2233
    if-nez v1, :cond_2c

    .line 2234
    const-string v1, ","

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2235
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 2237
    :cond_2c
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2238
    const/4 v0, 0x0

    move v1, v0

    .line 2239
    goto :goto_12

    .line 2240
    :cond_33
    return-void
.end method

.method private visitToDeclare(Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/sun/source/tree/VariableTree;Lcom/google/common/base/Optional;Ljava/lang/String;Lcom/google/common/base/Optional;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            "Lcom/sun/source/tree/VariableTree;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2275
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 2276
    invoke-static/range {p3 .. p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->fromVariable(Lcom/sun/source/tree/VariableTree;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->isYes()Z

    move-result v1

    .line 2277
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 2278
    invoke-interface/range {p3 .. p3}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v5

    .line 2279
    invoke-interface/range {p3 .. p3}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 2284
    invoke-static {v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->valueOf(Z)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    move-result-object v6

    .line 2286
    invoke-interface/range {p3 .. p3}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v8

    .line 2291
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v13

    .line 2292
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v14

    .line 2279
    const-string v9, ""

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v14}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->declareOne(Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;Ljava/util/List;Ljavax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)I

    .line 2293
    return-void
.end method

.method private visitUnionType(Lcom/sun/source/tree/VariableTree;)V
    .registers 16

    const/4 v3, 0x0

    .line 2145
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/UnionTypeTree;

    .line 2146
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2147
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 2148
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v1

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAndBreakModifiers(Lcom/sun/source/tree/ModifiersTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)V

    .line 2150
    invoke-interface {v0}, Lcom/sun/source/tree/UnionTypeTree;->getTypeAlternatives()Ljava/util/List;

    move-result-object v4

    .line 2151
    const/4 v0, 0x1

    move v2, v3

    :goto_24
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_50

    .line 2153
    if-nez v0, :cond_4e

    .line 2154
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 2155
    const-string v1, "|"

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2156
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    move v1, v0

    .line 2160
    :goto_40
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2152
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_24

    :cond_4e
    move v1, v3

    .line 2158
    goto :goto_40

    .line 2162
    :cond_50
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 2163
    const-string v0, "|"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2164
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 2165
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/Tree;

    .line 2166
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 2169
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v3

    sget-object v5, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    .line 2172
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 2173
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v7

    .line 2177
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v10

    .line 2178
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v11

    .line 2179
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v12

    .line 2180
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v13

    .line 2166
    const-string v8, ""

    const-string v9, "="

    move-object v0, p0

    invoke-virtual/range {v0 .. v13}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->declareOne(Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;Ljava/util/List;Ljavax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)I

    .line 2181
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2182
    return-void
.end method

.method private static walkInfix(ILcom/sun/source/tree/ExpressionTree;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 210
    instance-of v0, p1, Lcom/sun/source/tree/BinaryTree;

    if-eqz v0, :cond_27

    move-object v0, p1

    .line 211
    check-cast v0, Lcom/sun/source/tree/BinaryTree;

    .line 212
    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->precedence(Lcom/sun/source/tree/ExpressionTree;)I

    move-result v1

    if-ne v1, p0, :cond_23

    .line 213
    invoke-interface {v0}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->walkInfix(ILcom/sun/source/tree/ExpressionTree;Ljava/util/List;Ljava/util/List;)V

    .line 214
    invoke-static {p1}, Lcom/google/googlejavaformat/java/Trees;->operatorName(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface {v0}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->walkInfix(ILcom/sun/source/tree/ExpressionTree;Ljava/util/List;Ljava/util/List;)V

    .line 222
    :goto_22
    return-void

    .line 217
    :cond_23
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 220
    :cond_27
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method


# virtual methods
.method addArguments(Ljava/util/List;Lcom/google/googlejavaformat/Indent;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;",
            "Lcom/google/googlejavaformat/Indent;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2719
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, p2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2720
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2721
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 2722
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_86

    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->argumentsAreTabular(Ljava/util/List;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_86

    .line 2723
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 2724
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    move v2, v1

    move v4, v3

    .line 2726
    :goto_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_76

    .line 2727
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 2728
    add-int/lit8 v0, v4, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 2729
    if-nez v2, :cond_53

    .line 2730
    const-string v2, ","

    invoke-virtual {p0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2731
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 2733
    :cond_53
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v2, v5}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2734
    invoke-virtual {p0, v1, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2735
    const-string v1, ","

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2736
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 2737
    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2738
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2726
    add-int/lit8 v0, v4, 0x2

    move v2, v3

    move v4, v0

    goto :goto_30

    .line 2741
    :cond_76
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2757
    :cond_7b
    :goto_7b
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2758
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2759
    return-void

    .line 2742
    :cond_86
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->isFormatMethod(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 2743
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 2744
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2745
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2746
    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2747
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 2748
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2749
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->argList(Ljava/util/List;)V

    .line 2750
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2751
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_7b

    .line 2753
    :cond_ca
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 2754
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->argList(Ljava/util/List;)V

    goto :goto_7b
.end method

.method addBodyDeclarations(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 3129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3130
    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->isYes()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3131
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 3132
    const-string v0, "{"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 3133
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 3134
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 3135
    const-string v0, "}"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 3136
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 3183
    :cond_33
    :goto_33
    return-void

    .line 3139
    :cond_34
    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->isYes()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 3140
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 3141
    const-string v0, "{"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 3142
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 3144
    :cond_4d
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 3145
    invoke-virtual {p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->isYes()Z

    move-result v0

    .line 3147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v5

    move v1, v0

    move v3, v2

    .line 3148
    :goto_62
    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 3149
    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 3150
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    .line 3151
    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 3152
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v6, :cond_84

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->hasJavaDoc(Lcom/sun/source/tree/Tree;)Z

    move-result v4

    if-eqz v4, :cond_af

    :cond_84
    const/4 v4, 0x1

    .line 3154
    :goto_85
    if-eqz v1, :cond_b1

    .line 3155
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v3, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 3159
    :cond_8e
    :goto_8e
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 3161
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v3, :cond_bf

    .line 3162
    invoke-direct {p0, v5, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->variableFragments(Lcom/google/common/collect/PeekingIterator;Lcom/sun/source/tree/Tree;)Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->FIELD:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    .line 3165
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->fieldAnnotationDirection(Lcom/sun/source/tree/ModifiersTree;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    move-result-object v0

    .line 3162
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitVariables(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V

    :goto_ac
    move v1, v2

    move v3, v4

    .line 3170
    goto :goto_62

    :cond_af
    move v4, v2

    .line 3152
    goto :goto_85

    .line 3156
    :cond_b1
    if-nez v1, :cond_8e

    if-nez v4, :cond_b7

    if-eqz v3, :cond_8e

    .line 3157
    :cond_b7
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v3, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    goto :goto_8e

    .line 3167
    :cond_bf
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_ac

    .line 3172
    :cond_c4
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    .line 3173
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 3174
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 3175
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 3176
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 3177
    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->isYes()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3178
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 3179
    const-string v0, "}"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 3180
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto/16 :goto_33
.end method

.method addTypeArguments(Ljava/util/List;Lcom/google/googlejavaformat/Indent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;",
            "Lcom/google/googlejavaformat/Indent;",
            ")V"
        }
    .end annotation

    .line 2692
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2708
    :cond_8
    :goto_8
    return-void

    .line 2695
    :cond_9
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2696
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, p2}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2697
    const/4 v0, 0x1

    .line 2698
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 2699
    if-nez v1, :cond_33

    .line 2700
    const-string v1, ","

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2701
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 2703
    :cond_33
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2704
    const/4 v0, 0x0

    move v1, v0

    .line 2705
    goto :goto_19

    .line 2706
    :cond_3a
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2707
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_8
.end method

.method declareOne(Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;Ljava/util/List;Ljavax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/sun/source/tree/ModifiersTree;",
            ">;",
            "Lcom/sun/source/tree/Tree;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;",
            "Ljavax/lang/model/element/Name;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;",
            ">;)I"
        }
    .end annotation

    .line 2920
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lcom/google/googlejavaformat/Output$BreakTag;

    move-result-object v4

    .line 2921
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lcom/google/googlejavaformat/Output$BreakTag;

    move-result-object v5

    .line 2926
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->FIELD:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    if-ne p1, v1, :cond_184

    const/4 v1, 0x1

    move v3, v1

    .line 2928
    :goto_e
    if-eqz v3, :cond_19

    .line 2929
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-static {v5}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->conditional(Lcom/google/googlejavaformat/Output$BreakTag;)Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 2932
    :cond_19
    invoke-virtual/range {p13 .. p13}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_188

    .line 2935
    invoke-virtual/range {p13 .. p13}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    iget-object v1, v1, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/ImmutableList;

    .line 2936
    :goto_27
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 2937
    const/4 v2, 0x0

    .line 2939
    iget-object v7, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    .line 2941
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->PARAMETER:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    if-ne p1, v1, :cond_18e

    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_18e

    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ModifiersTree;

    invoke-interface {v1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18e

    .line 2942
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    .line 2939
    :goto_4b
    invoke-virtual {v7, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2945
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2946
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ModifiersTree;

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v7

    invoke-virtual {p0, v1, p2, v7}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAndBreakModifiers(Lcom/sun/source/tree/ModifiersTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)V

    .line 2945
    :cond_61
    iget-object v7, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    if-eqz p4, :cond_192

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    :goto_67
    invoke-virtual {v7, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2951
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v7, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v7}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2953
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v7, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v7}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2955
    invoke-virtual/range {p13 .. p13}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_196

    invoke-virtual/range {p13 .. p13}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    iget-object v1, v1, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lcom/sun/source/tree/Tree;

    if-eqz v1, :cond_196

    .line 2956
    invoke-virtual/range {p13 .. p13}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    iget-object v1, v1, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lcom/sun/source/tree/Tree;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2957
    invoke-interface {v6}, Ljava/util/Deque;->size()I

    move-result v1

    .line 2958
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v7, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v2, v7}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2959
    invoke-direct {p0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    .line 2960
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2961
    invoke-interface {v6}, Ljava/util/Deque;->size()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    .line 2965
    :goto_ad
    invoke-virtual/range {p5 .. p5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->isYes()Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 2966
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    sget-object v7, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v1, v7}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotations(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;)V

    .line 2967
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v7, "..."

    invoke-virtual {v1, v7}, Lcom/google/googlejavaformat/OpsBuilder;->op(Ljava/lang/String;)V

    .line 2965
    :cond_c3
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2972
    if-eqz p4, :cond_d9

    .line 2973
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v7, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v8, " "

    sget-object v9, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v10

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 2978
    :cond_d9
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v7, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    sget-object v8, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v4, v7, v8}, Lcom/google/googlejavaformat/Indent$If;->make(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Indent$If;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2979
    invoke-virtual/range {p12 .. p12}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 2980
    invoke-virtual/range {p12 .. p12}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2984
    :goto_f6
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/OpsBuilder;->op(Ljava/lang/String;)V

    .line 2986
    invoke-direct {p0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    .line 2987
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2989
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2991
    invoke-virtual/range {p10 .. p10}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 2992
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 2993
    move-object/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2994
    invoke-virtual/range {p10 .. p10}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v6, :cond_1a3

    .line 2995
    invoke-virtual/range {p10 .. p10}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/NewArrayTree;

    invoke-interface {v1}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-nez v1, :cond_1a3

    .line 2996
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->minusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v4}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2997
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 2998
    invoke-virtual/range {p10 .. p10}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    const/4 v4, 0x0

    invoke-interface {v1, p0, v4}, Lcom/sun/source/tree/ExpressionTree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2999
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2991
    :cond_14f
    :goto_14f
    invoke-virtual/range {p11 .. p11}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_16e

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v1

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 3010
    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual/range {p11 .. p11}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    .line 3009
    :cond_16e
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 3016
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 3018
    if-eqz v3, :cond_183

    .line 3019
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-static {v5}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->conditional(Lcom/google/googlejavaformat/Output$BreakTag;)Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 3022
    :cond_183
    return v2

    .line 2926
    :cond_184
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_e

    .line 2936
    :cond_188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_27

    .line 2943
    :cond_18e
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    goto/16 :goto_4b

    .line 2945
    :cond_192
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    goto/16 :goto_67

    .line 2963
    :cond_196
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto/16 :goto_ad

    .line 2982
    :cond_19c
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    goto/16 :goto_f6

    .line 3001
    :cond_1a3
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v6, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    sget-object v7, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v4, v6, v7}, Lcom/google/googlejavaformat/Indent$If;->make(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Indent$If;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 3003
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 3004
    invoke-virtual/range {p10 .. p10}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 3006
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_14f
.end method

.method final genSym()Lcom/google/googlejavaformat/Output$BreakTag;
    .registers 2

    .line 3317
    new-instance v0, Lcom/google/googlejavaformat/Output$BreakTag;

    invoke-direct {v0}, Lcom/google/googlejavaformat/Output$BreakTag;-><init>()V

    return-object v0
.end method

.method nextIsModifier()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2088
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_9a

    :cond_15
    const/4 v0, -0x1

    :goto_16
    packed-switch v0, :pswitch_data_cc

    move v0, v1

    .line 2103
    :goto_1a
    return v0

    .line 2088
    :sswitch_1b
    const-string v3, "strictfp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xa

    goto :goto_16

    :sswitch_26
    const-string v3, "abstract"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    goto :goto_16

    :sswitch_30
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xb

    goto :goto_16

    :sswitch_3b
    const-string v3, "transient"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x6

    goto :goto_16

    :sswitch_45
    const-string v3, "final"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x5

    goto :goto_16

    :sswitch_4f
    const-string v3, "private"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    goto :goto_16

    :sswitch_59
    const-string v3, "protected"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :sswitch_63
    const-string v3, "static"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x4

    goto :goto_16

    :sswitch_6d
    const-string v3, "public"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :sswitch_77
    const-string v3, "native"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x9

    goto :goto_16

    :sswitch_82
    const-string v3, "synchronized"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x8

    goto :goto_16

    :sswitch_8d
    const-string v3, "volatile"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x7

    goto :goto_16

    :pswitch_97  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    move v0, v2

    .line 2101
    goto :goto_1a

    .line 2088
    nop

    :sswitch_data_9a
    .sparse-switch
        -0x70890264 -> :sswitch_8d
        -0x576a7aec -> :sswitch_82
        -0x3ebdafe9 -> :sswitch_77
        -0x3a424d97 -> :sswitch_6d
        -0x35323192 -> :sswitch_63
        -0x24459452 -> :sswitch_59
        -0x12beda7d -> :sswitch_4f
        0x5cec176 -> :sswitch_45
        0x3ebfa28a -> :sswitch_3b
        0x5c13d641 -> :sswitch_30
        0x6749f022 -> :sswitch_26
        0x6af8dd53 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_97  #00000000
        :pswitch_97  #00000001
        :pswitch_97  #00000002
        :pswitch_97  #00000003
        :pswitch_97  #00000004
        :pswitch_97  #00000005
        :pswitch_97  #00000006
        :pswitch_97  #00000007
        :pswitch_97  #00000008
        :pswitch_97  #00000009
        :pswitch_97  #0000000a
        :pswitch_97  #0000000b
    .end packed-switch
.end method

.method public bridge synthetic scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 271
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    instance-of v0, p1, Lcom/sun/source/tree/ExpressionTree;

    if-nez v0, :cond_13

    invoke-interface {v1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->depth()I

    move-result v0

    .line 274
    const/4 v1, 0x0

    :try_start_22
    invoke-super {p0, p1, v1}, Lcom/sun/source/util/TreePathScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Lcom/google/googlejavaformat/FormattingError; {:try_start_22 .. :try_end_25} :catch_4a
    .catchall {:try_start_22 .. :try_end_25} :catchall_32

    .line 280
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/OpsBuilder;->checkClosed(I)V

    .line 283
    return-object v2

    .line 271
    :cond_30
    const/4 v0, 0x0

    goto :goto_14

    .line 277
    :catchall_32
    move-exception v0

    .line 278
    :try_start_33
    new-instance v1, Lcom/google/googlejavaformat/FormattingError;

    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-static {v0}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlejavaformat/OpsBuilder;->diagnostic(Ljava/lang/String;)Lcom/google/googlejavaformat/FormatterDiagnostic;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlejavaformat/FormattingError;-><init>(Lcom/google/googlejavaformat/FormatterDiagnostic;)V

    throw v1
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_43

    .line 280
    :catchall_43
    move-exception v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 281
    throw v0

    .line 275
    :catch_4a
    move-exception v0

    .line 276
    :try_start_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_43
.end method

.method final sync(Lcom/sun/source/tree/Tree;)V
    .registers 4

    .line 3313
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    check-cast p1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->sync(I)V

    .line 3314
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 3322
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "builder"

    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final token(Ljava/lang/String;)V
    .registers 6

    .line 3275
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 3276
    return-void
.end method

.method final token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V
    .registers 6

    .line 3285
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    .line 3286
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    .line 3285
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 3287
    return-void
.end method

.method final tokenBreakTrailingComment(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V
    .registers 7

    .line 3293
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    .line 3297
    invoke-static {p2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 3293
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 3298
    return-void
.end method

.method public visit(Ljavax/lang/model/element/Name;)Z
    .registers 3

    .line 1579
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1580
    const/4 v0, 0x0

    return v0
.end method

.method visitAndBreakModifiers(Lcom/sun/source/tree/ModifiersTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ModifiersTree;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Output$BreakTag;",
            ">;)V"
        }
    .end annotation

    .line 2009
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Lcom/sun/source/tree/ModifiersTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 2010
    return-void
.end method

.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9

    const/4 v5, 0x0

    .line 1110
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1112
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitSingleMemberAnnotation(Lcom/sun/source/tree/AnnotationTree;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1155
    :goto_a
    return-object v5

    .line 1116
    :cond_b
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1117
    const-string v0, "@"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1118
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getAnnotationType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1119
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 1120
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1121
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 1123
    const/4 v0, 0x1

    .line 1127
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->IS_ARRAY_VALUE:Lcom/google/common/base/Predicate;

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v2

    .line 1128
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 1129
    if-nez v1, :cond_67

    .line 1130
    const-string v1, ","

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1131
    if-eqz v2, :cond_73

    .line 1132
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1137
    :cond_67
    :goto_67
    instance-of v1, v0, Lcom/sun/source/tree/AssignmentTree;

    if-eqz v1, :cond_7b

    .line 1138
    check-cast v0, Lcom/sun/source/tree/AssignmentTree;

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotationArgument(Lcom/sun/source/tree/AssignmentTree;)V

    .line 1142
    :goto_70
    const/4 v0, 0x0

    move v1, v0

    .line 1143
    goto :goto_4d

    .line 1134
    :cond_73
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    goto :goto_67

    .line 1140
    :cond_7b
    invoke-virtual {p0, v0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_70

    .line 1144
    :cond_7f
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v2, ""

    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->minusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 1145
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1146
    const-string v0, ")"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 1147
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto/16 :goto_a

    .line 1150
    :cond_a1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    const-string v1, "("

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1151
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1152
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1154
    :cond_bd
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto/16 :goto_a
.end method

.method public visitAnnotationArgument(Lcom/sun/source/tree/AssignmentTree;)V
    .registers 6

    const/4 v3, 0x0

    .line 1159
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_3f

    const/4 v0, 0x1

    .line 1160
    :goto_e
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1161
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    if-eqz v0, :cond_41

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    :goto_17
    invoke-virtual {v2, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1162
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1163
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1164
    const-string v1, "="

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1165
    if-eqz v0, :cond_44

    .line 1166
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1170
    :goto_32
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1171
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1172
    return-void

    .line 1159
    :cond_3f
    const/4 v0, 0x0

    goto :goto_e

    .line 1161
    :cond_41
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_17

    .line 1168
    :cond_44
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    goto :goto_32
.end method

.method public visitAnnotationType(Lcom/sun/source/tree/ClassTree;)V
    .registers 5

    .line 360
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 361
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 362
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAndBreakModifiers(Lcom/sun/source/tree/ModifiersTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)V

    .line 363
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 364
    const-string v0, "@"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 365
    const-string v0, "interface"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 367
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    .line 368
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 369
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 370
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5f

    .line 371
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 372
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 377
    :goto_57
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    .line 378
    return-void

    .line 375
    :cond_5f
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->addBodyDeclarations(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V

    goto :goto_57
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 382
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 383
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitDot(Lcom/sun/source/tree/ExpressionTree;)V

    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArrayInitializer(Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 422
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 423
    const-string v0, "{"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 424
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 425
    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 427
    :cond_27
    const-string v0, "}"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 498
    :goto_2e
    return v3

    .line 428
    :cond_2f
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->argumentsAreTabular(Ljava/util/List;)I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_c8

    .line 429
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 430
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 433
    invoke-static {p1, v4}, Lcom/google/common/collect/Iterables;->partition(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 434
    if-nez v1, :cond_63

    .line 435
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 437
    :cond_63
    iget-object v6, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-eq v1, v7, :cond_79

    if-ne v4, v2, :cond_a2

    :cond_79
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    :goto_7b
    invoke-virtual {v6, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 439
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_83
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 440
    if-nez v1, :cond_9d

    .line 441
    const-string v1, ","

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v7, " "

    invoke-virtual {v1, v7}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 444
    :cond_9d
    invoke-virtual {p0, v0, v8}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v1, v3

    .line 446
    goto :goto_83

    .line 437
    :cond_a2
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_7b

    .line 447
    :cond_a5
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    move v1, v3

    .line 450
    goto :goto_50

    .line 451
    :cond_b3
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->minusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Indent;)V

    .line 452
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 453
    const-string v0, "}"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    goto/16 :goto_2e

    .line 459
    :cond_c8
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    move v1, v3

    .line 460
    :goto_cd
    const/4 v4, 0x2

    if-ge v1, v4, :cond_17a

    .line 461
    if-nez v0, :cond_136

    move v0, v3

    .line 470
    :goto_d3
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->hasOnlyShortItems(Ljava/util/List;)Z

    move-result v4

    .line 471
    if-nez v4, :cond_177

    if-nez v0, :cond_14b

    move v1, v2

    .line 473
    :goto_dc
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v5}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 474
    const-string v0, "{"

    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 475
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->getInput()Lcom/google/googlejavaformat/Input;

    move-result-object v0

    const-string v5, ","

    invoke-direct {p0, v0, p1, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->hasTrailingToken(Lcom/google/googlejavaformat/Input;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 476
    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    if-eqz v0, :cond_14d

    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    :goto_fc
    const-string v6, ""

    sget-object v7, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 477
    if-eqz v1, :cond_10c

    .line 478
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v5, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v5}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 481
    :cond_10c
    if-eqz v4, :cond_150

    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    move-object v4, v0

    .line 482
    :goto_111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_115
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_154

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 483
    if-nez v2, :cond_131

    .line 484
    const-string v2, ","

    invoke-virtual {p0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v6, " "

    sget-object v7, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v2, v4, v6, v7}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 487
    :cond_131
    invoke-virtual {p0, v0, v8}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v2, v3

    .line 489
    goto :goto_115

    .line 464
    :cond_136
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_144

    move v0, v2

    .line 466
    goto :goto_d3

    .line 468
    :cond_144
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    :cond_14b
    move v1, v3

    .line 471
    goto :goto_dc

    .line 476
    :cond_14d
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    goto :goto_fc

    .line 481
    :cond_150
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    move-object v4, v0

    goto :goto_111

    .line 490
    :cond_154
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    .line 491
    if-eqz v1, :cond_162

    .line 492
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 494
    :cond_162
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->minusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Indent;)V

    .line 495
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 496
    const-string v0, "}"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    goto/16 :goto_2e

    :cond_177
    move v1, v2

    goto/16 :goto_dc

    :cond_17a
    move v0, v3

    goto/16 :goto_d3
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 515
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 516
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotatedArrayType(Lcom/sun/source/tree/Tree;)V

    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 532
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 533
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 534
    const-string v0, "assert"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 536
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    if-nez v0, :cond_57

    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    :goto_1f
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 537
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 538
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 539
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 540
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 542
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 544
    :cond_47
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 545
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 546
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 547
    return-object v2

    .line 536
    :cond_57
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_1f
.end method

.method public bridge synthetic visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 552
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 553
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 554
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 555
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 556
    invoke-static {p1}, Lcom/google/googlejavaformat/java/Trees;->operatorName(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->splitToken(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 558
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 559
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 560
    return-object v2
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 12

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 1058
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1064
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    invoke-static {p1}, Lcom/google/googlejavaformat/java/Trees;->precedence(Lcom/sun/source/tree/ExpressionTree;)I

    move-result v0

    invoke-static {v0, p1, v3, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->walkInfix(ILcom/sun/source/tree/ExpressionTree;Ljava/util/List;Ljava/util/List;)V

    .line 1067
    invoke-direct {p0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->hasOnlyShortItems(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5d

    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    move-object v1, v0

    .line 1068
    :goto_1f
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v5}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1069
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v0, v8}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1070
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1071
    :goto_33
    if-ge v2, v5, :cond_61

    .line 1072
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v6, " "

    sget-object v7, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 1073
    iget-object v6, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/googlejavaformat/OpsBuilder;->op(Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1075
    add-int/lit8 v0, v2, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v0, v8}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1071
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_33

    .line 1067
    :cond_5d
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    move-object v1, v0

    goto :goto_1f

    .line 1077
    :cond_61
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1078
    return-object v8
.end method

.method public bridge synthetic visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    .line 565
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lcom/sun/source/tree/BlockTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 566
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitBreak(Lcom/sun/source/tree/BreakTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 584
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 585
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 586
    const-string v0, "break"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 587
    invoke-interface {p1}, Lcom/sun/source/tree/BreakTree;->getLabel()Ljavax/lang/model/element/Name;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 588
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 589
    invoke-interface {p1}, Lcom/sun/source/tree/BreakTree;->getLabel()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    .line 591
    :cond_23
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 592
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitCase(Lcom/sun/source/tree/CaseTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 1620
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1621
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 1622
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1623
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    if-nez v0, :cond_41

    .line 1624
    const-string v0, "default"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 1625
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1632
    :goto_1e
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1635
    :try_start_25
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 1636
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatements(Ljava/util/List;)V
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_5a

    .line 1638
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 1639
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1641
    return-object v2

    .line 1627
    :cond_41
    const-string v0, "case"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 1628
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1629
    invoke-interface {p1}, Lcom/sun/source/tree/CaseTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1630
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_1e

    .line 1638
    :catchall_5a
    move-exception v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 1639
    throw v0
.end method

.method public bridge synthetic visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 2109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected manual descent into catch trees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 342
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 351
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitEnumDeclaration(Lcom/sun/source/tree/ClassTree;)Z

    .line 345
    :goto_1b
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 348
    :cond_27
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitClassDeclaration(Lcom/sun/source/tree/ClassTree;)V

    goto :goto_1b

    .line 344
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotationType(Lcom/sun/source/tree/ClassTree;)V

    goto :goto_1b
.end method

.method public visitClassDeclaration(Lcom/sun/source/tree/ClassTree;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1768
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1769
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Lcom/sun/source/tree/ModifiersTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)Ljava/util/List;

    move-result-object v3

    .line 1771
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-eqz v0, :cond_de

    move v0, v1

    .line 1772
    :goto_1b
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1773
    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5, v3}, Lcom/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 1774
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v5, :cond_e1

    const-string v3, "interface"

    :goto_34
    invoke-virtual {p0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1775
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v3}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1776
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    .line 1777
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    .line 1778
    const-string v3, "<"

    invoke-virtual {p0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1780
    :cond_52
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v5, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v3, v5}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1782
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_70

    .line 1783
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    .line 1785
    if-nez v0, :cond_6b

    if-eqz v4, :cond_e5

    :cond_6b
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    .line 1783
    :goto_6d
    invoke-direct {p0, v5, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->typeParametersRest(Ljava/util/List;Lcom/google/googlejavaformat/Indent;)V

    .line 1787
    :cond_70
    const-string v3, "extends"

    if-eqz v0, :cond_8c

    .line 1788
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1789
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1790
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1791
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1793
    :cond_8c
    if-eqz v4, :cond_f3

    .line 1794
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1795
    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_e8

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    :goto_a3
    invoke-virtual {v4, v0}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1796
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v4, :cond_eb

    move-object v0, v3

    :goto_af
    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1799
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 1800
    if-nez v1, :cond_d9

    .line 1801
    const-string v1, ","

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1802
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 1804
    :cond_d9
    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v1, v2

    .line 1806
    goto :goto_bf

    :cond_de
    move v0, v2

    .line 1771
    goto/16 :goto_1b

    .line 1774
    :cond_e1
    const-string v3, "class"

    goto/16 :goto_34

    .line 1785
    :cond_e5
    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_6d

    .line 1795
    :cond_e8
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_a3

    .line 1796
    :cond_eb
    const-string v0, "implements"

    goto :goto_af

    .line 1807
    :cond_ee
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1810
    :cond_f3
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1811
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_107

    .line 1812
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1816
    :goto_103
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    .line 1817
    return-void

    .line 1814
    :cond_107
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->addBodyDeclarations(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V

    goto :goto_103
.end method

.method public bridge synthetic visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 288
    const/4 v0, 0x1

    .line 289
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageName()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 290
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 291
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageName()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitPackage(Lcom/sun/source/tree/ExpressionTree;Ljava/util/List;)V

    .line 292
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    move v0, v1

    .line 295
    :cond_1d
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getImports()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 296
    if-nez v0, :cond_30

    .line 297
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v2}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 299
    :cond_30
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getImports()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ImportTree;

    .line 300
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 301
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v4, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v3, v4}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 302
    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 303
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    goto :goto_38

    :cond_57
    move v0, v1

    .line 307
    :cond_58
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    .line 308
    invoke-interface {p1}, Lcom/sun/source/tree/CompilationUnitTree;->getTypeDecls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_64
    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 309
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->IMPORT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v5, :cond_64

    .line 314
    if-nez v2, :cond_81

    .line 315
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v4, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v2, v4}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 317
    :cond_81
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 318
    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 319
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 321
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    move v2, v1

    .line 322
    goto :goto_64

    .line 324
    :cond_91
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 325
    return-object v6
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 571
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 572
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 573
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 574
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 575
    invoke-static {p1}, Lcom/google/googlejavaformat/java/Trees;->operatorName(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->splitToken(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 577
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 578
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 579
    return-object v2
.end method

.method public bridge synthetic visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 638
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 639
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 640
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 641
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 642
    const-string v0, "?"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 644
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 645
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 646
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 648
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 649
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 650
    return-object v2
.end method

.method public bridge synthetic visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitContinue(Lcom/sun/source/tree/ContinueTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 655
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 656
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 657
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 658
    invoke-interface {p1}, Lcom/sun/source/tree/ContinueTree;->getLabel()Ljavax/lang/model/element/Name;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 659
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 660
    invoke-interface {p1}, Lcom/sun/source/tree/ContinueTree;->getLabel()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    .line 662
    :cond_23
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 664
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    const/4 v4, 0x0

    .line 669
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 670
    const-string v0, "do"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 671
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lcom/sun/source/tree/StatementTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 676
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/StatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_4c

    .line 677
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 681
    :goto_27
    const-string v0, "while"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 683
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 684
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->skipParen(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 685
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 686
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 687
    return-object v4

    .line 679
    :cond_4c
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    goto :goto_27
.end method

.method visitDot(Lcom/sun/source/tree/ExpressionTree;)V
    .registers 14

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2323
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 2330
    :cond_9
    invoke-interface {v5, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 2331
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ARRAY_ACCESS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_121

    .line 2332
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 2334
    :goto_18
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_124

    .line 2348
    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    move-object v1, v0

    .line 2352
    :goto_2e
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2358
    if-eqz v1, :cond_11e

    .line 2361
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v6, :cond_80

    move-object v0, v1

    check-cast v0, Lcom/sun/source/tree/NewClassTree;

    invoke-interface {v0}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 2362
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v6, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v6}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2363
    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2364
    const-string v0, "."

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    move v0, v3

    .line 2371
    :goto_5a
    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayIndices(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/Deque;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->formatArrayIndices(Ljava/util/Deque;)V

    .line 2372
    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 2373
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 2440
    :cond_6c
    :goto_6c
    return-void

    :pswitch_6d  #0xa
    move-object v1, v2

    .line 2343
    goto :goto_2e

    .line 2339
    :pswitch_6f  #0x9
    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getMethodReceiver(Lcom/sun/source/tree/MethodInvocationTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object p1

    .line 2337
    :goto_75
    if-nez p1, :cond_9

    move-object v1, p1

    goto :goto_2e

    .line 2336
    :pswitch_79  #0x8
    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object p1

    goto :goto_75

    .line 2366
    :cond_80
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v6, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v6}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 2367
    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 2368
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp()V

    move v0, v4

    .line 2369
    goto :goto_5a

    :cond_95
    move v2, v0

    .line 2380
    :goto_96
    invoke-direct {p0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->simpleNames(Ljava/util/Deque;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/TypeNameClassifier;->typePrefixLength(Ljava/util/List;)I

    move-result v9

    move v5, v3

    move v6, v8

    move v7, v3

    .line 2385
    :goto_a1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_c2

    .line 2386
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 2387
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v11, :cond_11c

    .line 2388
    if-gtz v7, :cond_b9

    if-eqz v1, :cond_11a

    .line 2390
    :cond_b9
    add-int/lit8 v0, v5, 0x1

    .line 2392
    :goto_bb
    if-gez v6, :cond_be

    move v6, v7

    .line 2385
    :cond_be
    :goto_be
    add-int/lit8 v7, v7, 0x1

    move v5, v0

    goto :goto_a1

    .line 2416
    :cond_c2
    if-ne v5, v4, :cond_118

    move v5, v6

    .line 2420
    :goto_c5
    if-ne v5, v8, :cond_116

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v0, :cond_116

    .line 2421
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x364e9e

    if-eq v6, v7, :cond_108

    const v3, 0x68b6f7b

    if-eq v6, v3, :cond_fe

    :cond_eb
    :goto_eb
    if-eqz v8, :cond_f0

    if-eq v8, v4, :cond_f0

    move v4, v5

    .line 2431
    :cond_f0
    :goto_f0
    if-lez v4, :cond_112

    .line 2432
    invoke-direct {p0, v10, v2, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitDotWithPrefix(Ljava/util/List;ZI)V

    .line 2437
    :goto_f5
    if-eqz v1, :cond_6c

    .line 2438
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto/16 :goto_6c

    .line 2421
    :cond_fe
    const-string v3, "super"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    move v8, v4

    goto :goto_eb

    :cond_108
    const-string v6, "this"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    move v8, v3

    goto :goto_eb

    .line 2434
    :cond_112
    invoke-direct {p0, v10, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitRegularDot(Ljava/util/List;Z)V

    goto :goto_f5

    :cond_116
    move v4, v5

    goto :goto_f0

    :cond_118
    move v5, v9

    goto :goto_c5

    :cond_11a
    move v0, v5

    goto :goto_bb

    :cond_11c
    move v0, v5

    goto :goto_be

    :cond_11e
    move v2, v3

    goto/16 :goto_96

    :cond_121
    move-object v0, p1

    goto/16 :goto_18

    .line 2334
    :pswitch_data_124
    .packed-switch 0x8
        :pswitch_79  #00000008
        :pswitch_6f  #00000009
        :pswitch_6d  #0000000a
    .end packed-switch
.end method

.method public bridge synthetic visitEmptyStatement(Lcom/sun/source/tree/EmptyStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitEmptyStatement(Lcom/sun/source/tree/EmptyStatementTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitEmptyStatement(Lcom/sun/source/tree/EmptyStatementTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 692
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 693
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    .line 694
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    .line 699
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 700
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 701
    const-string v0, "for"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 703
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 705
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 708
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getVariable()Lcom/sun/source/tree/VariableTree;

    move-result-object v3

    .line 709
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 711
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    .line 705
    const-string v5, ":"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitToDeclare(Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/sun/source/tree/VariableTree;Lcom/google/common/base/Optional;Ljava/lang/String;Lcom/google/common/base/Optional;)V

    .line 712
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 713
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 715
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lcom/sun/source/tree/StatementTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 720
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitEnumDeclaration(Lcom/sun/source/tree/ClassTree;)Z
    .registers 14

    const-wide/16 v10, 0x4000

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 743
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 744
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 745
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAndBreakModifiers(Lcom/sun/source/tree/ModifiersTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)V

    .line 746
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 747
    const-string v0, "enum"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 749
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    .line 750
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 751
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 752
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 753
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 754
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 756
    const-string v0, "implements"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 760
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 761
    if-nez v1, :cond_94

    .line 762
    const-string v1, ","

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 765
    :cond_94
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v1, v3

    .line 767
    goto :goto_7a

    .line 768
    :cond_9a
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 769
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 770
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 772
    :cond_a9
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 773
    const-string v0, "{"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 774
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 775
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 776
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 777
    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v1, :cond_e7

    move-object v1, v0

    .line 778
    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 779
    iget-object v7, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v8, v7, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v8, v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_e7

    .line 780
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    .line 784
    :cond_e7
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    .line 786
    :cond_eb
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 787
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 788
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 789
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 827
    :goto_10f
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    .line 828
    return v3

    .line 792
    :cond_117
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 793
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 794
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 795
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 797
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_135
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    .line 798
    if-nez v2, :cond_154

    .line 799
    const-string v2, ","

    invoke-virtual {p0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 800
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 801
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v4, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v2, v4}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 803
    :cond_154
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 804
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitEnumConstantDeclaration(Lcom/sun/source/tree/VariableTree;)V

    move v2, v3

    .line 806
    goto :goto_135

    .line 807
    :cond_15c
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 808
    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 811
    :cond_17c
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 812
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 813
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 814
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 815
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 817
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    .line 818
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 820
    :cond_1b1
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 821
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;

    invoke-virtual {p0, v5, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->addBodyDeclarations(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V

    .line 822
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 823
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 824
    const-string v0, "}"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 825
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto/16 :goto_10f
.end method

.method public bridge synthetic visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitExpressionStatement(Lcom/sun/source/tree/ExpressionStatementTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    const/4 v1, 0x0

    .line 833
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 834
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 835
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 836
    return-object v1
.end method

.method public bridge synthetic visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 911
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 912
    const-string v0, "for"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 914
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 916
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    .line 918
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_e3

    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/StatementTree;

    invoke-interface {v0}, Lcom/sun/source/tree/StatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->EXPRESSION_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v4, :cond_e3

    .line 919
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    .line 916
    :goto_3c
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 921
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_128

    .line 922
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/StatementTree;

    invoke-interface {v0}, Lcom/sun/source/tree/StatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_e7

    .line 923
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v1

    .line 925
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-direct {p0, v1, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->variableFragments(Lcom/google/common/collect/PeekingIterator;Lcom/sun/source/tree/Tree;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    sget-object v4, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitVariables(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V

    .line 944
    :goto_78
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 945
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 946
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 947
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 949
    :cond_91
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 950
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_156

    .line 951
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 952
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_12f

    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    :goto_b5
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 954
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_132

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionStatementTree;

    .line 955
    if-nez v2, :cond_da

    .line 956
    const-string v2, ","

    invoke-virtual {p0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 957
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 959
    :cond_da
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v2, v3

    .line 961
    goto :goto_c0

    .line 920
    :cond_e3
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    goto/16 :goto_3c

    .line 929
    :cond_e7
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 930
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_f7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/StatementTree;

    .line 931
    if-nez v1, :cond_111

    .line 932
    const-string v1, ","

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 933
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 935
    :cond_111
    check-cast v0, Lcom/sun/source/tree/ExpressionStatementTree;

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v1, v3

    .line 937
    goto :goto_f7

    .line 938
    :cond_11c
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto/16 :goto_78

    .line 942
    :cond_128
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 952
    :cond_12f
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_b5

    .line 962
    :cond_132
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 967
    :goto_13e
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 968
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 969
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lcom/sun/source/tree/StatementTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 974
    return-object v6

    .line 965
    :cond_156
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    goto :goto_13e
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 2244
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 2245
    invoke-interface {p1}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 2246
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 14

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 979
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 981
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 982
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 984
    :goto_10
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getThenStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/StatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->IF:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_38

    .line 987
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/IfTree;

    move-object p1, v0

    goto :goto_10

    .line 992
    :cond_38
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 995
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v1, v3

    move v5, v2

    move v0, v2

    .line 996
    :goto_46
    if-ge v5, v8, :cond_c1

    .line 997
    if-nez v1, :cond_5b

    .line 998
    if-eqz v0, :cond_b7

    .line 999
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1003
    :goto_51
    const-string v0, "else"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1006
    :cond_5b
    const-string v0, "if"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1008
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1009
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->skipParen(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1010
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1012
    if-ne v8, v3, :cond_bd

    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    if-nez v0, :cond_bd

    move v4, v3

    .line 1014
    :goto_85
    add-int/lit8 v0, v8, -0x1

    if-lt v5, v0, :cond_8f

    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    if-eqz v0, :cond_bf

    :cond_8f
    move v1, v3

    .line 1015
    :goto_90
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/StatementTree;

    .line 1017
    invoke-static {v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->valueOf(Z)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    move-result-object v4

    sget-object v9, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    .line 1019
    invoke-static {v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->valueOf(Z)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    move-result-object v1

    .line 1015
    invoke-direct {p0, v0, v4, v9, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lcom/sun/source/tree/StatementTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 1020
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/StatementTree;

    invoke-interface {v0}, Lcom/sun/source/tree/StatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_ec

    move v0, v3

    .line 996
    :goto_b2
    add-int/lit8 v4, v5, 0x1

    move v1, v2

    move v5, v4

    goto :goto_46

    .line 1001
    :cond_b7
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    goto :goto_51

    :cond_bd
    move v4, v2

    .line 1012
    goto :goto_85

    :cond_bf
    move v1, v2

    .line 1014
    goto :goto_90

    .line 1023
    :cond_c1
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v1

    if-eqz v1, :cond_e0

    .line 1024
    if-eqz v0, :cond_e6

    .line 1025
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1029
    :goto_ce
    const-string v0, "else"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1030
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lcom/sun/source/tree/StatementTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 1036
    :cond_e0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1037
    return-object v10

    .line 1027
    :cond_e6
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    goto :goto_ce

    :cond_ec
    move v0, v2

    goto :goto_b2
.end method

.method public bridge synthetic visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitImport(Lcom/sun/source/tree/ImportTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 1042
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1043
    const-string v0, "import"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1045
    invoke-interface {p1}, Lcom/sun/source/tree/ImportTree;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1046
    const-string v0, "static"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1049
    :cond_1d
    invoke-interface {p1}, Lcom/sun/source/tree/ImportTree;->getQualifiedIdentifier()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitName(Lcom/sun/source/tree/Tree;)V

    .line 1050
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    .line 1053
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 1083
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1084
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1085
    invoke-interface {p1}, Lcom/sun/source/tree/InstanceOfTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1086
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1088
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 1090
    invoke-interface {p1}, Lcom/sun/source/tree/InstanceOfTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1091
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1092
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1093
    return-object v2
.end method

.method public bridge synthetic visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 1098
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1099
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1100
    invoke-interface {p1}, Lcom/sun/source/tree/LabeledStatementTree;->getLabel()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    .line 1101
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1103
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1104
    invoke-interface {p1}, Lcom/sun/source/tree/LabeledStatementTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1105
    return-object v2
.end method

.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 1428
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1429
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlejavaformat/java/Trees;->getSourceForNode(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)Ljava/lang/String;

    move-result-object v0

    .line 1434
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1435
    const-string v1, "-"

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1436
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1438
    :cond_21
    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1439
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 1421
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1422
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitDot(Lcom/sun/source/tree/ExpressionTree;)V

    .line 1423
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 15

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1197
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1198
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v3

    .line 1199
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 1201
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_235

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_235

    .line 1202
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->getStartPosition(Lcom/sun/source/tree/Tree;)I

    move-result v7

    move v1, v2

    .line 1203
    :goto_31
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_235

    .line 1204
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->getStartPosition(Lcom/sun/source/tree/Tree;)I

    move-result v0

    if-le v0, v7, :cond_1f3

    .line 1205
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 1206
    invoke-interface {v3, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v1, v4

    .line 1211
    :goto_50
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v4, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v7

    invoke-direct {p0, v0, v4, v7}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 1215
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-eqz v0, :cond_231

    .line 1216
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    sget-object v3, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {v0, v3}, Lcom/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object v4

    .line 1218
    iget-object v0, v4, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lcom/sun/source/tree/Tree;

    .line 1219
    new-instance v3, Ljava/util/ArrayDeque;

    iget-object v4, v4, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v3, v4}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 1222
    :goto_78
    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v7, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v4, v7}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1223
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lcom/google/googlejavaformat/Output$BreakTag;

    move-result-object v4

    .line 1224
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lcom/google/googlejavaformat/Output$BreakTag;

    move-result-object v7

    .line 1225
    iget-object v8, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v9, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v8, v9}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1228
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_22e

    .line 1229
    const-string v8, "<"

    invoke-virtual {p0, v8}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1230
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-direct {p0, v8, v9}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->typeParametersRest(Ljava/util/List;Lcom/google/googlejavaformat/Indent;)V

    .line 1231
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_ba

    .line 1232
    iget-object v8, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1233
    sget-object v8, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    sget-object v9, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    invoke-direct {p0, v1, v8, v9}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotations(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;)V

    :cond_ba
    move v1, v2

    .line 1241
    :goto_bb
    if-eqz v0, :cond_22b

    .line 1242
    if-nez v1, :cond_1f8

    .line 1243
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v8, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v9, " "

    sget-object v10, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v7}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v11

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 1248
    :goto_ce
    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v8, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    sget-object v9, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v7, v8, v9}, Lcom/google/googlejavaformat/Indent$If;->make(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Indent$If;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1251
    invoke-virtual {p0, v0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1252
    invoke-direct {p0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    move v2, v6

    move v0, v1

    .line 1254
    :goto_e3
    if-nez v0, :cond_f4

    .line 1255
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v6, " "

    sget-object v8, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v9

    invoke-virtual {v0, v1, v6, v8, v9}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Lcom/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    .line 1257
    :cond_f4
    if-nez v2, :cond_fd

    .line 1260
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1261
    :cond_fd
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 1265
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1267
    :cond_119
    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1268
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1272
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1274
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v4, v1, v2}, Lcom/google/googlejavaformat/Indent$If;->make(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Indent$If;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1275
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-static {v7, v1, v2}, Lcom/google/googlejavaformat/Indent$If;->make(Lcom/google/googlejavaformat/Output$BreakTag;Lcom/google/googlejavaformat/Indent;Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Indent$If;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1276
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1279
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_168

    .line 1281
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1282
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitFormals(Lcom/google/common/base/Optional;Ljava/util/List;)V

    .line 1285
    :cond_168
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1286
    if-eqz v3, :cond_172

    .line 1287
    invoke-direct {p0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    .line 1289
    :cond_172
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getThrows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_196

    .line 1290
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1293
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getThrows()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitThrowsClause(Ljava/util/List;)V

    .line 1295
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1297
    :cond_196
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getDefaultValue()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-eqz v0, :cond_1ca

    .line 1298
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1299
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1300
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getDefaultValue()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1fb

    .line 1301
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->minusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1303
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1304
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getDefaultValue()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1306
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1317
    :cond_1ca
    :goto_1ca
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1318
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1319
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1320
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    if-nez v0, :cond_216

    .line 1321
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1326
    :goto_1e4
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1328
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    if-eqz v0, :cond_1f2

    .line 1329
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->methodBody(Lcom/sun/source/tree/MethodTree;)V

    .line 1332
    :cond_1f2
    return-object v5

    .line 1203
    :cond_1f3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_31

    :cond_1f8
    move v1, v2

    .line 1245
    goto/16 :goto_ce

    .line 1308
    :cond_1fb
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1310
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1311
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getDefaultValue()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1313
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_1ca

    .line 1323
    :cond_216
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1324
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    iget-object v2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    const-string v3, "{"

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;Lcom/google/googlejavaformat/Indent;Lcom/google/common/base/Optional;)V

    goto :goto_1e4

    :cond_22b
    move v0, v1

    goto/16 :goto_e3

    :cond_22e
    move v1, v6

    goto/16 :goto_bb

    :cond_231
    move-object v0, v5

    move-object v3, v5

    goto/16 :goto_78

    :cond_235
    move-object v0, v3

    move-object v1, v4

    goto/16 :goto_50
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 1414
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1415
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitDot(Lcom/sun/source/tree/ExpressionTree;)V

    .line 1416
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 2016
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected manual descent into modifiers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    const/4 v4, 0x0

    .line 389
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 390
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 391
    const-string v0, "new"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 394
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {v0, v1}, Lcom/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object v0

    .line 395
    iget-object v1, v0, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lcom/sun/source/tree/Tree;

    .line 397
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 399
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 403
    iget-object v0, v0, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v0}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 405
    invoke-virtual {p0, v1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 406
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 407
    invoke-direct {p0, v2, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;Ljava/util/Deque;)V

    .line 408
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 409
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 411
    :cond_4e
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 412
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 413
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 415
    :cond_5f
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitArrayInitializer(Ljava/util/List;)Z

    .line 417
    :cond_66
    return-object v4
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    const/4 v3, 0x0

    .line 611
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 612
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 613
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 614
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 615
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 616
    const-string v0, "."

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 618
    :cond_22
    const-string v0, "new"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 620
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->addTypeArguments(Ljava/util/List;Lcom/google/googlejavaformat/Indent;)V

    .line 621
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 622
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 623
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    .line 622
    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Lcom/sun/source/tree/ModifiersTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;)Ljava/util/List;

    move-result-object v0

    .line 624
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 626
    :cond_52
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 627
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->addArguments(Ljava/util/List;Lcom/google/googlejavaformat/Indent;)V

    .line 628
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 629
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 630
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->addBodyDeclarations(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V

    .line 633
    :cond_7c
    return-object v3
.end method

.method public bridge synthetic visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    const/4 v4, 0x0

    .line 1461
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1462
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1463
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1464
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1465
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1486
    :goto_1f
    return-object v4

    .line 1467
    :cond_20
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1468
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1469
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 1471
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1472
    const/4 v0, 0x1

    .line 1473
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 1474
    if-nez v1, :cond_63

    .line 1475
    const-string v1, ","

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1477
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1479
    :cond_63
    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1480
    const/4 v0, 0x0

    move v1, v0

    .line 1481
    goto :goto_49

    .line 1482
    :cond_69
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1483
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1484
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public bridge synthetic visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    const/4 v1, 0x0

    .line 1491
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1492
    invoke-interface {p1}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1493
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1494
    return-object v1
.end method

.method public bridge synthetic visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 1543
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1544
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/PrimitiveTypeTree;->getPrimitiveTypeKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 1573
    new-instance v0, Ljava/lang/AssertionError;

    invoke-interface {p1}, Lcom/sun/source/tree/PrimitiveTypeTree;->getPrimitiveTypeKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1570
    :pswitch_1c  #0x9
    const-string v0, "void"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1547
    :goto_21
    const/4 v0, 0x0

    return-object v0

    .line 1567
    :pswitch_23  #0x8
    const-string v0, "double"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_21

    .line 1564
    :pswitch_29  #0x7
    const-string v0, "float"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_21

    .line 1561
    :pswitch_2f  #0x6
    const-string v0, "char"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_21

    .line 1558
    :pswitch_35  #0x5
    const-string v0, "long"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_21

    .line 1555
    :pswitch_3b  #0x4
    const-string v0, "int"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_21

    .line 1552
    :pswitch_41  #0x3
    const-string v0, "short"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_21

    .line 1549
    :pswitch_47  #0x2
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_21

    .line 1546
    :pswitch_4d  #0x1
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_21

    .line 1544
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_47  #00000002
        :pswitch_41  #00000003
        :pswitch_3b  #00000004
        :pswitch_35  #00000005
        :pswitch_2f  #00000006
        :pswitch_29  #00000007
        :pswitch_23  #00000008
        :pswitch_1c  #00000009
    .end packed-switch
.end method

.method public bridge synthetic visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitReturn(Lcom/sun/source/tree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    const/4 v1, 0x0

    .line 1585
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1586
    const-string v0, "return"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1587
    invoke-interface {p1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1588
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1589
    invoke-interface {p1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1591
    :cond_1b
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1592
    return-object v1
.end method

.method visitSingleMemberAnnotation(Lcom/sun/source/tree/AnnotationTree;)Z
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1597
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_e

    .line 1615
    :cond_d
    :goto_d
    return v1

    .line 1600
    :cond_e
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 1601
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v4, :cond_d

    .line 1604
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_29

    move v1, v2

    .line 1605
    :cond_29
    iget-object v4, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    if-eqz v1, :cond_59

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    :goto_2f
    invoke-virtual {v4, v3}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1606
    const-string v3, "@"

    invoke-virtual {p0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1607
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getAnnotationType()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1608
    const-string v3, "("

    invoke-virtual {p0, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1609
    if-nez v1, :cond_4a

    .line 1610
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 1612
    :cond_4a
    invoke-virtual {p0, v0, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1613
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1614
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    move v1, v2

    .line 1615
    goto :goto_d

    .line 1605
    :cond_59
    iget-object v3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_2f
.end method

.method public bridge synthetic visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    const/4 v4, 0x0

    .line 1646
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1647
    const-string v0, "switch"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1649
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1650
    invoke-interface {p1}, Lcom/sun/source/tree/SwitchTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->skipParen(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1651
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1653
    const-string v0, "{"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 1654
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 1655
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1656
    const/4 v0, 0x1

    .line 1657
    invoke-interface {p1}, Lcom/sun/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/CaseTree;

    .line 1658
    if-nez v1, :cond_5c

    .line 1659
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v3, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 1661
    :cond_5c
    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1662
    const/4 v0, 0x0

    move v1, v0

    .line 1663
    goto :goto_47

    .line 1664
    :cond_62
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1665
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1666
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 1667
    const-string v0, "}"

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lcom/google/googlejavaformat/Indent;)V

    .line 1668
    return-object v4
.end method

.method public bridge synthetic visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 1673
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1674
    const-string v0, "synchronized"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1675
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1676
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1677
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1678
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 1679
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->skipParen(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1680
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1681
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1682
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1683
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1684
    return-object v2
.end method

.method public bridge synthetic visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    const/4 v1, 0x0

    .line 1689
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1690
    const-string v0, "throw"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1692
    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1693
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1694
    return-object v1
.end method

.method public bridge synthetic visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitTry(Lcom/sun/source/tree/TryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 18

    .line 1699
    invoke-virtual/range {p0 .. p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1700
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1701
    const-string v0, "try"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1703
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dd

    .line 1704
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1705
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_af

    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    :goto_32
    invoke-virtual {v1, v0}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1706
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v0, 0x1

    move v1, v0

    :goto_3f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 1708
    if-nez v1, :cond_52

    .line 1709
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 1711
    :cond_52
    check-cast v0, Lcom/sun/source/tree/VariableTree;

    .line 1712
    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->PARAMETER:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    .line 1714
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->fieldAnnotationDirection(Lcom/sun/source/tree/ModifiersTree;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    move-result-object v2

    .line 1715
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 1716
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v4

    sget-object v5, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    .line 1718
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 1719
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v7

    .line 1722
    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v10

    .line 1723
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v11

    .line 1724
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v12

    .line 1725
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v13

    .line 1712
    const-string v8, ""

    const-string v9, "="

    move-object v0, p0

    invoke-virtual/range {v0 .. v13}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->declareOne(Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;Ljava/util/List;Ljavax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)I

    .line 1726
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 1727
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1730
    :cond_ac
    const/4 v0, 0x0

    move v1, v0

    .line 1731
    goto :goto_3f

    .line 1705
    :cond_af
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    goto :goto_32

    .line 1732
    :cond_b2
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->peekToken()Lcom/google/common/base/Optional;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1733
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1736
    :cond_ce
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1738
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1742
    :cond_dd
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getFinallyBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    if-eqz v0, :cond_136

    :cond_ed
    const/4 v0, 0x1

    .line 1743
    :goto_ee
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v2

    if-nez v0, :cond_138

    const/4 v1, 0x1

    .line 1745
    :goto_f5
    invoke-static {v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->valueOf(Z)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    move-result-object v1

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    .line 1747
    invoke-static {v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->valueOf(Z)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    move-result-object v0

    .line 1743
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lcom/sun/source/tree/BlockTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 1748
    const/4 v0, 0x0

    move v2, v0

    :goto_104
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_13c

    .line 1749
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/CatchTree;

    .line 1750
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v2, v1, :cond_12a

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getFinallyBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    if-eqz v1, :cond_13a

    :cond_12a
    const/4 v1, 0x1

    .line 1751
    :goto_12b
    invoke-static {v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->valueOf(Z)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitCatchClause(Lcom/sun/source/tree/CatchTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 1748
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_104

    .line 1742
    :cond_136
    const/4 v0, 0x0

    goto :goto_ee

    .line 1743
    :cond_138
    const/4 v1, 0x0

    goto :goto_f5

    .line 1750
    :cond_13a
    const/4 v1, 0x0

    goto :goto_12b

    .line 1753
    :cond_13c
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getFinallyBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    if-eqz v0, :cond_15e

    .line 1754
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1755
    const-string v0, "finally"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1756
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1757
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/TryTree;->getFinallyBlock()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lcom/sun/source/tree/BlockTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 1763
    :cond_15e
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1764
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 598
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 599
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 600
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 601
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 602
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 604
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 605
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 606
    return-object v2
.end method

.method public bridge synthetic visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    const/4 v4, 0x0

    .line 1821
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1822
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1825
    invoke-interface {p1}, Lcom/sun/source/tree/TypeParameterTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Ljavax/lang/model/element/Name;)Z

    .line 1826
    invoke-interface {p1}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 1827
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1828
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1830
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 1831
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1832
    const/4 v0, 0x1

    .line 1833
    invoke-interface {p1}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 1834
    if-nez v1, :cond_64

    .line 1835
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 1836
    const-string v1, "&"

    invoke-virtual {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1837
    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1839
    :cond_64
    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1840
    const/4 v0, 0x0

    move v1, v0

    .line 1841
    goto :goto_45

    .line 1842
    :cond_6a
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1843
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1845
    :cond_74
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1846
    return-object v4
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 1499
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1500
    invoke-static {p1}, Lcom/google/googlejavaformat/java/Trees;->operatorName(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    .line 1501
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/OpUtil;->isPostUnaryOp(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1502
    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1503
    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->splitToken(Ljava/lang/String;)V

    .line 1511
    :goto_1f
    return-object v2

    .line 1505
    :cond_20
    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->splitToken(Ljava/lang/String;)V

    .line 1506
    invoke-direct {p0, p1, v1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ambiguousUnaryOperator(Lcom/sun/source/tree/UnaryTree;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1507
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1509
    :cond_2e
    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_1f
.end method

.method public bridge synthetic visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitUnionType(Lcom/sun/source/tree/UnionTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 1851
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected manual descent into union types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    .line 841
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 842
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    .line 845
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->fieldAnnotationDirection(Lcom/sun/source/tree/ModifiersTree;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    move-result-object v2

    .line 842
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitVariables(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V

    .line 846
    const/4 v0, 0x0

    return-object v0
.end method

.method visitVariables(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/VariableTree;",
            ">;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;",
            "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            ")V"
        }
    .end annotation

    .line 853
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_58

    .line 854
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/VariableTree;

    .line 855
    invoke-interface {v3}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    .line 859
    invoke-interface {v3}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v7

    .line 860
    invoke-static {v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->fromVariable(Lcom/sun/source/tree/VariableTree;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    move-result-object v8

    .line 861
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 862
    invoke-interface {v3}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v10

    .line 865
    invoke-interface {v3}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v13

    .line 866
    const-string v4, ";"

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v14

    .line 867
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v15

    .line 868
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->variableFragmentDims(ZILcom/sun/source/tree/Tree;)Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v16

    .line 855
    const-string v11, ""

    const-string v12, "="

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v3 .. v16}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->declareOne(Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lcom/google/common/base/Optional;Lcom/sun/source/tree/Tree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;Ljava/util/List;Ljavax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)I

    .line 873
    :goto_57
    return-void

    .line 871
    :cond_58
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->declareMany(Ljava/util/List;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V

    goto :goto_57
.end method

.method public bridge synthetic visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    const/4 v4, 0x0

    .line 1856
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1857
    const-string v0, "while"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1859
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1860
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/Trees;->skipParen(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1861
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1862
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v0

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v3, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lcom/sun/source/tree/StatementTree;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lcom/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 1867
    return-object v4
.end method

.method public bridge synthetic visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 140
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    .line 1872
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lcom/sun/source/tree/Tree;)V

    .line 1873
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1874
    const-string v0, "?"

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1875
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getBound()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 1876
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lcom/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->open(Lcom/google/googlejavaformat/Indent;)V

    .line 1877
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->space()V

    .line 1878
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_48

    const-string v0, "extends"

    :goto_2c
    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 1879
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 1880
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getBound()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 1881
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1883
    :cond_42
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lcom/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/OpsBuilder;->close()V

    .line 1884
    return-object v2

    .line 1878
    :cond_48
    const-string v0, "super"

    goto :goto_2c
.end method
