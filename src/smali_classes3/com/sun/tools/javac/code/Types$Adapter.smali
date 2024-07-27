.class Lcom/sun/tools/javac/code/Types$Adapter;
.super Lcom/sun/tools/javac/code/Types$SimpleVisitor;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/code/Types$SimpleVisitor",
        "<",
        "Ljava/lang/Void;",
        "Lcom/sun/tools/javac/code/Type;",
        ">;"
    }
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

.field from:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field mapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/code/Types;

.field to:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 3470
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;-><init>()V

    .line 3542
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types$Adapter;->cache:Ljava/util/Set;

    .line 3471
    iput-object p2, p0, Lcom/sun/tools/javac/code/Types$Adapter;->from:Lcom/sun/tools/javac/util/ListBuffer;

    .line 3472
    iput-object p3, p0, Lcom/sun/tools/javac/code/Types$Adapter;->to:Lcom/sun/tools/javac/util/ListBuffer;

    .line 3473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types$Adapter;->mapping:Ljava/util/Map;

    .line 3474
    return-void
.end method

.method private adaptRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V
    .registers 6

    .line 3545
    new-instance v0, Lcom/sun/tools/javac/code/Types$TypePair;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {v0, v1, p1, p2}, Lcom/sun/tools/javac/code/Types$TypePair;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    .line 3546
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->cache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3548
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Adapter;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3550
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->cache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3553
    :cond_0
    return-void

    .line 3550
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$Adapter;->cache:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3551
    throw v1
.end method

.method private adaptRecursive(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 3556
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3557
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3558
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$Adapter;->adaptRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    .line 3559
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 3560
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 3563
    :cond_0
    return-void
.end method


# virtual methods
.method public adapt(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    .line 3477
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Adapter;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3478
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Adapter;->from:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 3479
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->to:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object v1, v0

    .line 3480
    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3481
    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$Adapter;->mapping:Ljava/util/Map;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 3482
    iget-object v3, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v3, v0, :cond_0

    .line 3483
    iput-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 3484
    :cond_0
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 3485
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 3486
    goto :goto_0

    .line 3487
    :cond_1
    return-void
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3464
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Adapter;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    .line 3498
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 3499
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$Adapter;->adaptRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    .line 3500
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3464
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Adapter;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    .line 3491
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 3492
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$Adapter;->adaptRecursive(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    .line 3493
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3464
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Adapter;->visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Void;
    .registers 4

    .line 3539
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3464
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Adapter;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Void;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    .line 3517
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Adapter;->mapping:Ljava/util/Map;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 3518
    if-eqz v0, :cond_4

    .line 3519
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isSuperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isSuperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3520
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, p2}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3533
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Adapter;->mapping:Ljava/util/Map;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3534
    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object p2, v0

    .line 3521
    goto :goto_0

    .line 3522
    :cond_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3523
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, p2}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    move-object p2, v0

    .line 3524
    goto :goto_0

    .line 3525
    :cond_2
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0, p2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p2, v0

    goto :goto_0

    .line 3526
    :cond_3
    new-instance v0, Lcom/sun/tools/javac/code/Types$AdaptFailure;

    invoke-direct {v0}, Lcom/sun/tools/javac/code/Types$AdaptFailure;-><init>()V

    throw v0

    .line 3530
    :cond_4
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Adapter;->from:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 3531
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Adapter;->to:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_5
    move-object v0, p2

    goto :goto_1
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3464
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Adapter;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    .line 3505
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3506
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$Adapter;->adaptRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    .line 3509
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 3507
    :cond_1
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3508
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Adapter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$Adapter;->adaptRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method
