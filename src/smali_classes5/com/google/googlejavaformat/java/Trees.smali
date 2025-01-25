.class public Lcom/google/googlejavaformat/java/Trees;
.super Ljava/lang/Object;
.source "Trees.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEnclosingTypeDeclaration(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;
    .registers 3

    .line 133
    :goto_0
    if-eqz p0, :cond_2a

    .line 134
    sget-object v0, Lcom/google/googlejavaformat/java/Trees$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    .line 133
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    goto :goto_0

    .line 140
    :cond_23
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ClassTree;

    return-object v0

    .line 145
    :cond_2a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static getEndPosition(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I
    .registers 3

    .line 60
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree;

    .line 61
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/JCTree;->getEndPosition(Ljava/util/Map;)I

    move-result v0

    .line 60
    return v0
.end method

.method static getLength(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I
    .registers 4

    .line 46
    invoke-static {p0, p1}, Lcom/google/googlejavaformat/java/Trees;->getEndPosition(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I

    move-result v0

    invoke-static {p0}, Lcom/google/googlejavaformat/java/Trees;->getStartPosition(Lcom/sun/source/tree/Tree;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static getMethodName(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/Name;
    .registers 3

    .line 81
    invoke-interface {p0}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 82
    instance-of v1, v0, Lcom/sun/source/tree/MemberSelectTree;

    if-eqz v1, :cond_f

    .line 83
    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 82
    :goto_e
    return-object v0

    .line 84
    :cond_f
    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    goto :goto_e
.end method

.method static getMethodReceiver(Lcom/sun/source/tree/MethodInvocationTree;)Lcom/sun/source/tree/ExpressionTree;
    .registers 3

    .line 91
    invoke-interface {p0}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 92
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

.method static getSourceForNode(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)Ljava/lang/String;
    .registers 5

    .line 70
    :try_start_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljavax/tools/JavaFileObject;->getCharContent(Z)Ljava/lang/CharSequence;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_1e

    move-result-object v0

    .line 73
    invoke-static {p0}, Lcom/google/googlejavaformat/java/Trees;->getStartPosition(Lcom/sun/source/tree/Tree;)I

    move-result v1

    invoke-static {p0, p1}, Lcom/google/googlejavaformat/java/Trees;->getEndPosition(Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :catch_1e
    move-exception v0

    .line 72
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getStartPosition(Lcom/sun/source/tree/Tree;)I
    .registers 2

    .line 53
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v0

    return v0
.end method

.method static operatorName(Lcom/sun/source/tree/ExpressionTree;)Ljava/lang/String;
    .registers 6

    .line 107
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    .line 108
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_e

    .line 109
    const-string v0, "="

    .line 118
    :cond_d
    :goto_d
    return-object v0

    .line 111
    :cond_e
    instance-of v1, p0, Lcom/sun/source/tree/CompoundAssignmentTree;

    .line 112
    new-instance v2, Lcom/sun/tools/javac/tree/Pretty;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/tools/javac/tree/Pretty;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/tree/Pretty;->operatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method static precedence(Lcom/sun/source/tree/ExpressionTree;)I
    .registers 2

    .line 125
    check-cast p0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->opPrec(I)I

    move-result v0

    return v0
.end method

.method static skipParen(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;
    .registers 2

    .line 152
    check-cast p0, Lcom/sun/source/tree/ParenthesizedTree;

    invoke-interface {p0}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0
.end method
