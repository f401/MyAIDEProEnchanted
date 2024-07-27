.class Lcom/sun/tools/javac/code/Types$5;
.super Lcom/sun/tools/javac/code/Types$TypeRelation;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/code/Types$TypePair;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 3

    .line 455
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$TypeRelation;-><init>()V

    .line 479
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->cache:Ljava/util/Set;

    return-void
.end method

.method private containsTypeRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 7

    .line 482
    new-instance v1, Lcom/sun/tools/javac/code/Types$TypePair;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {v1, v0, p1, p2}, Lcom/sun/tools/javac/code/Types$TypePair;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    .line 483
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->cache:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 486
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 485
    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 488
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->cache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 491
    :goto_0
    return v0

    .line 488
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->cache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 489
    throw v0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 492
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/code/Types$5;->rewriteSupers(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 491
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method private rewriteSupers(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 10

    const/4 v3, 0x1

    .line 497
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-object p1

    .line 499
    :cond_1
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v4

    .line 500
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v1, p1, v4, v0}, Lcom/sun/tools/javac/code/Types;->access$000(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/ListBuffer;)V

    .line 502
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v5

    .line 505
    const/4 v2, 0x0

    .line 506
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 507
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Types$5;->rewriteSupers(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 508
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isSuperBound()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v7

    if-nez v7, :cond_2

    .line 509
    new-instance v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v7, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v7}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move v2, v3

    .line 519
    :goto_2
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 513
    :cond_2
    if-eq v1, v0, :cond_4

    .line 514
    new-instance v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v7, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v7}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move v2, v3

    .line 517
    goto :goto_2

    .line 521
    :cond_3
    if-eqz v2, :cond_0

    .line 522
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    .line 545
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 546
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 559
    :goto_0
    return-object v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_1
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 553
    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 554
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->java_lang_Object:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->java_lang_Cloneable:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->java_io_Serializable:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 455
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$5;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 6

    .line 529
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, v2, :cond_1

    .line 538
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/sun/tools/javac/code/Types$5;->containsTypeRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 539
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 540
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 539
    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 530
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 539
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 455
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$5;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 4

    .line 577
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 455
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$5;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 10

    const/16 v6, 0x11

    const/16 v5, 0xe

    const/4 v4, 0x7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 457
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v2, v5, :cond_7

    const/16 v3, 0xf

    if-eq v2, v3, :cond_6

    if-eq v2, v6, :cond_3

    const/16 v3, 0x12

    if-eq v2, v3, :cond_6

    packed-switch v2, :pswitch_data_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSubtype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 464
    :pswitch_0
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    iget v3, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_8

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 473
    :goto_1
    return-object v0

    .line 462
    :pswitch_1
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    iget v3, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v3, :cond_0

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v4, :cond_0

    move v1, v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 459
    :pswitch_2
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    iget v3, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v2, v3, :cond_1

    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v3, :cond_2

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v4, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 468
    :cond_3
    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v2, v6, :cond_4

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_4

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v5, :cond_5

    :cond_4
    move v1, v0

    .line 469
    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 473
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 466
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 455
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$5;->visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 6

    .line 565
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eq p1, p2, :cond_0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    if-eq v1, p2, :cond_0

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-object v0

    .line 568
    :cond_1
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_2

    .line 569
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_2
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    goto :goto_0
.end method

.method public bridge synthetic visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 455
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$5;->visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
