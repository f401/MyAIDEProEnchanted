.class public Lcom/sun/tools/javac/tree/TreeInfo;
.super Ljava/lang/Object;
.source "TreeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;,
        Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;,
        Lcom/sun/tools/javac/tree/TreeInfo$1Result;
    }
.end annotation


# static fields
.field public static final addPrec:I = 0xc

.field public static final andPrec:I = 0x5

.field public static final assignPrec:I = 0x1

.field public static final assignopPrec:I = 0x2

.field public static final bitandPrec:I = 0x8

.field public static final bitorPrec:I = 0x6

.field public static final bitxorPrec:I = 0x7

.field public static final condPrec:I = 0x3

.field public static final eqPrec:I = 0x9

.field public static final mulPrec:I = 0xd

.field public static final noPrec:I = 0x0

.field public static final notExpression:I = -0x1

.field public static final orPrec:I = 0x4

.field public static final ordPrec:I = 0xa

.field public static final postfixPrec:I = 0xf

.field public static final precCount:I = 0x10

.field public static final prefixPrec:I = 0xe

.field public static final shiftPrec:I = 0xb

.field protected static final treeInfoKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/tree/TreeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private opname:[Lcom/sun/tools/javac/util/Name;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/tree/TreeInfo;->treeInfoKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method private constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/sun/tools/javac/util/Name;

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    .line 62
    sget-object v0, Lcom/sun/tools/javac/tree/TreeInfo;->treeInfoKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 64
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/4 v2, 0x0

    const-string v3, "+"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 66
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/sun/tools/javac/util/Names;->hyphen:Lcom/sun/tools/javac/util/Name;

    aput-object v3, v1, v2

    .line 67
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/4 v2, 0x2

    const-string v3, "!"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 68
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/4 v2, 0x3

    const-string v3, "~"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/4 v2, 0x4

    const-string v3, "++"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 70
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/4 v2, 0x5

    const-string v3, "--"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 71
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/4 v2, 0x6

    const-string v3, "++"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 72
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/4 v2, 0x7

    const-string v3, "--"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 73
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x8

    const-string v3, "<*nullchk*>"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 74
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x9

    const-string v3, "||"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0xa

    const-string v3, "&&"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 76
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0xe

    const-string v3, "=="

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 77
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0xf

    const-string v3, "!="

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 78
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x10

    const-string v3, "<"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 79
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x11

    const-string v3, ">"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x12

    const-string v3, "<="

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 81
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x13

    const-string v3, ">="

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 82
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0xb

    const-string v3, "|"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 83
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0xc

    const-string v3, "^"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 84
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0xd

    const-string v3, "&"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 85
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x14

    const-string v3, "<<"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 86
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x15

    const-string v3, ">>"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 87
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x16

    const-string v3, ">>>"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 88
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x17

    const-string v3, "+"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    aput-object v3, v1, v2

    .line 89
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x18

    iget-object v3, v0, Lcom/sun/tools/javac/util/Names;->hyphen:Lcom/sun/tools/javac/util/Name;

    aput-object v3, v1, v2

    .line 90
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x19

    iget-object v3, v0, Lcom/sun/tools/javac/util/Names;->asterisk:Lcom/sun/tools/javac/util/Name;

    aput-object v3, v1, v2

    .line 91
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x1a

    iget-object v3, v0, Lcom/sun/tools/javac/util/Names;->slash:Lcom/sun/tools/javac/util/Name;

    aput-object v3, v1, v2

    .line 92
    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    const/16 v2, 0x1b

    const-string v3, "%"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    aput-object v0, v1, v2

    .line 93
    return-void
.end method

.method public static calledMethodName(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1f

    .line 150
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 151
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1f

    .line 152
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 156
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static declarationFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 501
    new-instance v0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    .line 502
    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 503
    iget-object v0, v0, Lcom/sun/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lcom/sun/tools/javac/tree/JCTree;

    return-object v0
.end method

.method public static diagEndPos(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .registers 3

    .line 432
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    .line 433
    new-instance v1, Lcom/sun/tools/javac/tree/TreeInfo$1;

    invoke-direct {v1, p0, v0}, Lcom/sun/tools/javac/tree/TreeInfo$1;-><init>(Lcom/sun/tools/javac/tree/JCTree;I)V

    return-object v1
.end method

.method public static diagnosticPositionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .registers 3

    .line 467
    invoke-static {p0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->declarationFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_7

    move-object p1, v0

    :cond_7
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    return-object v0
.end method

.method public static endPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 242
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_14

    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 243
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    .line 252
    :goto_13
    return v0

    .line 244
    :cond_14
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_25

    .line 245
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_13

    .line 246
    :cond_25
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 247
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;

    .line 248
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_3a

    .line 249
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 248
    :goto_35
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_13

    .line 250
    :cond_3a
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    goto :goto_35

    .line 252
    :cond_45
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    goto :goto_13
.end method

.method public static finalizerPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 446
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_16

    .line 447
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;

    .line 448
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->firstStatPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    .line 451
    :goto_15
    return v0

    .line 450
    :cond_16
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_27

    .line 451
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_15

    .line 453
    :cond_27
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static firstConstructorCall(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .registers 5

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    move-object v0, v2

    .line 208
    :goto_9
    return-object v0

    .line 196
    :cond_a
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 197
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    .line 198
    iget-object v1, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v0, :cond_1a

    move-object v0, v2

    goto :goto_9

    .line 199
    :cond_1a
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-nez v0, :cond_20

    move-object v0, v2

    goto :goto_9

    .line 200
    :cond_20
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 202
    :goto_25
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isSyntheticInit(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 203
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_25

    .line 204
    :cond_39
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    move-object v0, v2

    goto :goto_9

    .line 205
    :cond_41
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->getTag()I

    move-result v0

    const/16 v3, 0x14

    if-eq v0, v3, :cond_4f

    move-object v0, v2

    goto :goto_9

    .line 206
    :cond_4f
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 207
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v1

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_5f

    move-object v0, v2

    goto :goto_9

    .line 208
    :cond_5f
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    goto :goto_9
.end method

.method public static firstFlag(J)J
    .registers 8

    .line 705
    const/4 v0, 0x1

    .line 706
    :goto_1
    and-int/lit16 v1, v0, 0xfff

    if-eqz v1, :cond_10

    int-to-long v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_10

    .line 707
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 708
    :cond_10
    int-to-long v0, v0

    return-wide v0
.end method

.method public static firstStatPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 232
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1d

    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 233
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->pos:I

    .line 235
    :goto_1c
    return v0

    :cond_1d
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    goto :goto_1c
.end method

.method public static flagNames(J)Ljava/lang/String;
    .registers 4

    .line 714
    const-wide/16 v0, 0xfff

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Flags;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static flags(Lcom/sun/tools/javac/tree/JCTree;)J
    .registers 3

    .line 687
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    const/4 v1, 0x7

    if-eq v0, v1, :cond_13

    .line 697
    const-wide/16 v0, 0x0

    :goto_12
    return-wide v0

    .line 695
    :cond_13
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-wide v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->flags:J

    goto :goto_12

    .line 689
    :cond_18
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    goto :goto_12

    .line 691
    :cond_1f
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    goto :goto_12

    .line 693
    :cond_26
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    goto :goto_12
.end method

.method public static fullName(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;
    .registers 5

    const/4 v2, 0x0

    .line 606
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v3, 0x22

    if-eq v1, v3, :cond_17

    const/16 v3, 0x23

    if-eq v1, v3, :cond_12

    .line 614
    :goto_11
    return-object v2

    .line 609
    :cond_12
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_11

    :cond_17
    move-object v1, v0

    .line 611
    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->fullName(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 612
    if-nez v1, :cond_25

    move-object v0, v2

    :goto_23
    move-object v2, v0

    goto :goto_11

    :cond_25
    const/16 v2, 0x2e

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Name;->append(CLcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    goto :goto_23
.end method

.method public static getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v1, -0x1

    .line 340
    if-nez p0, :cond_5

    move v0, v1

    .line 423
    :goto_4
    return v0

    .line 343
    :cond_5
    if-nez p1, :cond_c

    .line 345
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_4

    .line 348
    :cond_c
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 349
    if-eqz v0, :cond_19

    .line 350
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 352
    :cond_19
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13c

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_132

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_122

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_118

    const/16 v2, 0x20

    if-eq v0, v2, :cond_10e

    packed-switch v0, :pswitch_data_14e

    packed-switch v0, :pswitch_data_15a

    packed-switch v0, :pswitch_data_16a

    packed-switch v0, :pswitch_data_17c

    packed-switch v0, :pswitch_data_1ac

    :cond_3f
    move v0, v1

    .line 423
    goto :goto_4

    .line 357
    :pswitch_41  #0x4c, 0x4d, 0x4e, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto :goto_4

    .line 365
    :pswitch_4a  #0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto :goto_4

    .line 414
    :pswitch_53  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto :goto_4

    .line 418
    :pswitch_5c  #0x2f
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    .line 419
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 420
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto :goto_4

    .line 377
    :pswitch_77  #0x13
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;

    .line 378
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    if-nez v0, :cond_84

    .line 379
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto :goto_4

    .line 381
    :cond_84
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 371
    :pswitch_8c  #0x12
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 369
    :pswitch_96  #0x11
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 393
    :pswitch_a0  #0x10
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;

    .line 394
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_ae

    .line 395
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 396
    :cond_ae
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 397
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 399
    :cond_c4
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 389
    :pswitch_cc  #0xf
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 367
    :pswitch_d6  #0xe
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 385
    :pswitch_e6  #0xc
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 375
    :pswitch_f0  #0xb
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 373
    :pswitch_fa  #0xa
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 416
    :pswitch_104  #0x9
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 407
    :cond_10e
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 405
    :cond_118
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 387
    :cond_122
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 403
    :cond_132
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_4

    .line 391
    :cond_13c
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    :try_start_146
    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I
    :try_end_149
    .catchall {:try_start_146 .. :try_end_149} :catchall_14c

    move-result v0

    goto/16 :goto_4

    :catchall_14c
    move-exception v0

    throw v0

    .line 352
    :pswitch_data_14e
    .packed-switch 0x9
        :pswitch_104  #00000009
        :pswitch_fa  #0000000a
        :pswitch_f0  #0000000b
        :pswitch_e6  #0000000c
    .end packed-switch

    :pswitch_data_15a
    .packed-switch 0xe
        :pswitch_d6  #0000000e
        :pswitch_cc  #0000000f
        :pswitch_a0  #00000010
        :pswitch_96  #00000011
        :pswitch_8c  #00000012
        :pswitch_77  #00000013
    .end packed-switch

    :pswitch_data_16a
    .packed-switch 0x2f
        :pswitch_5c  #0000002f
        :pswitch_53  #00000030
        :pswitch_53  #00000031
        :pswitch_53  #00000032
        :pswitch_53  #00000033
        :pswitch_53  #00000034
        :pswitch_53  #00000035
    .end packed-switch

    :pswitch_data_17c
    .packed-switch 0x39
        :pswitch_4a  #00000039
        :pswitch_4a  #0000003a
        :pswitch_4a  #0000003b
        :pswitch_4a  #0000003c
        :pswitch_4a  #0000003d
        :pswitch_4a  #0000003e
        :pswitch_4a  #0000003f
        :pswitch_4a  #00000040
        :pswitch_4a  #00000041
        :pswitch_4a  #00000042
        :pswitch_4a  #00000043
        :pswitch_4a  #00000044
        :pswitch_4a  #00000045
        :pswitch_4a  #00000046
        :pswitch_4a  #00000047
        :pswitch_4a  #00000048
        :pswitch_4a  #00000049
        :pswitch_4a  #0000004a
        :pswitch_4a  #0000004b
        :pswitch_41  #0000004c
        :pswitch_41  #0000004d
        :pswitch_41  #0000004e
    .end packed-switch

    :pswitch_data_1ac
    .packed-switch 0x55
        :pswitch_41  #00000055
        :pswitch_41  #00000056
        :pswitch_41  #00000057
        :pswitch_41  #00000058
        :pswitch_41  #00000059
        :pswitch_41  #0000005a
        :pswitch_41  #0000005b
        :pswitch_41  #0000005c
    .end packed-switch
.end method

.method public static getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 4

    const/4 v1, -0x1

    .line 262
    if-nez p0, :cond_5

    move v0, v1

    .line 334
    :goto_4
    return v0

    .line 265
    :cond_5
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_129

    const/4 v2, 0x4

    if-eq v0, v2, :cond_f7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_e1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_d7

    const/16 v1, 0x14

    if-eq v0, v1, :cond_cd

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_c3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_a8

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9e

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8f

    const/16 v1, 0x26

    if-eq v0, v1, :cond_85

    const/16 v1, 0x27

    if-eq v0, v1, :cond_7c

    const/16 v1, 0x36

    if-eq v0, v1, :cond_73

    const/16 v1, 0x37

    if-eq v0, v1, :cond_73

    packed-switch v0, :pswitch_data_13a

    packed-switch v0, :pswitch_data_144

    packed-switch v0, :pswitch_data_174

    .line 334
    :cond_43
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    goto :goto_4

    .line 274
    :pswitch_46  #0x4c, 0x4d, 0x4e, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_4

    .line 282
    :pswitch_4f  #0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_4

    .line 304
    :pswitch_58  #0x22
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_4

    .line 294
    :pswitch_61  #0x21
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_4

    .line 310
    :pswitch_6a  #0x20
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_4

    .line 313
    :cond_73
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_4

    .line 306
    :cond_7c
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_4

    .line 308
    :cond_85
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_4

    :cond_8f
    move-object v0, p0

    .line 315
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 316
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_43

    .line 317
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_4

    .line 267
    :cond_9e
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_4

    :cond_a8
    move-object v0, p0

    .line 329
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    .line 330
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_43

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 331
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_4

    .line 269
    :cond_c3
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_4

    .line 292
    :cond_cd
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_4

    .line 290
    :cond_d7
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_4

    .line 321
    :cond_e1
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 322
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    if-eq v0, v1, :cond_ef

    .line 323
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    goto/16 :goto_4

    .line 325
    :cond_ef
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_4

    .line 296
    :cond_f7
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 297
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    if-eq v0, v1, :cond_105

    .line 298
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    goto/16 :goto_4

    .line 299
    :cond_105
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 300
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_4

    .line 301
    :cond_119
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_121

    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos:I

    goto/16 :goto_4

    :cond_121
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    :try_start_123
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_138

    move-result v0

    goto/16 :goto_4

    :cond_129
    move-object v0, p0

    .line 284
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 285
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    if-eq v2, v1, :cond_43

    .line 286
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    goto/16 :goto_4

    .line 301
    :catchall_138
    move-exception v0

    throw v0

    .line 265
    :pswitch_data_13a
    .packed-switch 0x20
        :pswitch_6a  #00000020
        :pswitch_61  #00000021
        :pswitch_58  #00000022
    .end packed-switch

    :pswitch_data_144
    .packed-switch 0x39
        :pswitch_4f  #00000039
        :pswitch_4f  #0000003a
        :pswitch_4f  #0000003b
        :pswitch_4f  #0000003c
        :pswitch_4f  #0000003d
        :pswitch_4f  #0000003e
        :pswitch_4f  #0000003f
        :pswitch_4f  #00000040
        :pswitch_4f  #00000041
        :pswitch_4f  #00000042
        :pswitch_4f  #00000043
        :pswitch_4f  #00000044
        :pswitch_4f  #00000045
        :pswitch_4f  #00000046
        :pswitch_4f  #00000047
        :pswitch_4f  #00000048
        :pswitch_4f  #00000049
        :pswitch_4f  #0000004a
        :pswitch_4f  #0000004b
        :pswitch_46  #0000004c
        :pswitch_46  #0000004d
        :pswitch_46  #0000004e
    .end packed-switch

    :pswitch_data_174
    .packed-switch 0x55
        :pswitch_46  #00000055
        :pswitch_46  #00000056
        :pswitch_46  #00000057
        :pswitch_46  #00000058
        :pswitch_46  #00000059
        :pswitch_46  #0000005a
        :pswitch_46  #0000005b
        :pswitch_46  #0000005c
    .end packed-switch
.end method

.method public static hasConstructors(Lcom/sun/tools/javac/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)Z"
        }
    .end annotation

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 117
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 118
    :goto_11
    return v0

    .line 116
    :cond_12
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 118
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static innermostType(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 918
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_16

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_d

    .line 924
    :goto_c
    return-object p0

    .line 922
    :cond_d
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->innermostType(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object p0

    goto :goto_c

    .line 920
    :cond_16
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->innermostType(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object p0

    goto :goto_c
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeInfo;
    .registers 2

    .line 51
    sget-object v0, Lcom/sun/tools/javac/tree/TreeInfo;->treeInfoKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/TreeInfo;

    .line 52
    if-nez v0, :cond_f

    .line 53
    new-instance v0, Lcom/sun/tools/javac/tree/TreeInfo;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/tree/TreeInfo;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 54
    :cond_f
    return-object v0
.end method

.method public static isConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 4

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    .line 106
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    .line 107
    iget-object v2, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_15

    const/4 v0, 0x1

    .line 109
    :cond_15
    return v0
.end method

.method public static isDeclaration(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 3

    .line 633
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    .line 640
    const/4 v0, 0x0

    :goto_12
    return v0

    .line 638
    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static isDiamond(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 3

    .line 213
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_19

    const/16 v1, 0x27

    if-eq v0, v1, :cond_e

    .line 216
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 214
    :cond_e
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    goto :goto_d

    .line 215
    :cond_19
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isDiamond(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    goto :goto_d
.end method

.method public static isInitialConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 4

    const/4 v0, 0x0

    .line 187
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->firstConstructorCall(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v1

    .line 188
    if-nez v1, :cond_8

    .line 190
    :cond_7
    :goto_7
    return v0

    .line 189
    :cond_8
    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_7

    :cond_18
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isMultiCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)Z
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNull(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 4

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_a

    .line 225
    :cond_9
    :goto_9
    return v0

    .line 224
    :cond_a
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    .line 225
    iget v1, p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->typetag:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isSelfCall(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 5

    const/4 v0, 0x0

    .line 162
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->calledMethodName(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_14

    .line 164
    iget-object v2, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    .line 165
    iget-object v3, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v3, :cond_13

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_14

    :cond_13
    const/4 v0, 0x1

    .line 167
    :cond_14
    return v0
.end method

.method public static isSuperCall(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 4

    const/4 v0, 0x0

    .line 174
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->calledMethodName(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_10

    .line 176
    iget-object v2, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    .line 177
    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 179
    :cond_10
    return v0
.end method

.method public static isSyntheticInit(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 7

    .line 128
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_4b

    .line 129
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 130
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_4b

    .line 131
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    .line 132
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_4b

    .line 133
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 134
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v1, :cond_4b

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 135
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4b

    .line 136
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_4b

    iget-object v1, v0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_4b

    .line 138
    const/4 v0, 0x1

    .line 143
    :goto_4a
    return v0

    :cond_4b
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method public static name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;
    .registers 3

    .line 590
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_20

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x27

    if-eq v0, v1, :cond_12

    .line 598
    const/4 v0, 0x0

    :goto_11
    return-object v0

    .line 596
    :cond_12
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    goto :goto_11

    .line 592
    :cond_1b
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_11

    .line 594
    :cond_20
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_11
.end method

.method public static nonstaticSelect(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 663
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_f

    .line 667
    :goto_e
    return v1

    .line 665
    :cond_f
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 666
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_22

    iget v3, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v3, v2, :cond_25

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_25

    :cond_22
    move v0, v2

    :goto_23
    move v1, v0

    goto :goto_e

    :cond_25
    move v0, v1

    goto :goto_23
.end method

.method public static opPrec(I)I
    .registers 3

    const/16 v0, 0xa

    .line 743
    const/16 v1, 0x1e

    if-eq p0, v1, :cond_35

    const/16 v1, 0x20

    if-eq p0, v1, :cond_17

    packed-switch p0, :pswitch_data_38

    packed-switch p0, :pswitch_data_7a

    .line 785
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 764
    :pswitch_16  #0x4c, 0x4d, 0x4e, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c
    const/4 v0, 0x2

    .line 784
    :cond_17
    :goto_17
    :pswitch_17  #0x40, 0x41, 0x42, 0x43
    return v0

    .line 783
    :pswitch_18  #0x49, 0x4a, 0x4b
    const/16 v0, 0xd

    goto :goto_17

    .line 780
    :pswitch_1b  #0x47, 0x48
    const/16 v0, 0xc

    goto :goto_17

    .line 778
    :pswitch_1e  #0x44, 0x45, 0x46
    const/16 v0, 0xb

    goto :goto_17

    .line 768
    :pswitch_21  #0x3e, 0x3f
    const/16 v0, 0x9

    goto :goto_17

    .line 775
    :pswitch_24  #0x3d
    const/16 v0, 0x8

    goto :goto_17

    .line 774
    :pswitch_27  #0x3c
    const/4 v0, 0x7

    goto :goto_17

    .line 773
    :pswitch_29  #0x3b
    const/4 v0, 0x6

    goto :goto_17

    .line 766
    :pswitch_2b  #0x3a
    const/4 v0, 0x5

    goto :goto_17

    .line 765
    :pswitch_2d  #0x39
    const/4 v0, 0x4

    goto :goto_17

    .line 752
    :pswitch_2f  #0x36, 0x37, 0x38
    const/16 v0, 0xf

    goto :goto_17

    .line 749
    :pswitch_32  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35
    const/16 v0, 0xe

    goto :goto_17

    .line 753
    :cond_35
    const/4 v0, 0x1

    goto :goto_17

    .line 743
    nop

    :pswitch_data_38
    .packed-switch 0x30
        :pswitch_32  #00000030
        :pswitch_32  #00000031
        :pswitch_32  #00000032
        :pswitch_32  #00000033
        :pswitch_32  #00000034
        :pswitch_32  #00000035
        :pswitch_2f  #00000036
        :pswitch_2f  #00000037
        :pswitch_2f  #00000038
        :pswitch_2d  #00000039
        :pswitch_2b  #0000003a
        :pswitch_29  #0000003b
        :pswitch_27  #0000003c
        :pswitch_24  #0000003d
        :pswitch_21  #0000003e
        :pswitch_21  #0000003f
        :pswitch_17  #00000040
        :pswitch_17  #00000041
        :pswitch_17  #00000042
        :pswitch_17  #00000043
        :pswitch_1e  #00000044
        :pswitch_1e  #00000045
        :pswitch_1e  #00000046
        :pswitch_1b  #00000047
        :pswitch_1b  #00000048
        :pswitch_18  #00000049
        :pswitch_18  #0000004a
        :pswitch_18  #0000004b
        :pswitch_16  #0000004c
        :pswitch_16  #0000004d
        :pswitch_16  #0000004e
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x55
        :pswitch_16  #00000055
        :pswitch_16  #00000056
        :pswitch_16  #00000057
        :pswitch_16  #00000058
        :pswitch_16  #00000059
        :pswitch_16  #0000005a
        :pswitch_16  #0000005b
        :pswitch_16  #0000005c
    .end packed-switch
.end method

.method public static pathFor(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .line 536
    :try_start_0
    new-instance v0, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;-><init>(Lcom/sun/tools/javac/tree/JCTree;)V

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo$1PathFinder;->scan(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_8
    .catch Lcom/sun/tools/javac/tree/TreeInfo$1Result; {:try_start_0 .. :try_end_8} :catch_d

    .line 539
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_c
    return-object v0

    .line 537
    :catch_d
    move-exception v0

    .line 538
    iget-object v0, v0, Lcom/sun/tools/javac/tree/TreeInfo$1Result;->path:Lcom/sun/tools/javac/util/List;

    goto :goto_c
.end method

.method public static positionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 460
    invoke-static {p0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->declarationFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_7

    move-object p1, v0

    :cond_7
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    return v0
.end method

.method public static referencedStatement(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4

    .line 548
    move-object v0, p0

    .line 549
    :cond_1
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 550
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 551
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 555
    :goto_14
    :pswitch_14  #0xc
    return-object p0

    :pswitch_15  #0x8, 0x9, 0xa, 0xb, 0xd
    move-object p0, v0

    .line 553
    goto :goto_14

    .line 551
    nop

    :pswitch_data_18
    .packed-switch 0x8
        :pswitch_15  #00000008
        :pswitch_15  #00000009
        :pswitch_15  #0000000a
        :pswitch_15  #0000000b
        :pswitch_14  #0000000c
        :pswitch_15  #0000000d
    .end packed-switch
.end method

.method public static scopeFor(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/comp/Env;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            ")",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 507
    invoke-static {p0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->pathFor(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->scopeFor(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    return-object v0
.end method

.method public static scopeFor(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/comp/Env;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 512
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSymbol(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5

    .line 673
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_16

    const/16 v2, 0x23

    if-eq v1, v2, :cond_11

    .line 681
    :goto_10
    return-void

    .line 676
    :cond_11
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iput-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_10

    .line 678
    :cond_16
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iput-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_10
.end method

.method public static skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 562
    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v1

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_e

    .line 563
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCParens;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    .line 565
    :cond_e
    return-object v0
.end method

.method public static skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 571
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_e

    .line 572
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCParens;

    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    .line 574
    :cond_e
    return-object p0
.end method

.method public static symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;
    .registers 4

    .line 648
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_24

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1f

    const/16 v2, 0x27

    if-eq v1, v2, :cond_16

    .line 657
    const/4 v0, 0x0

    :goto_15
    return-object v0

    .line 655
    :cond_16
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_15

    .line 651
    :cond_1f
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_15

    .line 653
    :cond_24
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_15
.end method

.method public static symbolFor(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;
    .registers 4

    .line 619
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1d

    const/4 v2, 0x4

    if-eq v1, v2, :cond_18

    const/4 v2, 0x5

    if-eq v1, v2, :cond_13

    .line 628
    const/4 v0, 0x0

    :goto_12
    return-object v0

    .line 626
    :cond_13
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    goto :goto_12

    .line 624
    :cond_18
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_12

    .line 622
    :cond_1d
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_12
.end method

.method static tagToKind(I)Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 790
    packed-switch p0, :pswitch_data_7e

    packed-switch p0, :pswitch_data_c0

    .line 894
    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 871
    :pswitch_8  #0x5c
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->REMAINDER_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 869
    :pswitch_b  #0x5b
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->DIVIDE_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 867
    :pswitch_e  #0x5a
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MULTIPLY_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 875
    :pswitch_11  #0x59
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MINUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 873
    :pswitch_14  #0x58
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PLUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 881
    :pswitch_17  #0x57
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 879
    :pswitch_1a  #0x56
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 877
    :pswitch_1d  #0x55
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 883
    :pswitch_20  #0x4e
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->AND_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 885
    :pswitch_23  #0x4d
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->XOR_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 887
    :pswitch_26  #0x4c
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->OR_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 819
    :pswitch_29  #0x4b
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->REMAINDER:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 817
    :pswitch_2c  #0x4a
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->DIVIDE:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 815
    :pswitch_2f  #0x49
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MULTIPLY:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 825
    :pswitch_32  #0x48
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MINUS:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 823
    :pswitch_35  #0x47
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 833
    :pswitch_38  #0x46
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 831
    :pswitch_3b  #0x45
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 829
    :pswitch_3e  #0x44
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 843
    :pswitch_41  #0x43
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 841
    :pswitch_44  #0x42
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 839
    :pswitch_47  #0x41
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 837
    :pswitch_4a  #0x40
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 849
    :pswitch_4d  #0x3f
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 847
    :pswitch_50  #0x3e
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 853
    :pswitch_53  #0x3d
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->AND:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 855
    :pswitch_56  #0x3c
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->XOR:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 857
    :pswitch_59  #0x3b
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->OR:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 861
    :pswitch_5c  #0x3a
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_AND:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 863
    :pswitch_5f  #0x39
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_OR:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 891
    :pswitch_62  #0x38
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->OTHER:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 795
    :pswitch_65  #0x37
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_DECREMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 793
    :pswitch_68  #0x36
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 801
    :pswitch_6b  #0x35
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PREFIX_DECREMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 799
    :pswitch_6e  #0x34
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PREFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 807
    :pswitch_71  #0x33
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->BITWISE_COMPLEMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 809
    :pswitch_74  #0x32
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LOGICAL_COMPLEMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 805
    :pswitch_77  #0x31
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNARY_MINUS:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 803
    :pswitch_7a  #0x30
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNARY_PLUS:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_7

    .line 790
    nop

    :pswitch_data_7e
    .packed-switch 0x30
        :pswitch_7a  #00000030
        :pswitch_77  #00000031
        :pswitch_74  #00000032
        :pswitch_71  #00000033
        :pswitch_6e  #00000034
        :pswitch_6b  #00000035
        :pswitch_68  #00000036
        :pswitch_65  #00000037
        :pswitch_62  #00000038
        :pswitch_5f  #00000039
        :pswitch_5c  #0000003a
        :pswitch_59  #0000003b
        :pswitch_56  #0000003c
        :pswitch_53  #0000003d
        :pswitch_50  #0000003e
        :pswitch_4d  #0000003f
        :pswitch_4a  #00000040
        :pswitch_47  #00000041
        :pswitch_44  #00000042
        :pswitch_41  #00000043
        :pswitch_3e  #00000044
        :pswitch_3b  #00000045
        :pswitch_38  #00000046
        :pswitch_35  #00000047
        :pswitch_32  #00000048
        :pswitch_2f  #00000049
        :pswitch_2c  #0000004a
        :pswitch_29  #0000004b
        :pswitch_26  #0000004c
        :pswitch_23  #0000004d
        :pswitch_20  #0000004e
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x55
        :pswitch_1d  #00000055
        :pswitch_1a  #00000056
        :pswitch_17  #00000057
        :pswitch_14  #00000058
        :pswitch_11  #00000059
        :pswitch_e  #0000005a
        :pswitch_b  #0000005b
        :pswitch_8  #0000005c
    .end packed-switch
.end method

.method public static typeIn(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 903
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 913
    :pswitch_7  #0x24, 0x28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type tree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 911
    :pswitch_1e  #0x22, 0x23, 0x25, 0x26, 0x27, 0x29, 0x2a
    return-object p0

    .line 903
    nop

    :pswitch_data_20
    .packed-switch 0x22
        :pswitch_1e  #00000022
        :pswitch_1e  #00000023
        :pswitch_7  #00000024
        :pswitch_1e  #00000025
        :pswitch_1e  #00000026
        :pswitch_1e  #00000027
        :pswitch_7  #00000028
        :pswitch_1e  #00000029
        :pswitch_1e  #0000002a
    .end packed-switch
.end method

.method public static types(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 580
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 581
    :goto_5
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 582
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 581
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_5

    .line 583
    :cond_17
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public operatorName(I)Lcom/sun/tools/javac/util/Name;
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeInfo;->opname:[Lcom/sun/tools/javac/util/Name;

    add-int/lit8 v1, p1, -0x30

    aget-object v0, v0, v1

    return-object v0
.end method
