.class public Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;
.super Lcom/sun/tools/javac/tree/JCTree$JCStatement;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/LabeledStatementTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCLabeledStatement"
.end annotation


# instance fields
.field public body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

.field public label:Lcom/sun/tools/javac/util/Name;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCStatement;)V
    .registers 3

    .line 1352
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 1353
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lcom/sun/tools/javac/util/Name;

    .line 1354
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 1355
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1376
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitLabeledStatement(Lcom/sun/source/tree/LabeledStatementTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 1359
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitLabelled(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)V

    .line 1360
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 1363
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LABELED_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getLabel()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 1367
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getLabel()Ljavax/lang/model/element/Name;
    .registers 2

    .line 1348
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->getLabel()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStatement()Lcom/sun/source/tree/StatementTree;
    .registers 2

    .line 1348
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->getStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0
.end method

.method public getStatement()Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    .registers 2

    .line 1371
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 1381
    const/16 v0, 0xc

    return v0
.end method
