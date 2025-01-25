.class Lcom/sun/tools/javac/comp/Check$1SpecialTreeVisitor;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpecialTreeVisitor"
.end annotation


# instance fields
.field specialized:Z

.field final this$0:Lcom/sun/tools/javac/comp/Check;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Check;)V
    .registers 3

    .line 989
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check$1SpecialTreeVisitor;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Check$1SpecialTreeVisitor;->specialized:Z

    .line 991
    return-void
.end method


# virtual methods
.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 2

    .line 994
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 6

    .line 998
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 999
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    instance-of v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    if-eqz v0, :cond_1e

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_1e

    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/Check$1SpecialTreeVisitor;->specialized:Z

    .line 1004
    :cond_1e
    return-void
.end method
