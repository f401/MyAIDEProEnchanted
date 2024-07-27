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

    if-ne v0, v1, :cond_0

    .line 150
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 151
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
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

    if-ne v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 243
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    .line 252
    :goto_0
    return v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 245
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 247
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;

    .line 248
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 248
    :goto_1
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    goto :goto_1

    .line 252
    :cond_3
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    goto :goto_0
.end method

.method public static finalizerPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 446
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

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
    :goto_0
    return v0

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 451
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 453
    :cond_1
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

    if-eq v0, v1, :cond_0

    move-object v0, v2

    .line 208
    :goto_0
    return-object v0

    .line 196
    :cond_0
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 197
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    .line 198
    iget-object v1, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 202
    :goto_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isSyntheticInit(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    goto :goto_0

    .line 205
    :cond_4
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->getTag()I

    move-result v0

    const/16 v3, 0x14

    if-eq v0, v3, :cond_5

    move-object v0, v2

    goto :goto_0

    .line 206
    :cond_5
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 207
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v1

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_6

    move-object v0, v2

    goto :goto_0

    .line 208
    :cond_6
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    goto :goto_0
.end method

.method public static firstFlag(J)J
    .registers 8

    .line 705
    const/4 v0, 0x1

    .line 706
    :goto_0
    and-int/lit16 v1, v0, 0xfff

    if-eqz v1, :cond_0

    int-to-long v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 707
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_0
    int-to-long v0, v0

    return-wide v0
.end method

.method public static firstStatPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 232
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->pos:I

    .line 235
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    goto :goto_0
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

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 697
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 695
    :cond_0
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-wide v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->flags:J

    goto :goto_0

    .line 689
    :cond_1
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    goto :goto_0

    .line 691
    :cond_2
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    goto :goto_0

    .line 693
    :cond_3
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    goto :goto_0
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

    if-eq v1, v3, :cond_1

    const/16 v3, 0x23

    if-eq v1, v3, :cond_0

    .line 614
    :goto_0
    return-object v2

    .line 609
    :cond_0
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 611
    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->fullName(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 612
    if-nez v1, :cond_2

    move-object v0, v2

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x2e

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Name;->append(CLcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    goto :goto_1
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
    if-nez p0, :cond_0

    move v0, v1

    .line 423
    :goto_0
    return v0

    .line 343
    :cond_0
    if-nez p1, :cond_1

    .line 345
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->endPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 348
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 349
    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_a

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_8

    const/16 v2, 0x20

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    :cond_3
    move v0, v1

    .line 423
    goto :goto_0

    .line 357
    :pswitch_0
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto :goto_0

    .line 365
    :pswitch_1
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto :goto_0

    .line 414
    :pswitch_2
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto :goto_0

    .line 418
    :pswitch_3
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    .line 419
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto :goto_0

    .line 377
    :pswitch_4
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;

    .line 378
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    if-nez v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto :goto_0

    .line 381
    :cond_4
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 371
    :pswitch_5
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 369
    :pswitch_6
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 393
    :pswitch_7
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;

    .line 394
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_5

    .line 395
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 396
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 397
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 399
    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 389
    :pswitch_8
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 367
    :pswitch_9
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCCase;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 385
    :pswitch_a
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 375
    :pswitch_b
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 373
    :pswitch_c
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 416
    :pswitch_d
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 407
    :cond_7
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 405
    :cond_8
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 387
    :cond_9
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 403
    :cond_a
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    goto/16 :goto_0

    .line 391
    :cond_b
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    :try_start_0
    invoke-static {v0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    throw v0

    .line 352
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 4

    const/4 v1, -0x1

    .line 262
    if-nez p0, :cond_0

    move v0, v1

    .line 334
    :goto_0
    return v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v2, 0x4

    if-eq v0, v2, :cond_d

    const/4 v2, 0x5

    if-eq v0, v2, :cond_b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_a

    const/16 v1, 0x14

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    const/16 v1, 0x27

    if-eq v0, v1, :cond_3

    const/16 v1, 0x36

    if-eq v0, v1, :cond_2

    const/16 v1, 0x37

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 334
    :cond_1
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    goto :goto_0

    .line 274
    :pswitch_0
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 282
    :pswitch_1
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 304
    :pswitch_2
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 294
    :pswitch_3
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 310
    :pswitch_4
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 313
    :cond_2
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 306
    :cond_3
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto :goto_0

    .line 308
    :cond_4
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    move-object v0, p0

    .line 315
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 316
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_1

    .line 317
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_0

    .line 267
    :cond_6
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    move-object v0, p0

    .line 329
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    .line 330
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;->errs:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_0

    .line 269
    :cond_8
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_0

    .line 292
    :cond_9
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_0

    .line 290
    :cond_a
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_0

    .line 321
    :cond_b
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 322
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    if-eq v0, v1, :cond_c

    .line 323
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    goto/16 :goto_0

    .line 325
    :cond_c
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_0

    .line 296
    :cond_d
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 297
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    if-eq v0, v1, :cond_e

    .line 298
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    goto/16 :goto_0

    .line 299
    :cond_e
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 300
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    goto/16 :goto_0

    .line 301
    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_10

    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->pos:I

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    :try_start_0
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto/16 :goto_0

    :cond_11
    move-object v0, p0

    .line 284
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 285
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    if-eq v2, v1, :cond_1

    .line 286
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    goto/16 :goto_0

    .line 301
    :catchall_0
    move-exception v0

    throw v0

    .line 265
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 118
    :goto_1
    return v0

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static innermostType(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 918
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    .line 924
    :goto_0
    return-object p0

    .line 922
    :cond_0
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->innermostType(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object p0

    goto :goto_0

    .line 920
    :cond_1
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->innermostType(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object p0

    goto :goto_0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeInfo;
    .registers 2

    .line 51
    sget-object v0, Lcom/sun/tools/javac/tree/TreeInfo;->treeInfoKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/TreeInfo;

    .line 52
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/sun/tools/javac/tree/TreeInfo;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/tree/TreeInfo;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 54
    :cond_0
    return-object v0
.end method

.method public static isConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 4

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 106
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    .line 107
    iget-object v2, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 109
    :cond_0
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

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 640
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 638
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDiamond(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 3

    .line 213
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    .line 216
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 214
    :cond_0
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 215
    :cond_1
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->isDiamond(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isInitialConstructor(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 4

    const/4 v0, 0x0

    .line 187
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->firstConstructorCall(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v1

    .line 188
    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMultiCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)Z
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNull(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 4

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    .line 225
    iget v1, p0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->typetag:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSelfCall(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 5

    const/4 v0, 0x0

    .line 162
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->calledMethodName(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_1

    .line 164
    iget-object v2, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    .line 165
    iget-object v3, v2, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v3, :cond_0

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 167
    :cond_1
    return v0
.end method

.method public static isSuperCall(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 4

    const/4 v0, 0x0

    .line 174
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->calledMethodName(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    .line 176
    iget-object v2, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    .line 177
    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 179
    :cond_0
    return v0
.end method

.method public static isSyntheticInit(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 7

    .line 128
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 129
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 130
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    .line 132
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    .line 133
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 134
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 135
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 136
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;
    .registers 3

    .line 590
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    .line 598
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 596
    :cond_0
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_1
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_0

    .line 594
    :cond_2
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_0
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

    if-eq v3, v4, :cond_0

    .line 667
    :goto_0
    return v1

    .line 665
    :cond_0
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 666
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v3, v2, :cond_2

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static opPrec(I)I
    .registers 3

    const/16 v0, 0xa

    .line 743
    const/16 v1, 0x1e

    if-eq p0, v1, :cond_1

    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 785
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 764
    :pswitch_0
    const/4 v0, 0x2

    .line 784
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 783
    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    .line 780
    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 778
    :pswitch_4
    const/16 v0, 0xb

    goto :goto_0

    .line 768
    :pswitch_5
    const/16 v0, 0x9

    goto :goto_0

    .line 775
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 774
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 773
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    .line 766
    :pswitch_9
    const/4 v0, 0x5

    goto :goto_0

    .line 765
    :pswitch_a
    const/4 v0, 0x4

    goto :goto_0

    .line 752
    :pswitch_b
    const/16 v0, 0xf

    goto :goto_0

    .line 749
    :pswitch_c
    const/16 v0, 0xe

    goto :goto_0

    .line 753
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    :try_end_0
    .catch Lcom/sun/tools/javac/tree/TreeInfo$1Result; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    iget-object v0, v0, Lcom/sun/tools/javac/tree/TreeInfo$1Result;->path:Lcom/sun/tools/javac/util/List;

    goto :goto_0
.end method

.method public static positionFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 460
    invoke-static {p0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->declarationFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    return v0
.end method

.method public static referencedStatement(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 4

    .line 548
    move-object v0, p0

    .line 549
    :cond_0
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 550
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 555
    :goto_0
    :pswitch_0
    return-object p0

    :pswitch_1
    move-object p0, v0

    .line 553
    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
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

    if-eq v1, v2, :cond_1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    .line 681
    :goto_0
    return-void

    .line 676
    :cond_0
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iput-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0

    .line 678
    :cond_1
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iput-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0
.end method

.method public static skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 562
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v1

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    .line 563
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCParens;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    .line 565
    :cond_0
    return-object v0
.end method

.method public static skipParens(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3

    .line 571
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 572
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree$JCParens;

    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->skipParens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    .line 574
    :cond_0
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

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    .line 657
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 655
    :cond_0
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_0

    .line 651
    :cond_1
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0

    .line 653
    :cond_2
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0
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

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 628
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 626
    :cond_0
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    goto :goto_0

    .line 624
    :cond_1
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_0

    .line 622
    :cond_2
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_0
.end method

.method static tagToKind(I)Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 790
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 894
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 871
    :pswitch_0
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->REMAINDER_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 869
    :pswitch_1
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->DIVIDE_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 867
    :pswitch_2
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MULTIPLY_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 875
    :pswitch_3
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MINUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 873
    :pswitch_4
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PLUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 881
    :pswitch_5
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 879
    :pswitch_6
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 877
    :pswitch_7
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 883
    :pswitch_8
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->AND_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 885
    :pswitch_9
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->XOR_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 887
    :pswitch_a
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->OR_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 819
    :pswitch_b
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->REMAINDER:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 817
    :pswitch_c
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->DIVIDE:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 815
    :pswitch_d
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MULTIPLY:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 825
    :pswitch_e
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MINUS:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 823
    :pswitch_f
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 833
    :pswitch_10
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 831
    :pswitch_11
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->RIGHT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 829
    :pswitch_12
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LEFT_SHIFT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 843
    :pswitch_13
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 841
    :pswitch_14
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN_EQUAL:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 839
    :pswitch_15
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->GREATER_THAN:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 837
    :pswitch_16
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LESS_THAN:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 849
    :pswitch_17
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 847
    :pswitch_18
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 853
    :pswitch_19
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->AND:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 855
    :pswitch_1a
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->XOR:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 857
    :pswitch_1b
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->OR:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 861
    :pswitch_1c
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_AND:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 863
    :pswitch_1d
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_OR:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 891
    :pswitch_1e
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->OTHER:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 795
    :pswitch_1f
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_DECREMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 793
    :pswitch_20
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->POSTFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 801
    :pswitch_21
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PREFIX_DECREMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 799
    :pswitch_22
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PREFIX_INCREMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 807
    :pswitch_23
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->BITWISE_COMPLEMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 809
    :pswitch_24
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LOGICAL_COMPLEMENT:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 805
    :pswitch_25
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNARY_MINUS:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 803
    :pswitch_26
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNARY_PLUS:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static typeIn(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 903
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 913
    :pswitch_0
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
    :pswitch_1
    return-object p0

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
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
    :goto_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 581
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 583
    :cond_0
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
