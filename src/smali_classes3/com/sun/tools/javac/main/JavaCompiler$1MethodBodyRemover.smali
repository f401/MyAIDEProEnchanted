.class Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;
.super Lcom/sun/tools/javac/tree/TreeTranslator;
.source "JavaCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavaCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MethodBodyRemover"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/main/JavaCompiler;

.field final val$isInterface:Z


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/JavaCompiler;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1625
    iput-object p1, p0, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;->this$0:Lcom/sun/tools/javac/main/JavaCompiler;

    iput-boolean p2, p0, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;->val$isInterface:Z

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 14

    const-wide/16 v10, 0x5

    const-wide/16 v8, 0x2

    const-wide/16 v6, 0x0

    .line 1644
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v3

    .line 1645
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    :goto_0
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_7

    .line 1646
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1647
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    .line 1645
    :cond_0
    :goto_1
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_0

    .line 1662
    :cond_1
    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;->val$isInterface:Z

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v4, v10

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1663
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;->this$0:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v4, v4, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->java_lang:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v4, :cond_0

    .line 1664
    :cond_2
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 1655
    :cond_3
    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;->val$isInterface:Z

    if-nez v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v4, v10

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;->this$0:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v4, v4, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v4, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1658
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;->this$0:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v4, v4, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->java_lang:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v4, :cond_0

    .line 1659
    :cond_4
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 1649
    :cond_5
    iget-boolean v1, p0, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;->val$isInterface:Z

    if-nez v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v4, v10

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1651
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/tools/javac/main/JavaCompiler$1MethodBodyRemover;->this$0:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v4, v4, Lcom/sun/tools/javac/main/JavaCompiler;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->java_lang:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v4, :cond_0

    .line 1652
    :cond_6
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto/16 :goto_1

    .line 1670
    :cond_7
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    .line 1671
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeTranslator;->visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 1672
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 8

    .line 1628
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, -0x21

    and-long/2addr v2, v4

    iput-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    .line 1629
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 1630
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, -0x11

    and-long/2addr v2, v4

    iput-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    goto :goto_0

    .line 1631
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1632
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeTranslator;->visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V

    .line 1633
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 3

    .line 1637
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1638
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1639
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeTranslator;->visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V

    .line 1640
    return-void
.end method
