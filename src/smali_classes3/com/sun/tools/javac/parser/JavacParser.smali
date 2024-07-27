.class public Lcom/sun/tools/javac/parser/JavacParser;
.super Ljava/lang/Object;
.source "JavacParser.java"

# interfaces
.implements Lcom/sun/tools/javac/parser/Parser;


# static fields
.field static final DIAMOND:I = 0x10

.field static final EXPR:I = 0x1

.field static final NOPARAMS:I = 0x4

.field static final TYPE:I = 0x2

.field static final TYPEARG:I = 0x8

.field private static final infixPrecedenceLevels:I = 0xa


# instance fields
.field protected F:Lcom/sun/tools/javac/tree/TreeMaker;

.field protected S:Lcom/sun/tools/javac/parser/Lexer;

.field allowAnnotations:Z

.field allowAsserts:Z

.field allowDiamond:Z

.field allowEnums:Z

.field allowForeach:Z

.field allowGenerics:Z

.field allowMulticatch:Z

.field allowStaticImport:Z

.field allowStringFolding:Z

.field allowTWR:Z

.field allowVarargs:Z

.field private final docComments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private errorEndPos:I

.field private errorPos:I

.field private errorTree:Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

.field keepDocComments:Z

.field keepLineMap:Z

.field private keywords:Lcom/sun/tools/javac/parser/Keywords;

.field private lastmode:I

.field private log:Lcom/sun/tools/javac/util/Log;

.field private mode:I

.field private names:Lcom/sun/tools/javac/util/Names;

.field odStackSupply:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<[",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field opStackSupply:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<[",
            "Lcom/sun/tools/javac/parser/Token;",
            ">;"
        }
    .end annotation
.end field

.field posStackSupply:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<[I>;"
        }
    .end annotation
.end field

