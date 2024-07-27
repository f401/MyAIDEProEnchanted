.class Lcom/sun/tools/javac/api/JavacTrees$1;
.super Ljava/lang/Object;
.source "JavacTrees.java"

# interfaces
.implements Lcom/sun/source/util/SourcePositions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/api/JavacTrees;->getSourcePositions()Lcom/sun/source/util/SourcePositions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/api/JavacTrees;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/JavacTrees;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/sun/tools/javac/api/JavacTrees$1;->this$0:Lcom/sun/tools/javac/api/JavacTrees;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPosition(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)J
    .registers 5

    .line 142
    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Ljava/util/Map;

    .line 143
    check-cast p2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {p2, v0}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStartPosition(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)J
    .registers 5

    .line 138
    check-cast p2, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {p2}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
