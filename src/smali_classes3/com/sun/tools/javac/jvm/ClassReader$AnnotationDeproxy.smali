.class Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;
.super Ljava/lang/Object;
.source "ClassReader.java"

# interfaces
.implements Lcom/sun/tools/javac/jvm/ClassReader$ProxyVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnnotationDeproxy"
.end annotation


# instance fields
.field private requestingOwner:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

.field result:Lcom/sun/tools/javac/code/Attribute;

.field final this$0:Lcom/sun/tools/javac/jvm/ClassReader;

.field type:Lcom/sun/tools/javac/code/Type;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/ClassReader;)V
    .registers 4

    .line 1606
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1607
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->requestingOwner:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1607
    return-void

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_0
.end method


# virtual methods
.method deproxy(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Attribute;)Lcom/sun/tools/javac/code/Attribute;
    .registers 5

    .line 1677
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lcom/sun/tools/javac/code/Type;

    .line 1679
    :try_start_0
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lcom/sun/tools/javac/code/Type;

    .line 1680
    invoke-virtual {p2, p0}, Lcom/sun/tools/javac/code/Attribute;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    .line 1681
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lcom/sun/tools/javac/code/Attribute;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1683
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lcom/sun/tools/javac/code/Type;

    .line 1681
    return-object v0

    .line 1683
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lcom/sun/tools/javac/code/Type;

    .line 1684
    throw v0
.end method

.method deproxyCompound(Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)Lcom/sun/tools/javac/code/Attribute$Compound;
    .registers 8

    .line 1621
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1623
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->values:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 1624
    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1626
    iget-object v3, p1, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->findAccessMethod(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v3

    .line 1627
    iget-object v0, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1628
    new-instance v4, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Attribute;

    invoke-virtual {p0, v5, v0}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxy(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Attribute;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1627
    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1625
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_0

    .line 1630
    :cond_0
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Compound;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V

    return-object v0
.end method

.method deproxyCompoundList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    .line 1612
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1614
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxyCompound(Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1614
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1617
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method findAccessMethod(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 10

    .line 1634
    const/4 v1, 0x0

    .line 1636
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    move-object v2, v0

    .line 1637
    :goto_0
    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_1

    .line 1639
    iget-object v0, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1640
    iget v3, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1641
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1670
    :goto_1
    return-object v0

    .line 1638
    :cond_0
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1644
    :goto_2
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->requestingOwner:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 1649
    if-nez v0, :cond_2

    .line 1650
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "annotation.method.not.found"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1660
    :goto_3
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1661
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    .line 1668
    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1670
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x401

    iget-object v6, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    move-object v0, v1

    goto :goto_1

    .line 1654
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    .line 1657
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object v0

    .line 1654
    const-string v3, "annotation.method.not.found.reason"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1660
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 1661
    throw v0

    .line 1643
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public visitArray(Lcom/sun/tools/javac/code/Attribute$Array;)V
    .registers 3

    .line 1707
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visitArrayAttributeProxy(Lcom/sun/tools/javac/jvm/ClassReader$ArrayAttributeProxy;)V
    .registers 7

    .line 1748
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassReader$ArrayAttributeProxy;->values:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    .line 1749
    new-array v3, v0, [Lcom/sun/tools/javac/code/Attribute;

    .line 1750
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 1751
    const/4 v0, 0x0

    .line 1752
    iget-object v2, p1, Lcom/sun/tools/javac/jvm/ClassReader$ArrayAttributeProxy;->values:Lcom/sun/tools/javac/util/List;

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Attribute;

    invoke-virtual {p0, v4, v0}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxy(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Attribute;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1752
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1755
    :cond_0
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Array;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/code/Attribute$Array;-><init>(Lcom/sun/tools/javac/code/Type;[Lcom/sun/tools/javac/code/Attribute;)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lcom/sun/tools/javac/code/Attribute;

    .line 1756
    return-void
.end method

.method public visitClass(Lcom/sun/tools/javac/code/Attribute$Class;)V
    .registers 2

    .line 1695
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lcom/sun/tools/javac/code/Attribute;

    .line 1696
    return-void
.end method

.method public visitCompound(Lcom/sun/tools/javac/code/Attribute$Compound;)V
    .registers 3

    .line 1703
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visitCompoundAnnotationProxy(Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)V
    .registers 3

    .line 1759
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->deproxyCompound(Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lcom/sun/tools/javac/code/Attribute;

    .line 1760
    return-void
.end method

.method public visitConstant(Lcom/sun/tools/javac/code/Attribute$Constant;)V
    .registers 2

    .line 1691
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lcom/sun/tools/javac/code/Attribute;

    .line 1692
    return-void
.end method

.method public visitEnum(Lcom/sun/tools/javac/code/Attribute$Enum;)V
    .registers 3

    .line 1699
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visitEnumAttributeProxy(Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;)V
    .registers 13

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1716
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumType:Lcom/sun/tools/javac/code/Type;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 1718
    :try_start_0
    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v2, p1, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 1721
    :goto_0
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_3

    .line 1723
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1724
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v2, v0

    move-object v3, v1

    .line 1731
    :goto_2
    if-nez v2, :cond_2

    .line 1732
    if-eqz v3, :cond_1

    .line 1733
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    iget-object v2, p1, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lcom/sun/tools/javac/util/Name;

    .line 1735
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->getDiagnostic()Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v3

    .line 1733
    const-string v4, "unknown.enum.constant.reason"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    invoke-virtual {v0, v4, v5}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1740
    :goto_3
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Enum;

    iget-object v7, v6, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x0

    iget-object v4, p1, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v5, v5, Lcom/sun/tools/javac/jvm/ClassReader;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    invoke-direct {v0, v7, v1}, Lcom/sun/tools/javac/code/Attribute$Enum;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lcom/sun/tools/javac/code/Attribute;

    .line 1745
    :goto_4
    return-void

    .line 1722
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;
    :try_end_1
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1728
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v0

    .line 1729
    goto :goto_2

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "unknown.enum.constant"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    aput-object v3, v2, v7

    aput-object v6, v2, v8

    iget-object v3, p1, Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;->enumerator:Lcom/sun/tools/javac/util/Name;

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1743
    :cond_2
    new-instance v0, Lcom/sun/tools/javac/code/Attribute$Enum;

    iget-object v1, v6, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Attribute$Enum;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;->result:Lcom/sun/tools/javac/code/Attribute;

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public visitError(Lcom/sun/tools/javac/code/Attribute$Error;)V
    .registers 3

    .line 1711
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