.field private source:Lcom/sun/tools/javac/code/Source;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/parser/ParserFactory;Lcom/sun/tools/javac/parser/Lexer;ZZ)V
    .registers 8

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 179
    iput v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->lastmode:I

    .line 272
    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorPos:I

    .line 377
    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    .line 818
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->odStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    .line 819
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->opStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    .line 820
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->posStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    .line 85
    iput-object p2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 86
    invoke-interface {p2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 87
    iget-object v0, p1, Lcom/sun/tools/javac/parser/ParserFactory;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 88
    iget-object v0, p1, Lcom/sun/tools/javac/parser/ParserFactory;->log:Lcom/sun/tools/javac/util/Log;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->log:Lcom/sun/tools/javac/util/Log;

    .line 89
    iget-object v0, p1, Lcom/sun/tools/javac/parser/ParserFactory;->names:Lcom/sun/tools/javac/util/Names;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    .line 90
    iget-object v0, p1, Lcom/sun/tools/javac/parser/ParserFactory;->keywords:Lcom/sun/tools/javac/parser/Keywords;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->keywords:Lcom/sun/tools/javac/parser/Keywords;

    .line 91
    iget-object v0, p1, Lcom/sun/tools/javac/parser/ParserFactory;->source:Lcom/sun/tools/javac/code/Source;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    .line 92
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowGenerics()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowGenerics:Z

    .line 93
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowVarargs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowVarargs:Z

    .line 94
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowAsserts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowAsserts:Z

    .line 95
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowEnums()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowEnums:Z

    .line 96
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowForeach()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowForeach:Z

    .line 97
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowStaticImport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowStaticImport:Z

    .line 98
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowAnnotations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowAnnotations:Z

    .line 99
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowTryWithResources()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowTWR:Z

    .line 100
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowDiamond()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowDiamond:Z

    .line 101
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowMulticatch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowMulticatch:Z

    .line 102
    iget-object v0, p1, Lcom/sun/tools/javac/parser/ParserFactory;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "allowStringFolding"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowStringFolding:Z

    .line 103
    iput-boolean p3, p0, Lcom/sun/tools/javac/parser/JavacParser;->keepDocComments:Z

    .line 104
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->docComments:Ljava/util/Map;

    .line 105
    iput-boolean p4, p0, Lcom/sun/tools/javac/parser/JavacParser;->keepLineMap:Z

    .line 106
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous()Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorTree:Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    .line 107
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bracketsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 1347
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 1349
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1350
    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOptCont(Lcom/sun/tools/javac/tree/JCTree$JCExpression;I)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object p1

    .line 1351
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1353
    :cond_0
    return-object p1
.end method

.method private bracketsOptCont(Lcom/sun/tools/javac/tree/JCTree$JCExpression;I)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;
    .registers 5

    .line 1357
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1358
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1359
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    return-object v0
.end method

.method static earlier(II)I
    .registers 3

    const/4 v0, -0x1

    .line 2862
    if-ne p0, v0, :cond_1

    move p0, p1

    .line 2866
    :cond_0
    :goto_0
    return p0

    .line 2864
    :cond_1
    if-eq p1, v0, :cond_0

    .line 2866
    if-lt p0, p1, :cond_0

    move p0, p1

    goto :goto_0
.end method

.method private makeOp(ILcom/sun/tools/javac/parser/Token;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 7

    .line 775
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->INSTANCEOF:Lcom/sun/tools/javac/parser/Token;

    if-ne p2, v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeTest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;

    move-result-object v0

    .line 778
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {p2}, Lcom/sun/tools/javac/parser/JavacParser;->optag(Lcom/sun/tools/javac/parser/Token;)I

    move-result v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/sun/tools/javac/tree/TreeMaker;->Binary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    goto :goto_0
.end method

.method private newOdStack()[Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 823
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->odStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->odStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v1, v1, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    if-ne v0, v1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->odStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->odStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, [Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 826
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->odStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v2, v1, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v2, v1, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 827
    return-object v0
.end method

.method private newOpStack()[Lcom/sun/tools/javac/parser/Token;
    .registers 4

    .line 831
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->opStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->opStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v1, v1, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    if-ne v0, v1, :cond_0

    .line 832
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->opStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->opStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, [Lcom/sun/tools/javac/parser/Token;

    .line 834
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->opStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v2, v1, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v2, v1, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 835
    return-object v0
.end method

.method private newPosStack()[I
    .registers 4

    .line 839
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->posStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->posStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v1, v1, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    if-ne v0, v1, :cond_0

    .line 840
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->posStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    const/16 v1, 0xb

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->posStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, [I

    .line 842
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->posStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v2, v1, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v2, v1, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 843
    return-object v0
.end method

.method static optag(Lcom/sun/tools/javac/parser/Token;)I
    .registers 3

    .line 2873
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 2937
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2935
    :pswitch_0
    const/16 v0, 0x20

    goto :goto_0

    .line 2931
    :pswitch_1
    const/16 v0, 0x4b

    goto :goto_0

    .line 2927
    :pswitch_2
    const/16 v0, 0x4a

    goto :goto_0

    .line 2923
    :pswitch_3
    const/16 v0, 0x49

    goto :goto_0

    .line 2903
    :pswitch_4
    const/16 v0, 0x44

    goto :goto_0

    .line 2899
    :pswitch_5
    const/16 v0, 0x42

    goto :goto_0

    .line 2893
    :pswitch_6
    const/16 v0, 0x3f

    goto :goto_0

    .line 2891
    :pswitch_7
    const/16 v0, 0x3e

    goto :goto_0

    .line 2887
    :pswitch_8
    const/16 v0, 0x3d

    goto :goto_0

    .line 2883
    :pswitch_9
    const/16 v0, 0x3c

    goto :goto_0

    .line 2879
    :pswitch_a
    const/16 v0, 0x3b

    goto :goto_0

    .line 2877
    :pswitch_b
    const/16 v0, 0x3a

    goto :goto_0

    .line 2875
    :pswitch_c
    const/16 v0, 0x39

    goto :goto_0

    .line 2897
    :pswitch_d
    const/16 v0, 0x41

    goto :goto_0

    .line 2907
    :pswitch_e
    const/16 v0, 0x45

    goto :goto_0

    .line 2911
    :pswitch_f
    const/16 v0, 0x46

    goto :goto_0

    .line 2901
    :pswitch_10
    const/16 v0, 0x43

    goto :goto_0

    .line 2919
    :pswitch_11
    const/16 v0, 0x48

    goto :goto_0

    .line 2915
    :pswitch_12
    const/16 v0, 0x47

    goto :goto_0

    .line 2913
    :pswitch_13
    const/16 v0, 0x57

    goto :goto_0

    .line 2909
    :pswitch_14
    const/16 v0, 0x56

    goto :goto_0

    .line 2905
    :pswitch_15
    const/16 v0, 0x55

    goto :goto_0

    .line 2885
    :pswitch_16
    const/16 v0, 0x4d

    goto :goto_0

    .line 2881
    :pswitch_17
    const/16 v0, 0x4c

    goto :goto_0

    .line 2889
    :pswitch_18
    const/16 v0, 0x4e

    goto :goto_0

    .line 2933
    :pswitch_19
    const/16 v0, 0x5c

    goto :goto_0

    .line 2929
    :pswitch_1a
    const/16 v0, 0x5b

    goto :goto_0

    .line 2925
    :pswitch_1b
    const/16 v0, 0x5a

    goto :goto_0

    .line 2921
    :pswitch_1c
    const/16 v0, 0x59

    goto :goto_0

    .line 2917
    :pswitch_1d
    const/16 v0, 0x58

    goto :goto_0

    .line 2895
    :cond_0
    const/16 v0, 0x40

    goto :goto_0

    .line 2873
    :pswitch_data_0
    .packed-switch 0x39
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method static prec(Lcom/sun/tools/javac/parser/Token;)I
    .registers 2

    .line 2853
    invoke-static {p0}, Lcom/sun/tools/javac/parser/JavacParser;->optag(Lcom/sun/tools/javac/parser/Token;)I

    move-result v0

    .line 2854
    if-ltz v0, :cond_0

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->opPrec(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private varargs reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 279
    new-instance v0, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;-><init>(I)V

    .line 280
    invoke-direct {p0, v0, p2, p3}, Lcom/sun/tools/javac/parser/JavacParser;->reportSyntaxError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method private varargs reportSyntaxError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 288
    invoke-interface {p1}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->errPos()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->EOF:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_3

    .line 291
    const-string v1, "premature.eof"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1, v0}, Lcom/sun/tools/javac/parser/Lexer;->errPos(I)V

    .line 297
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorPos:I

    if-ne v0, v1, :cond_2

    .line 298
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorPos:I

    .line 300
    return-void

    .line 293
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/parser/JavacParser;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setErrorEndPos(I)V
    .registers 3

    .line 380
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    if-le p1, v0, :cond_0

    .line 381
    iput p1, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    .line 382
    :cond_0
    return-void
.end method

.method private skip(ZZZZ)V
    .registers 7

    .line 189
    :goto_0
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    goto :goto_0

    .line 248
    :pswitch_0
    if-eqz p4, :cond_0

    .line 249
    :goto_1
    :pswitch_1
    return-void

    .line 230
    :pswitch_2
    if-eqz p3, :cond_0

    goto :goto_1

    .line 226
    :pswitch_3
    if-eqz p2, :cond_0

    goto :goto_1

    .line 203
    :pswitch_4
    if-eqz p1, :cond_0

    goto :goto_1

    .line 191
    :pswitch_5
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    goto :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

.method private varargs syntaxError(ILcom/sun/tools/javac/util/List;Ljava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Lcom/sun/tools/javac/parser/Token;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCErroneous;"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    .line 262
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    .line 263
    check-cast p4, [Ljava/lang/Object;

    invoke-direct {p0, v1, p3, p4}, Lcom/sun/tools/javac/parser/JavacParser;->reportSyntaxError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    if-eqz p2, :cond_0

    .line 265
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 269
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    return-object v0
.end method

.method private varargs syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;
    .registers 5

    .line 257
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILcom/sun/tools/javac/util/List;Ljava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    return-object v0
.end method

.method private syntaxError(Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sun/tools/javac/parser/Token;

    invoke-direct {p0, v0, p1, v1}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    return-object v0
.end method

.method private syntaxError(Ljava/lang/String;Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;
    .registers 6

    .line 314
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sun/tools/javac/parser/Token;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    return-object v0
.end method

.method static typetag(Lcom/sun/tools/javac/parser/Token;)I
    .registers 3

    .line 2967
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2985
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2983
    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 2981
    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 2979
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 2977
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 2975
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2971
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 2973
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 2969
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_0

    .line 2967
    :pswitch_data_0
    .packed-switch 0x16
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

.method static unoptag(Lcom/sun/tools/javac/parser/Token;)I
    .registers 3

    .line 2945
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 2959
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2949
    :pswitch_0
    const/16 v0, 0x31

    goto :goto_0

    .line 2947
    :pswitch_1
    const/16 v0, 0x30

    goto :goto_0

    .line 2957
    :pswitch_2
    const/16 v0, 0x35

    goto :goto_0

    .line 2955
    :pswitch_3
    const/16 v0, 0x34

    goto :goto_0

    .line 2953
    :cond_0
    const/16 v0, 0x33

    goto :goto_0

    .line 2951
    :cond_1
    const/16 v0, 0x32

    goto :goto_0

    .line 2945
    nop

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/parser/Token;)V
    .registers 6

    .line 321
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 327
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    .line 325
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->prevEndPos()I

    move-result v0

    const-string v1, "expected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method annotation(I)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;
    .registers 5

    .line 2076
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkAnnotations()V

    .line 2077
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->qualident()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 2078
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->annotationFieldValuesOpt()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2079
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Annotation(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v0

    .line 2080
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->prevEndPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 2081
    return-object v0
.end method

.method annotationFieldValue()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 5

    .line 2107
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_1

    .line 2108
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 2109
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term1()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 2110
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->EQ:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 2111
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    .line 2112
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->EQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2113
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->annotationValue()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 2114
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2119
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->annotationValue()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0
.end method

.method annotationFieldValues()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 2090
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2091
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2092
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_0

    .line 2093
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->annotationFieldValue()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2094
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 2095
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2096
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->annotationFieldValue()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 2099
    :cond_0
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2100
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method annotationFieldValuesOpt()Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 2085
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->annotationFieldValues()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method annotationValue()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 5

    .line 2128
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 2148
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 2149
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term1()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2134
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 2135
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2136
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2137
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v2, v3, :cond_1

    .line 2138
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->annotationValue()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2139
    :goto_1
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v3, :cond_1

    .line 2140
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2141
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v3, :cond_2

    .line 2145
    :cond_1
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2146
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    .line 2142
    :cond_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->annotationValue()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 2130
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 2131
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2132
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->annotation(I)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v0

    goto :goto_0
.end method

.method annotationsOpt()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation

    .line 1983
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->MONKEYS_AT:Lcom/sun/tools/javac/parser/Token;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1990
    :goto_0
    return-object v0

    .line 1984
    :cond_0
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1985
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->MONKEYS_AT:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_1

    .line 1986
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    .line 1987
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1988
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->annotation(I)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 1990
    :cond_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method arguments(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;"
        }
    .end annotation

    .line 1223
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 1224
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->arguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1225
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Apply(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    return-object v0
.end method

.method arguments()Lcom/sun/tools/javac/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 1205
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    .line 1206
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_1

    .line 1207
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1208
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1210
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 1211
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1212
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 1215
    :cond_0
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1219
    :goto_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0

    .line 1217
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    const-string v2, "expected"

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sun/tools/javac/parser/Token;

    const/4 v4, 0x0

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    goto :goto_1
.end method

.method argumentsOpt(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    .line 1194
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    if-eq v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 1195
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1196
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/parser/JavacParser;->arguments(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p2

    .line 1198
    :cond_2
    return-object p2
.end method

.method arrayCreatorRest(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 9

    const/4 v5, 0x0

    .line 1477
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1478
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_1

    .line 1479
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1480
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1481
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 1482
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->arrayInitializer(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1501
    :goto_0
    return-object v0

    .line 1484
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1485
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    const-string v2, "array.dimension.missing"

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/sun/tools/javac/parser/Token;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILcom/sun/tools/javac/util/List;Ljava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    goto :goto_0

    .line 1488
    :cond_1
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1489
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1490
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    move-object v0, p2

    .line 1491
    :goto_1
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v3, :cond_3

    .line 1492
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 1493
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1494
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v4, :cond_2

    .line 1495
    invoke-direct {p0, v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOptCont(Lcom/sun/tools/javac/tree/JCTree$JCExpression;I)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object v0

    goto :goto_1

    .line 1497
    :cond_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1498
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto :goto_1

    .line 1501
    :cond_3
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v2, v0, v1, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0
.end method

.method arrayInitializer(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 6

    .line 1526
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1527
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1528
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_1

    .line 1529
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1538
    :cond_0
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1539
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, p2, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0

    .line 1530
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_0

    .line 1531
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->variableInitializer()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1532
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1534
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_0

    .line 1535
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->variableInitializer()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0
.end method

.method attach(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/String;)V
    .registers 4

    .line 369
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->keepDocComments:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 371
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->docComments:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_0
    return-void
.end method

.method basicType()Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;
    .registers 3

    .line 1186
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/tools/javac/parser/JavacParser;->typetag(Lcom/sun/tools/javac/parser/Token;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(I)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    .line 1187
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1188
    return-object v0
.end method

.method public block()Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .registers 5

    .line 1575
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->block(IJ)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0
.end method

.method block(IJ)Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    .registers 8

    .line 1560
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1561
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->blockStatements()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1562
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Block(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    .line 1563
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->CASE:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->DEFAULT:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_1

    .line 1564
    :cond_0
    const-string v1, "orphaned"

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(Ljava/lang/String;Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    .line 1565
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->switchBlockStatementGroups()Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1569
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    iput v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    .line 1570
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1571
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    return-object v0
.end method

.method blockStatements()Lcom/sun/tools/javac/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v2, -0x1

    const/4 v8, 0x1

    .line 1588
    .line 1589
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    move v1, v2

    .line 1591
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 1592
    sget-object v4, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v8, :cond_a

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_5

    const/16 v5, 0xb

    if-eq v4, v5, :cond_a

    const/16 v5, 0xc

    if-eq v4, v5, :cond_4

    const/16 v5, 0x13

    if-eq v4, v5, :cond_a

    const/16 v5, 0x14

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 1643
    :cond_0
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->name()Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 1644
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/sun/tools/javac/parser/JavacParser;->term(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    .line 1645
    iget-object v6, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v6}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v6

    sget-object v7, Lcom/sun/tools/javac/parser/Token;->COLON:Lcom/sun/tools/javac/parser/Token;

    if-ne v6, v7, :cond_7

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_7

    .line 1646
    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1647
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v5

    .line 1648
    iget-object v6, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->Labelled(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1599
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 1670
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    .line 1626
    :pswitch_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->modifiersOpt()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 1627
    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->docComment()Ljava/lang/String;

    move-result-object v4

    .line 1626
    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 1602
    :pswitch_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->docComment()Ljava/lang/String;

    move-result-object v0

    .line 1603
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->modifiersOpt()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v4

    .line 1604
    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->INTERFACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 1605
    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->CLASS:Lcom/sun/tools/javac/parser/Token;

    if-eq v5, v6, :cond_1

    iget-boolean v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowEnums:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 1606
    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    if-ne v5, v6, :cond_2

    .line 1607
    :cond_1
    invoke-virtual {p0, v4, v0}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 1609
    :cond_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1610
    new-instance v5, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0, v4, v0, v5}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclarators(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1613
    iget-object v0, v3, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->endPos()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1614
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto :goto_1

    .line 1619
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->docComment()Ljava/lang/String;

    move-result-object v0

    .line 1620
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->modifiersOpt()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v4

    .line 1621
    invoke-virtual {p0, v4, v0}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto/16 :goto_1

    .line 1594
    :cond_4
    :pswitch_3
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto/16 :goto_2

    .line 1631
    :cond_5
    :pswitch_4
    iget-boolean v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowEnums:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    if-ne v4, v5, :cond_6

    .line 1632
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v4, "local.enum"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v4, v5}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1633
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->modifiersOpt()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 1635
    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->docComment()Ljava/lang/String;

    move-result-object v4

    .line 1634
    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto/16 :goto_1

    .line 1637
    :cond_6
    iget-boolean v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowAsserts:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->ASSERT:Lcom/sun/tools/javac/parser/Token;

    if-ne v4, v5, :cond_0

    .line 1638
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto/16 :goto_1

    .line 1649
    :cond_7
    iget v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->lastmode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 1650
    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-eq v4, v6, :cond_8

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 1651
    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->ASSERT:Lcom/sun/tools/javac/parser/Token;

    if-eq v4, v6, :cond_8

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 1652
    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    if-ne v4, v6, :cond_9

    .line 1653
    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 1654
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v4

    .line 1655
    iget-object v6, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    .line 1656
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0, v4, v5, v0}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclarators(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1659
    iget-object v0, v3, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->endPos()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1660
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_1

    .line 1663
    :cond_9
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/sun/tools/javac/parser/JavacParser;->checkExprStat(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1664
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_1

    .line 1598
    :cond_a
    :pswitch_5
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto/16 :goto_1

    .line 1671
    :cond_b
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    iget v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    if-gt v0, v4, :cond_c

    .line 1672
    invoke-direct {p0, v9, v8, v8, v8}, Lcom/sun/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    .line 1673
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 1677
    :goto_3
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->resetDeprecatedFlag()V

    move v1, v0

    .line 1678
    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_3

    .line 1592
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method bracketsSuffix(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 6

    .line 1366
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_2

    .line 1367
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1368
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    .line 1369
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1370
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->CLASS:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1371
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    iget v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    if-ne v0, v2, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->name()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 1376
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1380
    :goto_0
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    :goto_1
    move-object p1, v0

    .line 1389
    :goto_2
    return-object p1

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    goto :goto_0

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    .line 1384
    :cond_2
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1385
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    goto :goto_2

    .line 1387
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "dot.class.expected"

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sun/tools/javac/parser/Token;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    goto :goto_2
.end method

.method protected catchClause()Lcom/sun/tools/javac/tree/JCTree$JCCatch;
    .registers 6

    .line 1872
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    .line 1873
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->CATCH:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1874
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1875
    const-wide v2, 0x200000000L

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->optFinal(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    .line 1876
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->catchTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 1877
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    .line 1878
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getStartPosition()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeUnion(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1880
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclaratorId(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    .line 1881
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1882
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->block()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    .line 1883
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Catch(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    move-result-object v0

    return-object v0

    .line 1879
    :cond_0
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0
.end method

.method catchTypes()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 1887
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    .line 1888
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    .line 1889
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->BAR:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 1890
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkMulticatch()V

    .line 1891
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1892
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->qualident()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1894
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method checkAnnotations()V
    .registers 7

    const/4 v5, 0x1

    .line 3014
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowAnnotations:Z

    if-nez v0, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "annotations.not.supported.in.source"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3016
    iput-boolean v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowAnnotations:Z

    .line 3018
    :cond_0
    return-void
.end method

.method checkDiamond()V
    .registers 7

    const/4 v5, 0x1

    .line 3020
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowDiamond:Z

    if-nez v0, :cond_0

    .line 3021
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "diamond.not.supported.in.source"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3022
    iput-boolean v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowDiamond:Z

    .line 3024
    :cond_0
    return-void
.end method

.method protected checkExprStat(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 2831
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 2843
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    .line 2844
    const-string v0, "not.stmt"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2845
    :cond_0
    :pswitch_0
    return-object p1

    .line 2831
    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
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

.method checkForeach()V
    .registers 7

    const/4 v5, 0x1

    .line 3002
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowForeach:Z

    if-nez v0, :cond_0

    .line 3003
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "foreach.not.supported.in.source"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3004
    iput-boolean v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowForeach:Z

    .line 3006
    :cond_0
    return-void
.end method

.method checkGenerics()V
    .registers 7

    const/4 v5, 0x1

    .line 2990
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowGenerics:Z

    if-nez v0, :cond_0

    .line 2991
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "generics.not.supported.in.source"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2992
    iput-boolean v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowGenerics:Z

    .line 2994
    :cond_0
    return-void
.end method

.method checkMulticatch()V
    .registers 7

    const/4 v5, 0x1

    .line 3026
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowMulticatch:Z

    if-nez v0, :cond_0

    .line 3027
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "multicatch.not.supported.in.source"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3028
    iput-boolean v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowMulticatch:Z

    .line 3030
    :cond_0
    return-void
.end method

.method checkNoMods(J)V
    .registers 8

    .line 348
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 349
    neg-long v0, p1

    .line 350
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 351
    and-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v0

    .line 350
    const-string v1, "mod.not.allowed.here"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :cond_0
    return-void
.end method

.method checkStaticImports()V
    .registers 7

    const/4 v5, 0x1

    .line 3008
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowStaticImport:Z

    if-nez v0, :cond_0

    .line 3009
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "static.import.not.supported.in.source"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3010
    iput-boolean v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowStaticImport:Z

    .line 3012
    :cond_0
    return-void
.end method

.method checkTryWithResources()V
    .registers 7

    const/4 v5, 0x1

    .line 3032
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowTWR:Z

    if-nez v0, :cond_0

    .line 3033
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "try.with.resources.not.supported.in.source"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3034
    iput-boolean v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowTWR:Z

    .line 3036
    :cond_0
    return-void
.end method

.method checkVarargs()V
    .registers 7

    const/4 v5, 0x1

    .line 2996
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowVarargs:Z

    if-nez v0, :cond_0

    .line 2997
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "varargs.not.supported.in.source"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2998
    iput-boolean v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowVarargs:Z

    .line 3000
    :cond_0
    return-void
.end method

.method classCreatorRest(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCNewClass;"
        }
    .end annotation

    .line 1512
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->arguments()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 1513
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 1516
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceBody(Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1517
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    .line 1518
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->AnonymousClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-object v5, v0

    .line 1520
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/tree/TreeMaker;->NewClass(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    return-object v0

    .line 1514
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method classDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .registers 10

    .line 2405
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 2406
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CLASS:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2407
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    .line 2409
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeParametersOpt()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2411
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->EXTENDS:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v4, :cond_1

    .line 2413
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2414
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    .line 2416
    :goto_0
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2417
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->IMPLEMENTS:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v6, :cond_0

    .line 2418
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2419
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeList()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2417
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceBody(Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 2422
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 2424
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/parser/JavacParser;->attach(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/String;)V

    .line 2425
    return-object v0

    .line 2412
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method classOrInterfaceBody(Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            "Z)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2564
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2565
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    if-gt v0, v1, :cond_0

    .line 2567
    invoke-direct {p0, v3, v4, v3, v3}, Lcom/sun/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    .line 2568
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    .line 2569
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2571
    :cond_0
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2572
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->EOF:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_2

    .line 2573
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceBodyDeclaration(Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2574
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    iget v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    if-gt v1, v2, :cond_1

    .line 2576
    invoke-direct {p0, v3, v4, v4, v3}, Lcom/sun/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    goto :goto_0

    .line 2579
    :cond_2
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2580
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected classOrInterfaceBodyDeclaration(Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            "Z)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .line 2601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v3, :cond_0

    .line 2602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2603
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2661
    :goto_0
    return-object v2

    .line 2605
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->docComment()Ljava/lang/String;

    move-result-object v10

    .line 2606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 2607
    invoke-virtual/range {p0 .. p0}, Lcom/sun/tools/javac/parser/JavacParser;->modifiersOpt()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v4

    .line 2608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->CLASS:Lcom/sun/tools/javac/parser/Token;

    if-eq v3, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 2609
    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->INTERFACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v3, v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sun/tools/javac/parser/JavacParser;->allowEnums:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 2610
    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v5, :cond_2

    .line 2608
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto :goto_0

    .line 2612
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v5, :cond_3

    if-nez p2, :cond_3

    iget-wide v6, v4, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v8, 0xfff

    and-long/2addr v6, v8

    const-wide/16 v8, -0x9

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    iget-object v3, v4, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    .line 2614
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2615
    iget-wide v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/sun/tools/javac/parser/JavacParser;->block(IJ)Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto :goto_0

    .line 2617
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 2618
    invoke-virtual/range {p0 .. p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeParametersOpt()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 2621
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v4, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    .line 2622
    iput v2, v4, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    .line 2623
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 2625
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->name()Lcom/sun/tools/javac/util/Name;

    move-result-object v6

    .line 2626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    .line 2628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->VOID:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v5, :cond_7

    const/4 v9, 0x1

    .line 2629
    :goto_1
    if-eqz v9, :cond_8

    .line 2630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(I)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2631
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    move-object v5, v2

    .line 2635
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v8, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v8, :cond_9

    if-nez p2, :cond_9

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v2

    const/16 v8, 0x23

    if-ne v2, v8, :cond_9

    .line 2636
    if-nez p2, :cond_5

    move-object/from16 v0, p1

    if-eq v6, v0, :cond_6

    .line 2637
    :cond_5
    const-string v2, "invalid.meth.decl.ret.type.req"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v5}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2638
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, v2, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sun/tools/javac/parser/JavacParser;->methodDeclaratorRest(ILcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;ZZLjava/lang/String;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 2628
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 2633
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    goto :goto_2

    .line 2635
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    .line 2643
    invoke-virtual/range {p0 .. p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v6

    .line 2644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v8, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v8, :cond_a

    move-object/from16 v2, p0

    move/from16 v8, p2

    .line 2645
    invoke-virtual/range {v2 .. v10}, Lcom/sun/tools/javac/parser/JavacParser;->methodDeclaratorRest(ILcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;ZZLjava/lang/String;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 2648
    :cond_a
    if-nez v9, :cond_b

    invoke-virtual {v7}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2649
    new-instance v9, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v9}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    move-object/from16 v2, p0

    move/from16 v7, p2

    move-object v8, v10

    .line 2650
    invoke-virtual/range {v2 .. v9}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclaratorsRest(ILcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;ZLjava/lang/String;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v2

    .line 2651
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2652
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->endPos()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 2653
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    move-object v2, v3

    .line 2654
    goto/16 :goto_0

    .line 2656
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 2657
    if-eqz v9, :cond_c

    .line 2658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v8

    .line 2659
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v13

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v14

    .line 2658
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v4

    move-object v10, v6

    move-object v11, v5

    move-object v12, v7

    invoke-virtual/range {v8 .. v16}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2661
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    const-string v4, "expected"

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sun/tools/javac/parser/Token;

    const/4 v6, 0x0

    sget-object v7, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILcom/sun/tools/javac/util/List;Ljava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 2660
    :cond_c
    const/4 v2, 0x0

    goto :goto_3
.end method

.method classOrInterfaceOrEnumDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 12

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2361
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->CLASS:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    .line 2362
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/parser/JavacParser;->classDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    .line 2394
    :goto_0
    return-object v0

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INTERFACE:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_1

    .line 2364
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/parser/JavacParser;->interfaceDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    goto :goto_0

    .line 2365
    :cond_1
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowEnums:Z

    if-eqz v0, :cond_4

    .line 2366
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_2

    .line 2367
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/parser/JavacParser;->enumDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    goto :goto_0

    .line 2369
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    .line 2371
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_3

    .line 2372
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2373
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    .line 2377
    :goto_1
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    const-string v3, "expected3"

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/sun/tools/javac/parser/Token;

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->CLASS:Lcom/sun/tools/javac/parser/Token;

    aput-object v5, v4, v7

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->INTERFACE:Lcom/sun/tools/javac/parser/Token;

    aput-object v5, v4, v6

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    aput-object v5, v4, v8

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILcom/sun/tools/javac/util/List;Ljava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    goto :goto_0

    .line 2375
    :cond_3
    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_1

    .line 2381
    :cond_4
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_5

    .line 2382
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "enums.not.supported.in.source"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2383
    iput-boolean v6, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowEnums:Z

    .line 2384
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/parser/JavacParser;->enumDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    goto/16 :goto_0

    .line 2386
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    .line 2388
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_6

    .line 2389
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2390
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    .line 2394
    :goto_2
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    const-string v3, "expected2"

    new-array v4, v8, [Lcom/sun/tools/javac/parser/Token;

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->CLASS:Lcom/sun/tools/javac/parser/Token;

    aput-object v5, v4, v7

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->INTERFACE:Lcom/sun/tools/javac/parser/Token;

    aput-object v5, v4, v6

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILcom/sun/tools/javac/util/List;Ljava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    goto/16 :goto_0

    .line 2392
    :cond_6
    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method creator(ILcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1395
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 1403
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->qualident()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 1404
    iget v8, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1405
    iput v10, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1406
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v5, :cond_3

    .line 1409
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkGenerics()V

    .line 1410
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v5

    .line 1411
    invoke-virtual {p0, v3, v2}, Lcom/sun/tools/javac/parser/JavacParser;->typeArguments(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v3

    .line 1412
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    move v7, v0

    .line 1414
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v9, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v9, :cond_5

    .line 1415
    if-eqz v7, :cond_1

    .line 1417
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 1420
    iget-object v9, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v9}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1421
    iget-object v9, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v9, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1422
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v9, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v9, :cond_b

    .line 1423
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v5

    .line 1424
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkGenerics()V

    .line 1425
    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->typeArguments(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v3

    .line 1426
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    move v7, v0

    goto :goto_1

    .line 1398
    :pswitch_0
    if-nez p2, :cond_0

    .line 1399
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->basicType()Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->arrayCreatorRest(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1456
    :goto_3
    return-object v0

    :cond_2
    move v0, v4

    .line 1412
    goto :goto_0

    :cond_3
    move v5, v6

    move v7, v4

    .line 1408
    goto :goto_1

    :cond_4
    move v0, v4

    .line 1426
    goto :goto_2

    .line 1429
    :cond_5
    iput v8, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1430
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v8, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v8, :cond_9

    .line 1431
    invoke-virtual {p0, p1, v3}, Lcom/sun/tools/javac/parser/JavacParser;->arrayCreatorRest(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1432
    if-eqz v7, :cond_6

    .line 1433
    const-string v0, "cannot.create.array.with.diamond"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v5, v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1434
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_3

    .line 1436
    :cond_6
    if-eqz p2, :cond_8

    .line 1438
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    if-eq v0, v6, :cond_7

    .line 1442
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos:I

    .line 1444
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->prevEndPos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    .line 1445
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p2, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    .line 1446
    const-string v1, "cannot.create.array.with.type.arguments"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->reportSyntaxError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1447
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_3

    :cond_8
    move-object v0, v1

    .line 1449
    goto :goto_3

    .line 1450
    :cond_9
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v5, :cond_a

    .line 1451
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->classCreatorRest(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    goto/16 :goto_3

    .line 1453
    :cond_a
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    .line 1454
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v5, "expected2"

    new-array v6, v10, [Ljava/lang/Object;

    sget-object v7, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    aput-object v7, v6, v4

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    aput-object v4, v6, v2

    invoke-direct {p0, v0, v5, v6}, Lcom/sun/tools/javac/parser/JavacParser;->reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1455
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    move-object v2, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/tree/TreeMaker;->NewClass(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1456
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto/16 :goto_3

    :cond_b
    move-object v3, v0

    goto/16 :goto_1

    .line 1395
    nop

    :pswitch_data_0
    .packed-switch 0x16
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

.method enumBody(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2480
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2481
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2482
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_2

    .line 2483
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2497
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_5

    .line 2498
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2499
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->EOF:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_5

    .line 2500
    invoke-virtual {p0, p1, v6}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceBodyDeclaration(Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2502
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    iget v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    if-gt v1, v2, :cond_1

    .line 2504
    invoke-direct {p0, v6, v7, v7, v6}, Lcom/sun/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    goto :goto_1

    .line 2484
    :cond_2
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_0

    .line 2485
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->enumeratorDeclaration(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2486
    :goto_2
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_3

    .line 2487
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2488
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_4

    .line 2491
    :cond_3
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_0

    .line 2492
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    const-string v2, "expected3"

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sun/tools/javac/parser/Token;

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    aput-object v4, v3, v7

    const/4 v4, 0x2

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2494
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    goto/16 :goto_0

    .line 2489
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->enumeratorDeclaration(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_2

    .line 2508
    :cond_5
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2509
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method enumDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .registers 15

    .line 2457
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 2458
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2459
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    .line 2461
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2462
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->IMPLEMENTS:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v3, :cond_0

    .line 2463
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2464
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeList()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2462
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->enumBody(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 2468
    iget-wide v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v10, 0x4000

    or-long/2addr v8, v10

    iput-wide v8, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    .line 2469
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    .line 2470
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    .line 2469
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 2472
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/parser/JavacParser;->attach(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/String;)V

    .line 2473
    return-object v0
.end method

.method enumeratorDeclaration(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 16

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 2515
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->docComment()Ljava/lang/String;

    move-result-object v9

    .line 2516
    const/16 v0, 0x4019

    .line 2517
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->deprecatedFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2518
    const v0, 0x24019

    .line 2519
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->resetDeprecatedFlag()V

    .line 2521
    :cond_0
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v6

    .line 2522
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->annotationsOpt()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 2523
    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    int-to-long v10, v0

    invoke-virtual {v2, v10, v11, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v10

    .line 2524
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgumentsOpt()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2525
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v8

    .line 2526
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v11

    .line 2527
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v7

    .line 2528
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v4, :cond_4

    .line 2529
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->arguments()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 2530
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v5, :cond_5

    .line 2532
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    const-wide/16 v12, 0x4008

    invoke-virtual {v0, v12, v13}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    .line 2533
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceBody(Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2534
    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->AnonymousClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-object v5, v0

    .line 2536
    :goto_2
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v5, :cond_1

    move v7, v8

    .line 2538
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    .line 2539
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/tree/TreeMaker;->NewClass(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    .line 2540
    if-eq v7, v8, :cond_2

    .line 2541
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->prevEndPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 2542
    :cond_2
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    .line 2543
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v10, v11, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 2544
    invoke-virtual {p0, v0, v9}, Lcom/sun/tools/javac/parser/JavacParser;->attach(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/String;)V

    .line 2545
    return-object v0

    :cond_3
    move v2, v6

    .line 2523
    goto/16 :goto_0

    .line 2529
    :cond_4
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    goto :goto_1

    :cond_5
    move-object v5, v1

    .line 2531
    goto :goto_2
.end method

.method varargs error(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 2817
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SYNTAX:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2818
    return-void
.end method

.method varargs error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 2821
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v1, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SYNTAX:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2822
    return-void
.end method

.method protected foldStrings(Lcom/sun/tools/javac/tree/JCTree;)Ljava/lang/StringBuffer;
    .registers 9

    const/4 v3, 0x0

    const/16 v6, 0x24

    const/16 v5, 0xa

    .line 785
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowStringFolding:Z

    if-nez v0, :cond_0

    move-object v0, v3

    .line 800
    :goto_0
    return-object v0

    .line 787
    :cond_0
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v0, p1

    move-object v2, v1

    .line 789
    :goto_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 790
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    .line 791
    iget v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->typetag:I

    if-ne v1, v5, :cond_3

    .line 792
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 794
    :goto_2
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 798
    goto :goto_0

    .line 800
    :cond_2
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v4, 0x47

    if-ne v1, v4, :cond_3

    move-object v1, v0

    .line 801
    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    .line 802
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 803
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    .line 804
    iget v4, v0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->typetag:I

    if-ne v4, v5, :cond_3

    .line 805
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 806
    iget-object v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 800
    goto :goto_0
.end method

.method forInit()Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCStatement;",
            ">;"
        }
    .end annotation

    .line 1958
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    .line 1959
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    .line 1960
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->FINAL:Lcom/sun/tools/javac/parser/Token;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->MONKEYS_AT:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v3, :cond_1

    .line 1961
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->optFinal(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclarators(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1968
    :goto_0
    return-object v0

    .line 1963
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->term(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 1964
    iget v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->lastmode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 1965
    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->ASSERT:Lcom/sun/tools/javac/parser/Token;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v4, :cond_3

    .line 1966
    :cond_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->modifiersOpt()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclarators(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    .line 1968
    :cond_3
    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/tools/javac/parser/JavacParser;->moreStatementExpressions(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method forUpdate()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;",
            ">;"
        }
    .end annotation

    .line 1975
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 1976
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1975
    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->moreStatementExpressions(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    .line 1977
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1975
    return-object v0
.end method

.method protected formalParameter()Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .registers 7

    .line 2803
    const-wide v0, 0x200000000L

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->optFinal(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    .line 2804
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 2805
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->ELLIPSIS:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v3, :cond_0

    .line 2806
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkVarargs()V

    .line 2807
    iget-wide v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v4, 0x400000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    .line 2808
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2809
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2811
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclaratorId(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method formalParameters()Lcom/sun/tools/javac/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    .line 2778
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2779
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2781
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    if-eq v0, v2, :cond_0

    .line 2782
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->formalParameter()Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2783
    :goto_0
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v4, 0x400000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2785
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->formalParameter()Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 2788
    :cond_0
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2789
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEndPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 427
    const/4 v0, -0x1

    return v0
.end method

.method protected getErrorEndPos()I
    .registers 2

    .line 385
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    return v0
.end method

.method public getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 415
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    return v0
.end method

.method ident()Lcom/sun/tools/javac/util/Name;
    .registers 4

    const/4 v2, 0x0

    .line 438
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->name()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 466
    :goto_0
    return-object v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ASSERT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_2

    .line 443
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowAsserts:Z

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "assert.as.identifier"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 446
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "assert.as.identifier"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->warning(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->name()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    goto :goto_0

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_4

    .line 454
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowEnums:Z

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "enum.as.identifier"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 457
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    goto :goto_0

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "enum.as.identifier"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->warning(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->name()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    goto :goto_0

    .line 465
    :cond_4
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 466
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->error:Lcom/sun/tools/javac/util/Name;

    goto/16 :goto_0
.end method

.method illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method illegal(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    const/4 v1, 0x0

    .line 332
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    .line 333
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "illegal.start.of.expr"

    new-array v1, v1, [Lcom/sun/tools/javac/parser/Token;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "illegal.start.of.type"

    new-array v1, v1, [Lcom/sun/tools/javac/parser/Token;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    goto :goto_0
.end method

.method importDeclaration()Lcom/sun/tools/javac/tree/JCTree;
    .registers 7

    .line 2317
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 2318
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2319
    const/4 v0, 0x0

    .line 2320
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->STATIC:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v3, :cond_0

    .line 2321
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkStaticImports()V

    .line 2322
    const/4 v0, 0x1

    .line 2323
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    :cond_0
    move v1, v0

    .line 2325
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2327
    :cond_1
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    .line 2328
    sget-object v4, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2329
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->STAR:Lcom/sun/tools/javac/parser/Token;

    if-ne v4, v5, :cond_2

    .line 2330
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->asterisk:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3, v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2331
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2337
    :goto_0
    sget-object v3, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2338
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Import(Lcom/sun/tools/javac/tree/JCTree;Z)Lcom/sun/tools/javac/tree/JCTree$JCImport;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0

    .line 2334
    :cond_2
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2336
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    if-eq v3, v4, :cond_1

    goto :goto_0
.end method

.method innerCreator(ILcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    .line 1463
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1464
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 1465
    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1466
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkGenerics()V

    .line 1467
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->typeArguments(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v0

    .line 1468
    iput v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1470
    :cond_0
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/sun/tools/javac/parser/JavacParser;->classCreatorRest(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    return-object v0
.end method

.method interfaceDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .registers 10

    .line 2434
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 2435
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->INTERFACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2436
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    .line 2438
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeParametersOpt()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2440
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2441
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->EXTENDS:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v4, :cond_0

    .line 2442
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2443
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeList()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 2441
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceBody(Lcom/sun/tools/javac/util/Name;Z)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 2446
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 2448
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/parser/JavacParser;->attach(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/String;)V

    .line 2449
    return-object v0
.end method

.method isZero(Ljava/lang/String;)Z
    .registers 9

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 586
    array-length v3, v4

    if-le v3, v2, :cond_1

    aget-char v3, v4, v2

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v5, 0x78

    if-ne v3, v5, :cond_1

    move v3, v0

    .line 587
    :goto_0
    if-ne v3, v0, :cond_2

    const/4 v0, 0x2

    .line 588
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-char v5, v4, v0

    const/16 v6, 0x30

    if-eq v5, v6, :cond_0

    aget-char v5, v4, v0

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    :cond_1
    const/16 v3, 0xa

    goto :goto_0

    :cond_2
    move v0, v1

    .line 587
    goto :goto_1

    .line 589
    :cond_3
    array-length v5, v4

    if-ge v0, v5, :cond_5

    aget-char v0, v4, v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-gtz v0, :cond_4

    move v1, v2

    :cond_4
    :goto_2
    return v1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method literal(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 484
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->literal(Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method literal(Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 11

    const/16 v5, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 500
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorTree:Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    .line 501
    sget-object v3, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 575
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    move-object v0, v2

    .line 577
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorTree:Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    if-ne v0, v1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous()Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->endPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 580
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 581
    return-object v0

    .line 570
    :pswitch_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto :goto_0

    .line 565
    :pswitch_1
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    .line 567
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->TRUE:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v4, :cond_1

    .line 565
    :goto_1
    const/16 v1, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 567
    goto :goto_1

    .line 560
    :pswitch_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 562
    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 560
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto :goto_0

    .line 555
    :pswitch_3
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 557
    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 555
    const/4 v2, 0x2

    add-int/lit8 v1, v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto :goto_0

    .line 538
    :pswitch_4
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->radix()I

    move-result v0

    if-ne v0, v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 541
    :goto_2
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 546
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/parser/JavacParser;->isZero(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 547
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v3, "fp.number.too.small"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3, v1}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    .line 542
    :catch_0
    move-exception v0

    .line 544
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_3

    .line 548
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v3, v4, v6

    if-nez v3, :cond_4

    .line 549
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v3, "fp.number.too.large"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3, v1}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 551
    :cond_4
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto/16 :goto_0

    .line 521
    :pswitch_5
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->radix()I

    move-result v0

    if-ne v0, v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 524
    :goto_4
    :try_start_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 529
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/parser/JavacParser;->isZero(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 530
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v3, "fp.number.too.small"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3, v1}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 521
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    .line 525
    :catch_1
    move-exception v0

    .line 527
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_5

    .line 531
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    .line 532
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v3, "fp.number.too.large"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3, v1}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 534
    :cond_7
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto/16 :goto_0

    .line 513
    :pswitch_6
    :try_start_2
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    new-instance v4, Ljava/lang/Long;

    .line 515
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->strval(Lcom/sun/tools/javac/util/Name;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v6}, Lcom/sun/tools/javac/parser/Lexer;->radix()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sun/tools/javac/util/Convert;->string2long(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 513
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_0

    .line 516
    :catch_2
    move-exception v3

    .line 517
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    const-string v4, "int.number.too.large"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->strval(Lcom/sun/tools/javac/util/Name;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {p0, v3, v4, v0}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 519
    goto/16 :goto_0

    .line 504
    :pswitch_7
    :try_start_3
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, p2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    .line 506
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->strval(Lcom/sun/tools/javac/util/Name;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->radix()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sun/tools/javac/util/Convert;->string2int(Ljava/lang/String;I)I

    move-result v4

    .line 504
    const/4 v5, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto/16 :goto_0

    .line 507
    :catch_3
    move-exception v3

    .line 508
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    const-string v4, "int.number.too.large"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->strval(Lcom/sun/tools/javac/util/Name;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {p0, v3, v4, v0}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 510
    goto/16 :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method methodDeclaratorRest(ILcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;ZZLjava/lang/String;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2686
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->formalParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 2687
    if-nez p7, :cond_1

    invoke-direct {p0, p3}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    .line 2688
    :goto_0
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 2689
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->THROWS:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 2690
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2691
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->qualidentList()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 2689
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_2

    .line 2696
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->block()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v8

    .line 2697
    const/4 v1, 0x0

    move-object v9, v1

    .line 2715
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2716
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v9}, Lcom/sun/tools/javac/tree/TreeMaker;->MethodDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 2719
    move-object/from16 v0, p8

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->attach(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/String;)V

    .line 2720
    return-object v1

    :cond_1
    move-object v4, p3

    .line 2687
    goto :goto_0

    .line 2699
    :cond_2
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->DEFAULT:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_3

    .line 2700
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->DEFAULT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2701
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->annotationValue()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 2705
    :goto_2
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2706
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    iget v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    if-gt v2, v3, :cond_4

    .line 2708
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v2, v3, v5, v8}, Lcom/sun/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    .line 2709
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v3, :cond_4

    .line 2710
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->block()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v8

    move-object v9, v1

    goto :goto_1

    .line 2703
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 2715
    :cond_4
    const/4 v8, 0x0

    move-object v9, v1

    goto :goto_1
.end method

.method modifiersOpt()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    .registers 2

    .line 1999
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->modifiersOpt(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    return-object v0
.end method

.method protected modifiersOpt(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    .registers 16

    const-wide/16 v10, 0x2000

    const/4 v5, -0x1

    const-wide/16 v2, 0x0

    .line 2003
    new-instance v12, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v12}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2005
    if-nez p1, :cond_3

    .line 2007
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v4

    move-wide v0, v2

    .line 2013
    :goto_0
    iget-object v6, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v6}, Lcom/sun/tools/javac/parser/Lexer;->deprecatedFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2014
    const-wide/32 v6, 0x20000

    or-long/2addr v0, v6

    .line 2015
    iget-object v6, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v6}, Lcom/sun/tools/javac/parser/Lexer;->resetDeprecatedFlag()V

    :cond_0
    move-wide v8, v0

    .line 2017
    :goto_1
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    const/16 v1, 0x56

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    .line 2035
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    .line 2062
    :goto_2
    const-wide/16 v0, 0x2dff

    and-long/2addr v0, v8

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {v12}, Lcom/sun/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v5

    .line 2065
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v12}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v8, v9, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(JLcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    .line 2066
    if-eq v4, v5, :cond_2

    .line 2067
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->prevEndPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 2068
    :cond_2
    return-object v0

    .line 2009
    :cond_3
    iget-wide v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    .line 2010
    iget-object v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v12, v4}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2011
    iget v4, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos:I

    goto :goto_0

    .line 2055
    :cond_4
    const-wide/16 v0, 0x4000

    or-long/2addr v8, v0

    goto :goto_2

    .line 2056
    :cond_5
    const-wide/16 v0, 0x200

    or-long/2addr v8, v0

    goto :goto_2

    .line 2032
    :pswitch_0
    const-wide/16 v0, 0x800

    .line 2037
    :goto_3
    and-long v6, v8, v0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v6}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v6

    const-string v7, "repeated.modifier"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v7, v13}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2038
    :cond_6
    iget-object v6, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v6}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v6

    .line 2039
    iget-object v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v7}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2040
    cmp-long v7, v0, v10

    if-nez v7, :cond_d

    .line 2041
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkAnnotations()V

    .line 2042
    iget-object v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v7}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v7

    sget-object v13, Lcom/sun/tools/javac/parser/Token;->INTERFACE:Lcom/sun/tools/javac/parser/Token;

    if-eq v7, v13, :cond_d

    .line 2043
    invoke-virtual {p0, v6}, Lcom/sun/tools/javac/parser/JavacParser;->annotation(I)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v1

    .line 2045
    cmp-long v0, v8, v2

    if-nez v0, :cond_c

    invoke-virtual {v12}, Lcom/sun/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2046
    iget v0, v1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos:I

    .line 2047
    :goto_4
    invoke-virtual {v12, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2048
    iget v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos:I

    move-wide v6, v2

    move v4, v0

    .line 2052
    :goto_5
    or-long v0, v8, v6

    move-wide v8, v0

    .line 2053
    goto/16 :goto_1

    .line 2031
    :pswitch_1
    const-wide/16 v0, 0x20

    goto :goto_3

    .line 2030
    :pswitch_2
    const-wide/16 v0, 0x40

    goto :goto_3

    .line 2029
    :pswitch_3
    const-wide/16 v0, 0x100

    goto :goto_3

    .line 2026
    :pswitch_4
    const-wide/16 v0, 0x80

    goto :goto_3

    .line 2025
    :pswitch_5
    const-wide/16 v0, 0x8

    goto :goto_3

    .line 2023
    :pswitch_6
    const-wide/16 v0, 0x4

    goto :goto_3

    .line 2022
    :pswitch_7
    const-wide/16 v0, 0x2

    goto :goto_3

    .line 2034
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    move-wide v0, v2

    goto :goto_3

    :cond_8
    move-wide v0, v10

    .line 2033
    goto :goto_3

    .line 2028
    :cond_9
    const-wide/16 v0, 0x400

    goto :goto_3

    .line 2027
    :cond_a
    const-wide/16 v0, 0x10

    goto :goto_3

    .line 2024
    :cond_b
    const-wide/16 v0, 0x1

    goto :goto_3

    :cond_c
    move v0, v4

    goto :goto_4

    :cond_d
    move-wide v6, v0

    goto :goto_5

    .line 2017
    nop

    :pswitch_data_0
    .packed-switch 0xd
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

.method moreStatementExpressions(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<-",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;",
            ">;>(I",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "TT;)TT;"
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/parser/JavacParser;->checkExprStat(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1944
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1946
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 1947
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1949
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->checkExprStat(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 1951
    :cond_0
    return-object p3
.end method

.method optFinal(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    .registers 10

    .line 2793
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->modifiersOpt()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    .line 2794
    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/32 v4, -0x20011

    and-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->checkNoMods(J)V

    .line 2795
    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    or-long/2addr v2, p1

    iput-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    .line 2796
    return-object v0
.end method

.method parExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 1551
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1552
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1553
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1554
    return-object v0
.end method

.method public parseCompilationUnit()Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .registers 12

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 2259
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v8

    .line 2261
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->docComment()Ljava/lang/String;

    move-result-object v5

    .line 2263
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2264
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->MONKEYS_AT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v3, :cond_b

    .line 2265
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->modifiersOpt()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    .line 2267
    :goto_0
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->PACKAGE:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v4, :cond_a

    .line 2268
    if-eqz v0, :cond_9

    .line 2269
    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->checkNoMods(J)V

    .line 2270
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    move-object v3, v1

    .line 2273
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2274
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->qualident()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 2275
    sget-object v4, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    move-object v4, v0

    .line 2277
    :goto_2
    new-instance v9, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v9}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2278
    const/4 v6, 0x1

    move-object v0, v3

    .line 2279
    :goto_3
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v10, Lcom/sun/tools/javac/parser/Token;->EOF:Lcom/sun/tools/javac/parser/Token;

    if-eq v3, v10, :cond_0

    .line 2280
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    iget v10, p0, Lcom/sun/tools/javac/parser/JavacParser;->errorEndPos:I

    if-gt v3, v10, :cond_4

    .line 2282
    invoke-direct {p0, v6, v7, v7, v7}, Lcom/sun/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    .line 2283
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v10, Lcom/sun/tools/javac/parser/Token;->EOF:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v10, :cond_4

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v8}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v9}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v4, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TopLevel(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    .line 2304
    invoke-virtual {p0, v0, v5}, Lcom/sun/tools/javac/parser/JavacParser;->attach(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/String;)V

    .line 2305
    iget-object v1, v9, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2306
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->prevEndPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 2307
    :cond_1
    iget-boolean v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->keepDocComments:Z

    if-eqz v1, :cond_2

    .line 2308
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->docComments:Ljava/util/Map;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Ljava/util/Map;

    .line 2309
    :cond_2
    iget-boolean v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->keepLineMap:Z

    if-eqz v1, :cond_3

    .line 2310
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->getLineMap()Lcom/sun/tools/javac/util/Position$LineMap;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    .line 2311
    :cond_3
    return-object v0

    .line 2286
    :cond_4
    if-eqz v6, :cond_5

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v10, Lcom/sun/tools/javac/parser/Token;->IMPORT:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v10, :cond_5

    .line 2287
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->importDeclaration()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_3

    .line 2289
    :cond_5
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->typeDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 2290
    iget-boolean v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->keepDocComments:Z

    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->docComments:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_8

    move-object v3, v1

    .line 2295
    :goto_4
    instance-of v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    if-eqz v5, :cond_6

    .line 2296
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 2297
    :cond_6
    invoke-virtual {v9, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2298
    instance-of v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_7

    move v6, v7

    :cond_7
    move-object v5, v3

    move-object v0, v1

    .line 2301
    goto/16 :goto_3

    :cond_8
    move-object v3, v5

    goto :goto_4

    :cond_9
    move-object v3, v0

    goto/16 :goto_1

    :cond_a
    move-object v4, v1

    move-object v3, v0

    goto/16 :goto_2

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 600
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->term(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 9

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1703
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    .line 1704
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v4, :cond_15

    const/16 v2, 0xb

    if-eq v0, v2, :cond_14

    const/16 v2, 0x13

    if-eq v0, v2, :cond_13

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_10

    packed-switch v0, :pswitch_data_0

    .line 1854
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->name()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 1855
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1856
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->COLON:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v4, :cond_12

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v2

    const/16 v4, 0x23

    if-ne v2, v4, :cond_12

    .line 1857
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1858
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1859
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Labelled(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;

    move-result-object v0

    .line 1864
    :goto_0
    return-object v0

    .line 1836
    :pswitch_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    const-string v1, "catch.without.try"

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    goto :goto_0

    .line 1834
    :pswitch_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    const-string v1, "finally.without.try"

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    goto :goto_0

    .line 1832
    :pswitch_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    const-string v1, "else.without.if"

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    goto :goto_0

    .line 1822
    :pswitch_3
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1823
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->ASSERT:Lcom/sun/tools/javac/parser/Token;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_16

    :cond_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 1824
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Continue(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCContinue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCContinue;

    .line 1825
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto :goto_0

    .line 1815
    :pswitch_4
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1816
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->ASSERT:Lcom/sun/tools/javac/parser/Token;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->ENUM:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 1817
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Break(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCBreak;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBreak;

    .line 1818
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_0

    .line 1808
    :pswitch_5
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1809
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1810
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Throw(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCThrow;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCThrow;

    .line 1811
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_0

    .line 1801
    :pswitch_6
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1802
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_4

    .line 1803
    :goto_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Return(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCReturn;

    .line 1804
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_0

    .line 1802
    :cond_4
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    goto :goto_2

    .line 1786
    :pswitch_7
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1787
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1788
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1789
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->switchBlockStatementGroups()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1790
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Switch(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCSwitch;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;

    .line 1791
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_0

    .line 1759
    :pswitch_8
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1760
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1761
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v4, :cond_5

    .line 1762
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkTryWithResources()V

    .line 1763
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1764
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->resources()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1765
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1767
    :cond_5
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->block()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    .line 1768
    new-instance v4, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1770
    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->CATCH:Lcom/sun/tools/javac/parser/Token;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->FINALLY:Lcom/sun/tools/javac/parser/Token;

    if-ne v5, v6, :cond_7

    .line 1771
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->CATCH:Lcom/sun/tools/javac/parser/Token;

    if-ne v5, v6, :cond_a

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->catchClause()Lcom/sun/tools/javac/tree/JCTree$JCCatch;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_3

    .line 1777
    :cond_7
    iget-boolean v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowTWR:Z

    if-eqz v5, :cond_9

    .line 1778
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1779
    const-string v5, "try.without.catch.finally.or.resource.decls"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v5, v6}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1783
    :cond_8
    :goto_4
    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Try(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCTry;

    move-result-object v0

    goto/16 :goto_0

    .line 1781
    :cond_9
    const-string v5, "try.without.catch.or.finally"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v5, v6}, Lcom/sun/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1772
    :cond_a
    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->FINALLY:Lcom/sun/tools/javac/parser/Token;

    if-ne v5, v6, :cond_8

    .line 1773
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1774
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->block()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    goto :goto_4

    .line 1750
    :pswitch_9
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1751
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    .line 1752
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->WHILE:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1753
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1754
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->DoLoop(Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;

    .line 1755
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_0

    .line 1744
    :pswitch_a
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1745
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1746
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v1

    .line 1747
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->WhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;

    move-result-object v0

    goto/16 :goto_0

    .line 1719
    :pswitch_b
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1720
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1721
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_b

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v2, v0

    .line 1722
    :goto_5
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    if-ne v0, v4, :cond_c

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 1723
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->getTag()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_c

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 1725
    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->COLON:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v4, :cond_c

    .line 1726
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkForeach()V

    .line 1727
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 1728
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->COLON:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1729
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1730
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1731
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    .line 1732
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->ForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;

    move-result-object v0

    goto/16 :goto_0

    .line 1721
    :cond_b
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->forInit()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_5

    .line 1734
    :cond_c
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1735
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v4, :cond_d

    .line 1736
    :goto_6
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1737
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v4, :cond_e

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1738
    :goto_7
    sget-object v4, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1739
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v4

    .line 1740
    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->ForLoop(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCForLoop;

    move-result-object v0

    goto/16 :goto_0

    .line 1735
    :cond_d
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    goto :goto_6

    .line 1737
    :cond_e
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->forUpdate()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_7

    .line 1708
    :pswitch_c
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1709
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1710
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    .line 1712
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->ELSE:Lcom/sun/tools/javac/parser/Token;

    if-ne v4, v5, :cond_f

    .line 1713
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1714
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v1

    .line 1716
    :cond_f
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->If(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCStatement;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)Lcom/sun/tools/javac/tree/JCTree$JCIf;

    move-result-object v0

    goto/16 :goto_0

    .line 1838
    :cond_10
    iget-boolean v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->allowAsserts:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->ASSERT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1840
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1842
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->COLON:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v4, :cond_11

    .line 1843
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1844
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1846
    :cond_11
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Assert(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAssert;

    .line 1847
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_0

    .line 1862
    :cond_12
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->checkExprStat(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Exec(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 1863
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_0

    .line 1795
    :cond_13
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1796
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1797
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->block()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    .line 1798
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Synchronized(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCBlock;)Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;

    move-result-object v0

    goto/16 :goto_0

    .line 1706
    :cond_14
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->block()Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    goto/16 :goto_0

    .line 1829
    :cond_15
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1830
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Skip()Lcom/sun/tools/javac/tree/JCTree$JCSkip;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    goto/16 :goto_0

    .line 1858
    :catchall_0
    move-exception v0

    throw v0

    :cond_16
    move-object v0, v1

    goto/16 :goto_1

    .line 1704
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 2

    .line 604
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->term(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public qualident()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 474
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 475
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 476
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    .line 477
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 478
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    .line 480
    :cond_0
    return-object v0
.end method

.method qualidentList()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 2726
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2727
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->qualident()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2728
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 2729
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2730
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->qualident()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 2732
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected resource()Lcom/sun/tools/javac/tree/JCTree;
    .registers 8

    .line 2249
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->optFinal(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    .line 2250
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 2251
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    .line 2252
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 2253
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclaratorRest(ILcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;ZLjava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method resources()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .line 2230
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2231
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->resource()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2232
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_0

    .line 2234
    iget-object v0, v1, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->endPos()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 2235
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    .line 2236
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2237
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_1

    .line 2243
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0

    .line 2241
    :cond_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->resource()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0
.end method

.method protected storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V
    .registers 3

    .line 393
    return-void
.end method

.method strval(Lcom/sun/tools/javac/util/Name;)Ljava/lang/String;
    .registers 4

    .line 593
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method superSuffix(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1171
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LPAREN:Lcom/sun/tools/javac/parser/Token;

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    .line 1172
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/parser/JavacParser;->arguments(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    .line 1180
    :goto_0
    return-object v0

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 1175
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1176
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArguments(Z)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1177
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1178
    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->argumentsOpt(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    .line 1176
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1
.end method

.method switchBlockStatementGroups()Lcom/sun/tools/javac/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCCase;",
            ">;"
        }
    .end annotation

    .line 1902
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1904
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    .line 1905
    sget-object v2, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    const/16 v3, 0x21

    if-eq v2, v3, :cond_0

    .line 1930
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1931
    const-string v2, "expected3"

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sun/tools/javac/parser/Token;

    const/4 v4, 0x0

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->CASE:Lcom/sun/tools/javac/parser/Token;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->DEFAULT:Lcom/sun/tools/javac/parser/Token;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->RBRACE:Lcom/sun/tools/javac/parser/Token;

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    goto :goto_0

    .line 1918
    :cond_0
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1919
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COLON:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1920
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->blockStatements()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1921
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Case(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCase;

    move-result-object v1

    .line 1922
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1923
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->prevEndPos()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1924
    :cond_1
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 1907
    :cond_2
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1908
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 1909
    sget-object v3, Lcom/sun/tools/javac/parser/Token;->COLON:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 1910
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->blockStatements()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 1911
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Case(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCCase;

    move-result-object v1

    .line 1912
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1913
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->prevEndPos()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1914
    :cond_3
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto/16 :goto_0

    .line 1928
    :cond_4
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method term()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 628
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term1()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 629
    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 630
    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->EQ:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_1

    :cond_0
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->PLUSEQ:Lcom/sun/tools/javac/parser/Token;

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/parser/Token;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->GTGTGTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/parser/Token;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 631
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->termRest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 633
    :cond_2
    return-object v0
.end method

.method term(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 5

    .line 608
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 609
    iput p1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 610
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 611
    iget v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    iput v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->lastmode:I

    .line 612
    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 613
    return-object v1
.end method

.method term1()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 672
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term2()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 673
    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->QUES:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 674
    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 675
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->term1Rest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 677
    :cond_0
    return-object v0
.end method

.method term1Rest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 6

    .line 684
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->QUES:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    .line 685
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 687
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 688
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COLON:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 689
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term1()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 690
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Conditional(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCConditional;

    move-result-object p1

    .line 692
    :cond_0
    return-object p1
.end method

.method term2()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    const/4 v2, 0x4

    .line 701
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term3()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 702
    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/tools/javac/parser/JavacParser;->prec(Lcom/sun/tools/javac/parser/Token;)I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 703
    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 704
    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->term2Rest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 706
    :cond_0
    return-object v0
.end method

.method term2Rest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 16

    .line 724
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->odStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v4, v0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 725
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/JavacParser;->newOdStack()[Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    .line 726
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->opStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v6, v0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 727
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/JavacParser;->newOpStack()[Lcom/sun/tools/javac/parser/Token;

    move-result-object v7

    .line 728
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->posStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v8, v0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 729
    invoke-direct {p0}, Lcom/sun/tools/javac/parser/JavacParser;->newPosStack()[I

    move-result-object v9

    .line 731
    const/4 v1, 0x0

    .line 732
    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 733
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v10

    .line 734
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->ERROR:Lcom/sun/tools/javac/parser/Token;

    .line 735
    const/4 v2, -0x1

    .line 736
    :cond_0
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/parser/JavacParser;->prec(Lcom/sun/tools/javac/parser/Token;)I

    move-result v3

    if-lt v3, p2, :cond_2

    .line 737
    aput v2, v9, v1

    .line 738
    aput-object v0, v7, v1

    .line 739
    add-int/lit8 v1, v1, 0x1

    .line 740
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    .line 741
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 742
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 743
    sget-object v0, Lcom/sun/tools/javac/parser/Token;->INSTANCEOF:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v1

    move-object v0, v3

    .line 744
    :goto_1
    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/sun/tools/javac/parser/JavacParser;->prec(Lcom/sun/tools/javac/parser/Token;)I

    move-result v3

    iget-object v11, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v11}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v11

    invoke-static {v11}, Lcom/sun/tools/javac/parser/JavacParser;->prec(Lcom/sun/tools/javac/parser/Token;)I

    move-result v11

    if-lt v3, v11, :cond_0

    .line 745
    add-int/lit8 v3, v1, -0x1

    add-int/lit8 v11, v1, -0x1

    aget-object v11, v5, v11

    aget-object v12, v5, v1

    invoke-direct {p0, v2, v0, v11, v12}, Lcom/sun/tools/javac/parser/JavacParser;->makeOp(ILcom/sun/tools/javac/parser/Token;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    aput-object v0, v5, v3

    .line 747
    add-int/lit8 v1, v1, -0x1

    .line 748
    aget-object v0, v7, v1

    .line 749
    aget v2, v9, v1

    goto :goto_1

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term3()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    .line 752
    :cond_2
    if-nez v1, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 753
    const/4 v0, 0x0

    aget-object v0, v5, v0

    .line 755
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v1

    const/16 v2, 0x47

    if-ne v1, v2, :cond_3

    .line 756
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->foldStrings(Lcom/sun/tools/javac/tree/JCTree;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 757
    if-eqz v1, :cond_3

    .line 758
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v10}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(ILjava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 755
    :cond_3
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->odStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iput-object v4, v1, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 763
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->opStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iput-object v6, v1, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 764
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->posStackSupply:Lcom/sun/tools/javac/util/ListBuffer;

    iput-object v8, v1, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    .line 765
    return-object v0

    .line 752
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected term3()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 12

    const/4 v10, 0x0

    const/16 v9, 0x9

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 874
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    .line 876
    invoke-virtual {p0, v7}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgumentsOpt(I)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 877
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v9, :cond_19

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 1108
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1164
    :goto_0
    return-object v0

    .line 879
    :pswitch_0
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 880
    iput v8, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 881
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgument()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    .line 883
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    .line 997
    :pswitch_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    .line 998
    :cond_1
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 999
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1000
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1001
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v4, :cond_34

    invoke-virtual {p0, v10}, Lcom/sun/tools/javac/parser/JavacParser;->typeArguments(Z)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1002
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/parser/JavacParser;->creator(ILcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    move-object v1, v2

    .line 1081
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1112
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 1113
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v3, :cond_2b

    .line 1114
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1115
    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_29

    .line 1116
    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1117
    iput v8, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1118
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v4, :cond_28

    .line 1119
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1120
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto/16 :goto_0

    .line 1004
    :cond_3
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 981
    :pswitch_2
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 982
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 983
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 984
    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->superSuffix(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    move-object v1, v2

    .line 985
    goto :goto_2

    .line 986
    :cond_4
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 969
    :pswitch_3
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 970
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 971
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 972
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 973
    if-nez v1, :cond_5

    .line 974
    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/parser/JavacParser;->argumentsOpt(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_4
    move-object v1, v2

    .line 977
    goto/16 :goto_2

    .line 976
    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->arguments(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    goto :goto_4

    .line 978
    :cond_6
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 901
    :pswitch_4
    if-nez v1, :cond_10

    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 902
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 903
    const/4 v0, 0x7

    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 904
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term3()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 905
    iget v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v4, :cond_c

    .line 907
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 909
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 910
    iget v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 911
    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 912
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term3()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    .line 913
    iget v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 914
    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->GT:Lcom/sun/tools/javac/parser/Token;

    if-ne v5, v6, :cond_a

    .line 915
    :cond_7
    iput v8, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 916
    new-instance v5, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 917
    invoke-virtual {v5, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 918
    :goto_5
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v4, v6, :cond_8

    .line 919
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 920
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgument()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_5

    .line 922
    :cond_8
    sget-object v4, Lcom/sun/tools/javac/parser/Token;->GT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 923
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeApply(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 924
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkGenerics()V

    .line 925
    :goto_6
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v4, :cond_9

    .line 926
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 927
    iput v8, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 928
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 929
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgumentsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_6

    .line 931
    :cond_9
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 944
    :goto_7
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RPAREN:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 945
    iget v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    iput v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->lastmode:I

    .line 946
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 947
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_d

    .line 948
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term3()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 949
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    goto/16 :goto_0

    .line 932
    :cond_a
    iget v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    .line 933
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 934
    const/16 v5, 0xb

    invoke-virtual {p0, v4, v5}, Lcom/sun/tools/javac/parser/JavacParser;->term2Rest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    .line 935
    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    const/16 v5, 0x40

    invoke-virtual {v2, v5, v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Binary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    .line 936
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->term2Rest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->term1Rest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->termRest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_7

    .line 938
    :cond_b
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->GT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto :goto_7

    .line 942
    :cond_c
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->term2Rest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->term1Rest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->termRest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_7

    .line 950
    :cond_d
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_e

    .line 951
    sget-object v2, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v9, :cond_f

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    .line 966
    :cond_e
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Parens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCParens;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto/16 :goto_2

    .line 961
    :cond_f
    :pswitch_5
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term3()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 962
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    goto/16 :goto_0

    .line 965
    :cond_10
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 885
    :pswitch_6
    if-nez v1, :cond_13

    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    .line 886
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    .line 887
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 888
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 889
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SUB:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_12

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 890
    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->INTLITERAL:Lcom/sun/tools/javac/parser/Token;

    if-eq v2, v4, :cond_11

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->LONGLITERAL:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v4, :cond_12

    :cond_11
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 891
    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->radix()I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_12

    .line 892
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 893
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->hyphen:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/parser/JavacParser;->literal(Lcom/sun/tools/javac/util/Name;I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_2

    .line 895
    :cond_12
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term3()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 896
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-static {v0}, Lcom/sun/tools/javac/parser/JavacParser;->unoptag(Lcom/sun/tools/javac/parser/Token;)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Unary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    move-result-object v0

    goto/16 :goto_0

    .line 898
    :cond_13
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 991
    :pswitch_7
    if-nez v1, :cond_14

    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    .line 992
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 993
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->literal(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_2

    .line 994
    :cond_14
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 1088
    :pswitch_8
    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1089
    :cond_15
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    .line 1090
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1091
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_16

    .line 1092
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(I)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    .line 1093
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsSuffix(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_2

    .line 1095
    :cond_16
    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/parser/JavacParser;->illegal(I)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 1101
    :cond_17
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeIdent(I)Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    .line 1102
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    goto/16 :goto_0

    .line 1084
    :pswitch_9
    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1085
    :cond_18
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->basicType()Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsSuffix(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_2

    .line 1007
    :cond_19
    :pswitch_a
    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 1008
    :cond_1a
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1010
    :goto_8
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    .line 1011
    sget-object v4, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x46

    if-eq v4, v5, :cond_27

    const/16 v5, 0x4b

    if-eq v4, v5, :cond_24

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_1d

    .line 1079
    :cond_1b
    :goto_9
    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1080
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgumentsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_2

    .line 1036
    :cond_1d
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1037
    iget v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1038
    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1039
    invoke-virtual {p0, v7}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgumentsOpt(I)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1040
    iput v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1041
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1e

    .line 1042
    sget-object v4, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v5, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x7

    if-eq v4, v5, :cond_22

    packed-switch v4, :pswitch_data_7

    .line 1073
    :cond_1e
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_8

    .line 1062
    :pswitch_b
    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 1063
    :cond_1f
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1064
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    .line 1065
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1066
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v4}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v4

    sget-object v5, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v4, v5, :cond_20

    invoke-virtual {p0, v10}, Lcom/sun/tools/javac/parser/JavacParser;->typeArguments(Z)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1067
    :cond_20
    invoke-virtual {p0, v3, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->innerCreator(ILcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    move-object v1, v2

    .line 1069
    goto :goto_9

    .line 1056
    :pswitch_c
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1057
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3, v0, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1058
    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->superSuffix(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    move-object v1, v2

    .line 1060
    goto/16 :goto_9

    .line 1050
    :pswitch_d
    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 1051
    :cond_21
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1052
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->_this:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1053
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    goto/16 :goto_9

    .line 1044
    :cond_22
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 1045
    :cond_23
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1046
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->_class:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1047
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    goto/16 :goto_9

    .line 1013
    :cond_24
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1014
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v4, :cond_25

    .line 1015
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1016
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1017
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1018
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsSuffix(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_9

    .line 1020
    :cond_25
    iget v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_26

    .line 1021
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1022
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 1023
    iget-object v4, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Indexed(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1025
    :cond_26
    sget-object v2, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_9

    .line 1029
    :cond_27
    iget v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1b

    .line 1030
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1031
    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->arguments(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    move-object v1, v2

    .line 1032
    goto/16 :goto_9

    .line 1124
    :cond_28
    iput v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1126
    :cond_29
    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    .line 1127
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1128
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1129
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Indexed(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1131
    :cond_2a
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->RBRACKET:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    goto/16 :goto_3

    .line 1132
    :cond_2b
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->DOT:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v3, :cond_30

    .line 1133
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1134
    invoke-virtual {p0, v7}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgumentsOpt(I)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1135
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->SUPER:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v4, :cond_2c

    iget v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2c

    .line 1136
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1137
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->_super:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1138
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1139
    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->arguments(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    goto/16 :goto_3

    .line 1141
    :cond_2c
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->NEW:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v4, :cond_2f

    iget v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2f

    .line 1142
    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_0

    .line 1143
    :cond_2d
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1144
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 1145
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1146
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v4, :cond_2e

    invoke-virtual {p0, v10}, Lcom/sun/tools/javac/parser/JavacParser;->typeArguments(Z)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1147
    :cond_2e
    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->innerCreator(ILcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_3

    .line 1150
    :cond_2f
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1151
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgumentsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->argumentsOpt(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_3

    .line 1158
    :cond_30
    :goto_a
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->PLUSPLUS:Lcom/sun/tools/javac/parser/Token;

    if-eq v1, v2, :cond_31

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SUBSUB:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_33

    :cond_31
    iget v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    .line 1159
    iput v7, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1160
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    .line 1161
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->PLUSPLUS:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v3, :cond_32

    const/16 v1, 0x36

    .line 1160
    :goto_b
    invoke-virtual {v2, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Unary(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCUnary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1162
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    goto :goto_a

    .line 1161
    :cond_32
    const/16 v1, 0x37

    goto :goto_b

    .line 1164
    :cond_33
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto/16 :goto_0

    .line 895
    :catchall_0
    move-exception v0

    throw v0

    :cond_34
    move-object v0, v1

    goto/16 :goto_1

    .line 877
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x44
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4d
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 951
    :pswitch_data_4
    .packed-switch 0x16
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2f
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x44
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 1042
    :pswitch_data_7
    .packed-switch 0x47
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method termRest(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 6

    const/4 v3, 0x1

    .line 637
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 663
    :goto_0
    return-object p1

    .line 656
    :pswitch_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 657
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    .line 658
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 659
    iput v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 660
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 661
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {v1}, Lcom/sun/tools/javac/parser/JavacParser;->optag(Lcom/sun/tools/javac/parser/Token;)I

    move-result v1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Assignop(ILcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object p1

    goto :goto_0

    .line 639
    :pswitch_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 640
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 641
    iput v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 642
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->term()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 643
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object p1, v0

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

.method protected to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 400
    return-object p1
.end method

.method protected toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 407
    return-object p1
.end method

.method typeArgument()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 6

    const/4 v3, 0x0

    .line 1311
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->QUES:Lcom/sun/tools/javac/parser/Token;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 1334
    :goto_0
    return-object v0

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    .line 1313
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1314
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->EXTENDS:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    .line 1316
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1317
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1318
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v0

    goto :goto_0

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->SUPER:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->SUPER:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    .line 1321
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1322
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1323
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v0

    goto :goto_0

    .line 1324
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_3

    .line 1326
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v0

    .line 1327
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1328
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    .line 1329
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    .line 1330
    const-string v1, "expected3"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->GT:Lcom/sun/tools/javac/parser/Token;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->EXTENDS:Lcom/sun/tools/javac/parser/Token;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->SUPER:Lcom/sun/tools/javac/parser/Token;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->reportSyntaxError(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1333
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeBoundKind(Lcom/sun/tools/javac/code/BoundKind;)Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    .line 1334
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Wildcard(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto/16 :goto_0
.end method

.method typeArguments(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;
    .registers 6

    .line 1339
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 1340
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/parser/JavacParser;->typeArguments(Z)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1341
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeApply(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    return-object v0
.end method

.method typeArguments(Z)Lcom/sun/tools/javac/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1261
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_6

    .line 1262
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1263
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 1264
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkDiamond()V

    .line 1265
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1266
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1267
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1301
    :goto_0
    return-object v0

    .line 1269
    :cond_0
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    .line 1270
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgument()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1271
    :goto_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v2, :cond_3

    .line 1272
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 1273
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgument()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_2

    .line 1270
    :cond_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_1

    .line 1273
    :cond_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_3

    .line 1275
    :cond_3
    sget-object v0, Lcom/sun/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Token:[I

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/16 v2, 0x42

    if-eq v0, v2, :cond_5

    const/16 v2, 0x43

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 1295
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v2, "expected"

    new-array v3, v3, [Lcom/sun/tools/javac/parser/Token;

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->GT:Lcom/sun/tools/javac/parser/Token;

    aput-object v4, v3, v5

    invoke-direct {p0, v0, v2, v3}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1281
    :goto_4
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    .line 1292
    :pswitch_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    goto :goto_4

    .line 1289
    :pswitch_1
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->GT:Lcom/sun/tools/javac/parser/Token;

    invoke-interface {v0, v2}, Lcom/sun/tools/javac/parser/Lexer;->token(Lcom/sun/tools/javac/parser/Token;)V

    goto :goto_4

    .line 1286
    :pswitch_2
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->GTGT:Lcom/sun/tools/javac/parser/Token;

    invoke-interface {v0, v2}, Lcom/sun/tools/javac/parser/Lexer;->token(Lcom/sun/tools/javac/parser/Token;)V

    goto :goto_4

    .line 1283
    :pswitch_3
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->EQ:Lcom/sun/tools/javac/parser/Token;

    invoke-interface {v0, v2}, Lcom/sun/tools/javac/parser/Lexer;->token(Lcom/sun/tools/javac/parser/Token;)V

    goto :goto_4

    .line 1277
    :cond_4
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->GTGTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-interface {v0, v2}, Lcom/sun/tools/javac/parser/Lexer;->token(Lcom/sun/tools/javac/parser/Token;)V

    goto :goto_4

    .line 1280
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->GTEQ:Lcom/sun/tools/javac/parser/Token;

    invoke-interface {v0, v2}, Lcom/sun/tools/javac/parser/Lexer;->token(Lcom/sun/tools/javac/parser/Token;)V

    goto :goto_4

    .line 1301
    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const-string v1, "expected"

    new-array v2, v3, [Lcom/sun/tools/javac/parser/Token;

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 1275
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method typeArgumentsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 1231
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 1234
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1235
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkGenerics()V

    .line 1236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArguments(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object p1

    .line 1238
    :cond_0
    return-object p1
.end method

.method typeArgumentsOpt()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 1242
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArgumentsOpt(I)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method typeArgumentsOpt(I)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 1246
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_2

    .line 1247
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkGenerics()V

    .line 1248
    iget v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1250
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->illegal()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1252
    :cond_1
    iput p1, p0, Lcom/sun/tools/javac/parser/JavacParser;->mode:I

    .line 1253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->typeArguments(Z)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1255
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method typeDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 5

    .line 2345
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 2346
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->SEMI:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 2347
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2348
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Skip()Lcom/sun/tools/javac/tree/JCTree$JCSkip;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 2351
    :goto_0
    return-object v0

    .line 2350
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->docComment()Ljava/lang/String;

    move-result-object v0

    .line 2351
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/parser/JavacParser;->modifiersOpt(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Ljava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    goto :goto_0
.end method

.method typeList()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 2551
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2552
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2553
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 2554
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2555
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 2557
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method typeParameter()Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;
    .registers 6

    .line 2759
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 2760
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 2761
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2762
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->EXTENDS:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v4, :cond_0

    .line 2763
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2764
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2765
    :goto_0
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v3

    sget-object v4, Lcom/sun/tools/javac/parser/Token;->AMP:Lcom/sun/tools/javac/parser/Token;

    if-ne v3, v4, :cond_0

    .line 2766
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2767
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 2770
    :cond_0
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeParameter(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    return-object v0
.end method

.method typeParametersOpt()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;"
        }
    .end annotation

    .line 2738
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LT:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_1

    .line 2739
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->checkGenerics()V

    .line 2740
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2741
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2742
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeParameter()Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2743
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v1, v2, :cond_0

    .line 2744
    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2745
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->typeParameter()Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 2747
    :cond_0
    sget-object v1, Lcom/sun/tools/javac/parser/Token;->GT:Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->accept(Lcom/sun/tools/javac/parser/Token;)V

    .line 2748
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2750
    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method variableDeclarator(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;ZLjava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .registers 12

    .line 2190
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclaratorRest(ILcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;ZLjava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method variableDeclaratorId(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .registers 9

    .line 2217
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 2218
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 2219
    iget-wide v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v4, 0x400000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 2220
    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->LBRACKET:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v3, :cond_0

    .line 2221
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v3

    const-string v4, "varargs.and.old.array.syntax"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/tools/javac/util/Log;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2223
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 2224
    iget-object v3, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    return-object v0
.end method

.method variableDeclaratorRest(ILcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;ZLjava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .registers 14

    .line 2201
    invoke-direct {p0, p3}, Lcom/sun/tools/javac/parser/JavacParser;->bracketsOpt(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 2202
    const/4 v0, 0x0

    .line 2203
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->EQ:Lcom/sun/tools/javac/parser/Token;

    if-ne v2, v3, :cond_1

    .line 2204
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2205
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->variableInitializer()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 2208
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 2209
    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, p2, p4, v1, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/JavacParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 2210
    invoke-virtual {p0, v0, p6}, Lcom/sun/tools/javac/parser/JavacParser;->attach(Lcom/sun/tools/javac/tree/JCTree;Ljava/lang/String;)V

    .line 2211
    return-object v0

    .line 2207
    :cond_1
    if-eqz p5, :cond_0

    iget-object v2, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v2

    const-string v3, "expected"

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/sun/tools/javac/parser/Token;

    const/4 v5, 0x0

    sget-object v6, Lcom/sun/tools/javac/parser/Token;->EQ:Lcom/sun/tools/javac/parser/Token;

    aput-object v6, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/sun/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lcom/sun/tools/javac/parser/Token;)Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    goto :goto_0
.end method

.method public variableDeclarators(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<-",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;>(",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "TT;)TT;"
        }
    .end annotation

    .line 2159
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->ident()Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclaratorsRest(ILcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;ZLjava/lang/String;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method variableDeclaratorsRest(ILcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;ZLjava/lang/String;Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<-",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;>(I",
            "Lcom/sun/tools/javac/tree/JCTree$JCModifiers;",
            "Lcom/sun/tools/javac/tree/JCTree$JCExpression;",
            "Lcom/sun/tools/javac/util/Name;",
            "Z",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 2176
    invoke-virtual/range {p0 .. p6}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclaratorRest(ILcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/Name;ZLjava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    invoke-virtual {p7, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2177
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->COMMA:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    .line 2179
    iget-object v0, p7, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v1, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lcom/sun/tools/javac/parser/Lexer;->endPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 2180
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->nextToken()V

    .line 2181
    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/sun/tools/javac/parser/JavacParser;->variableDeclarator(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/tree/JCTree$JCExpression;ZLjava/lang/String;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    invoke-virtual {p7, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 2183
    :cond_0
    return-object p7
.end method

.method public variableInitializer()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 1545
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->token()Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/parser/Token;->LBRACE:Lcom/sun/tools/javac/parser/Token;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/parser/JavacParser;->arrayInitializer(ILcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0
.end method

.method varargs warning(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 2825
    iget-object v0, p0, Lcom/sun/tools/javac/parser/JavacParser;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/tools/javac/util/Log;->warning(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2826
    return-void
.end method
