.class public Lcom/sun/tools/javac/parser/EndPosParser;
.super Lcom/sun/tools/javac/parser/JavacParser;
.source "EndPosParser.java"


# instance fields
.field private S:Lcom/sun/tools/javac/parser/Lexer;

.field endPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/parser/ParserFactory;Lcom/sun/tools/javac/parser/Lexer;ZZ)V
    .registers 6

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/parser/JavacParser;-><init>(Lcom/sun/tools/javac/parser/ParserFactory;Lcom/sun/tools/javac/parser/Lexer;ZZ)V

    .line 48
    iput-object p2, p0, Lcom/sun/tools/javac/parser/EndPosParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/parser/EndPosParser;->endPositions:Ljava/util/Map;

    .line 50
    return-void
.end method


# virtual methods
.method public getEndPos(Lcom/sun/tools/javac/tree/JCTree;)I
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/sun/tools/javac/parser/EndPosParser;->endPositions:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method parExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/sun/tools/javac/parser/EndPosParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->pos()I

    move-result v0

    .line 92
    invoke-super {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/sun/tools/javac/parser/EndPosParser;->F:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->at(I)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Parens(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCParens;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/parser/EndPosParser;->toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public parseCompilationUnit()Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .registers 3

    .line 83
    invoke-super {p0}, Lcom/sun/tools/javac/parser/JavacParser;->parseCompilationUnit()Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/sun/tools/javac/parser/EndPosParser;->endPositions:Ljava/util/Map;

    iput-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Ljava/util/Map;

    .line 85
    return-object v0
.end method

.method protected storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V
    .registers 5

    .line 63
    invoke-virtual {p0}, Lcom/sun/tools/javac/parser/EndPosParser;->getErrorEndPos()I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/sun/tools/javac/parser/EndPosParser;->endPositions:Ljava/util/Map;

    if-le v0, p2, :cond_9

    move p2, v0

    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method protected to(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sun/tools/javac/parser/EndPosParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->endPos()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/parser/EndPosParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 71
    return-object p1
.end method

.method protected toP(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/sun/tools/javac/parser/EndPosParser;->S:Lcom/sun/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lcom/sun/tools/javac/parser/Lexer;->prevEndPos()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/parser/EndPosParser;->storeEnd(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 78
    return-object p1
.end method
