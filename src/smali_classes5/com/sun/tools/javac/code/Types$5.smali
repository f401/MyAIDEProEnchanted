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

    if-eqz v0, :cond_2a

    .line 485
    :try_start_f
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 486
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 485
    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_23

    move-result v0

    .line 488
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->cache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 491
    :goto_22
    return v0

    .line 488
    :catchall_23
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->cache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 489
    throw v0

    .line 491
    :cond_2a
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

    goto :goto_22
.end method

.method private rewriteSupers(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 10

    const/4 v3, 0x1

    .line 497
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 524
    :cond_7
    :goto_7
    return-object p1

    .line 499
    :cond_8
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

    if-nez v1, :cond_7

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

    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 507
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Types$5;->rewriteSupers(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 508
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isSuperBound()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v7

    if-nez v7, :cond_5c

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
    :goto_58
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_28

    .line 513
    :cond_5c
    if-eq v1, v0, :cond_88

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
    goto :goto_58

    .line 521
    :cond_73
    if-eqz v2, :cond_7

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

    goto :goto_7

    :cond_88
    move-object v0, v1

    goto :goto_58
.end method


# virtual methods
.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    .line 545
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_35

    .line 546
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_22

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
    :goto_21
    return-object v0

    .line 549
    :cond_22
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_21

    .line 552
    :cond_35
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5f

    .line 553
    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 554
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->java_lang_Object:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_59

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->java_lang_Cloneable:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v2, :cond_59

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->java_io_Serializable:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_5a

    :cond_59
    const/4 v0, 0x1

    :cond_5a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_21

    .line 559
    :cond_5f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_21
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
    if-eqz v0, :cond_32

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, v2, :cond_32

    .line 538
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, p2, v0}, Lcom/sun/tools/javac/code/Types$5;->containsTypeRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_1c
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

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    .line 530
    :goto_2d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 539
    :cond_32
    const/4 v0, 0x0

    goto :goto_2d
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

    if-eq v2, v5, :cond_83

    const/16 v3, 0xf

    if-eq v2, v3, :cond_7e

    if-eq v2, v6, :cond_64

    const/16 v3, 0x12

    if-eq v2, v3, :cond_7e

    packed-switch v2, :pswitch_data_94

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
    :pswitch_31  #0x8, 0x9
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    iget v3, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_92

    :goto_37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 473
    :goto_3b
    return-object v0

    .line 462
    :pswitch_3c  #0x3, 0x4, 0x5, 0x6, 0x7
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    iget v3, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v3, :cond_47

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v4, :cond_47

    move v1, v0

    :cond_47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3b

    .line 459
    :pswitch_4c  #0x1, 0x2
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    iget v3, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v2, v3, :cond_5e

    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v3, :cond_5f

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v4, :cond_5f

    :cond_5e
    move v1, v0

    :cond_5f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3b

    .line 468
    :cond_64
    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v2, v6, :cond_78

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_78

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_78

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v5, :cond_79

    :cond_78
    move v1, v0

    .line 469
    :cond_79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3b

    .line 473
    :cond_7e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3b

    .line 466
    :cond_83
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3b

    :cond_92
    move v0, v1

    goto :goto_37

    .line 457
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_4c  #00000001
        :pswitch_4c  #00000002
        :pswitch_3c  #00000003
        :pswitch_3c  #00000004
        :pswitch_3c  #00000005
        :pswitch_3c  #00000006
        :pswitch_3c  #00000007
        :pswitch_31  #00000008
        :pswitch_31  #00000009
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

    if-eq p1, p2, :cond_17

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    if-eq v1, p2, :cond_17

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_17

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_18

    .line 572
    :cond_17
    :goto_17
    return-object v0

    .line 568
    :cond_18
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_29

    .line 569
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$5;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_17

    .line 571
    :cond_29
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    goto :goto_17
.end method

.method public bridge synthetic visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 455
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$5;->visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
