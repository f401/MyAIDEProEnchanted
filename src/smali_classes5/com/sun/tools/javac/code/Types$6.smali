.class Lcom/sun/tools/javac/code/Types$6;
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
.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 2

    .line 673
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$TypeRelation;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 7

    const/4 v0, 0x1

    .line 745
    if-ne p1, p2, :cond_8

    .line 746
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 751
    :goto_7
    return-object v0

    .line 748
    :cond_8
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_15

    .line 749
    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_7

    .line 751
    :cond_15
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_30

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 752
    invoke-virtual {v3, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->access$100(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 751
    :goto_2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    .line 752
    :cond_30
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 673
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$6;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 716
    if-ne p1, p2, :cond_9

    .line 717
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 738
    :goto_8
    return-object v0

    .line 719
    :cond_9
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_16

    .line 720
    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_8

    .line 722
    :cond_16
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isSuperBound()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 723
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_4c
    move v0, v2

    goto :goto_47

    .line 725
    :cond_4e
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 726
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_77

    .line 727
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    .line 729
    :cond_77
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 730
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 731
    new-instance v4, Lcom/sun/tools/javac/code/Types$SingletonType;

    iget-object v5, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {v4, v5, v0}, Lcom/sun/tools/javac/code/Types$SingletonType;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 732
    :cond_9d
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 733
    new-instance v4, Lcom/sun/tools/javac/code/Types$SingletonType;

    iget-object v5, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {v4, v5, v0}, Lcom/sun/tools/javac/code/Types$SingletonType;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 734
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_8

    .line 736
    :cond_c6
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_8

    .line 738
    :cond_d0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v3, :cond_100

    .line 739
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 740
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/code/Types;->containsTypeEquivalent(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 738
    :goto_fa
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_8

    :cond_100
    move v1, v2

    .line 740
    goto :goto_fa
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 673
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$6;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 4

    .line 803
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 673
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$6;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 9

    const/4 v1, 0x0

    .line 769
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x10

    if-eq v0, v2, :cond_c

    .line 770
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 773
    :goto_b
    return-object v0

    .line 772
    :cond_c
    check-cast p2, Lcom/sun/tools/javac/code/Type$ForAll;

    .line 773
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->hasSameBounds(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type$ForAll;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    iget-object v5, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    .line 774
    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    .line 773
    :goto_31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b

    :cond_36
    move v0, v1

    goto :goto_31
.end method

.method public bridge synthetic visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 673
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$6;->visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 5

    .line 759
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$MethodType;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public bridge synthetic visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 673
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$6;->visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 4

    .line 764
    if-ne p1, p2, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public bridge synthetic visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 673
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$6;->visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 8

    const/16 v4, 0xe

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 676
    if-ne p1, p2, :cond_b

    .line 677
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 696
    :goto_a
    return-object v0

    .line 679
    :cond_b
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_18

    .line 680
    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_a

    .line 682
    :cond_18
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v0, v4, :cond_4e

    const/16 v3, 0x11

    if-eq v0, v3, :cond_40

    const/16 v3, 0x12

    if-eq v0, v3, :cond_40

    packed-switch v0, :pswitch_data_9a

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSameType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 685
    :cond_40
    :pswitch_40  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    iget v3, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v3, :cond_4c

    move v0, v1

    :goto_47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    :cond_4c
    move v0, v2

    goto :goto_47

    .line 687
    :cond_4e
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v4, :cond_73

    .line 690
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v3, :cond_71

    .line 691
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 690
    :goto_6c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    :cond_71
    move v1, v2

    .line 691
    goto :goto_6c

    .line 696
    :cond_73
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isSuperBound()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 697
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 698
    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 696
    :goto_91
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_a

    :cond_97
    move v1, v2

    .line 698
    goto :goto_91

    .line 682
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_40  #00000001
        :pswitch_40  #00000002
        :pswitch_40  #00000003
        :pswitch_40  #00000004
        :pswitch_40  #00000005
        :pswitch_40  #00000006
        :pswitch_40  #00000007
        :pswitch_40  #00000008
        :pswitch_40  #00000009
    .end packed-switch
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 673
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$6;->visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 9

    const/4 v5, 0x1

    .line 779
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    .line 781
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 779
    const/16 v1, 0xf

    if-ne v0, v1, :cond_e

    move-object v0, v2

    .line 798
    :goto_d
    return-object v0

    .line 783
    :cond_e
    if-eq p1, p2, :cond_20

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    if-eq v0, p2, :cond_20

    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_20

    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_25

    .line 784
    :cond_20
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d

    .line 786
    :cond_25
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_32

    .line 787
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_d

    .line 789
    :cond_32
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->fromUnknownFun:Lcom/sun/tools/javac/code/Type$Mapping;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Type$Mapping;->apply(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    .line 790
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->lobounds:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_3f
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 791
    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v0, v4}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_55

    move-object v0, v2

    .line 792
    goto :goto_d

    .line 790
    :cond_55
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_3f

    .line 794
    :cond_59
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_5c
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 795
    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$6;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v4, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_72

    move-object v0, v2

    .line 796
    goto :goto_d

    .line 794
    :cond_72
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_5c

    .line 798
    :cond_76
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d
.end method

.method public bridge synthetic visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 673
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$6;->visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 5

    .line 708
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_d

    .line 709
    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types$6;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 711
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 673
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$6;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
