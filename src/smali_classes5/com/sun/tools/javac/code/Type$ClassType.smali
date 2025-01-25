.class public Lcom/sun/tools/javac/code/Type$ClassType;
.super Lcom/sun/tools/javac/code/Type;
.source "Type.java"

# interfaces
.implements Ljavax/lang/model/type/DeclaredType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassType"
.end annotation


# instance fields
.field public all_interfaces_field:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field public allparams_field:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field public interfaces_field:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field private outer_field:Lcom/sun/tools/javac/code/Type;

.field rank_field:I

.field public supertype_field:Lcom/sun/tools/javac/code/Type;

.field public typarams_field:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 606
    const/16 v0, 0xa

    invoke-direct {p0, v0, p3}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 732
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->rank_field:I

    .line 607
    iput-object p1, p0, Lcom/sun/tools/javac/code/Type$ClassType;->outer_field:Lcom/sun/tools/javac/code/Type;

    .line 608
    iput-object p2, p0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    .line 609
    iput-object v1, p0, Lcom/sun/tools/javac/code/Type$ClassType;->allparams_field:Lcom/sun/tools/javac/util/List;

    .line 610
    iput-object v1, p0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 611
    iput-object v1, p0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 621
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/code/Type$ClassType;)Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->outer_field:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method private className(Lcom/sun/tools/javac/code/Symbol;Z)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 662
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x1000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_26
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 665
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_26

    .line 668
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    :cond_44
    :goto_44
    return-object v0

    .line 669
    :cond_45
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 671
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 672
    if-nez v0, :cond_7c

    .line 673
    const-string v0, "anonymous.class"

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 681
    :goto_60
    sget-boolean v1, Lcom/sun/tools/javac/code/Type$ClassType;->moreInfo:Z

    if-eqz v1, :cond_44

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 674
    :cond_7c
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_95

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 675
    const-string v1, "anonymous.class"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/Log;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    .line 678
    :cond_95
    const-string v1, "anonymous.class"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/Log;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    .line 684
    :cond_a2
    if-eqz p2, :cond_ad

    .line 685
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 687
    :cond_ad
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/code/Type$Visitor",
            "<TR;TS;>;TS;)TR;"
        }
    .end annotation

    .line 625
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Type$Visitor;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/type/TypeVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 773
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public allparams()Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->allparams_field:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_16

    .line 714
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->allparams_field:Lcom/sun/tools/javac/util/List;

    .line 716
    :cond_16
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->allparams_field:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic asElement()Ljavax/lang/model/element/Element;
    .registers 2

    .line 575
    invoke-super {p0}, Lcom/sun/tools/javac/code/Type;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    return-object v0
.end method

.method public complete()V
    .registers 2

    .line 765
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->complete()V

    .line 766
    :cond_b
    return-void
.end method

.method public constType(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
    .registers 8

    .line 629
    new-instance v0, Lcom/sun/tools/javac/code/Type$ClassType$1;

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    iget-object v4, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Type$ClassType$1;-><init>(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)V

    return-object v0
.end method

.method public contains(Lcom/sun/tools/javac/code/Type;)Z
    .registers 3

    .line 756
    if-eq p1, p0, :cond_32

    .line 758
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 759
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Type;->contains(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/tools/javac/code/Type$ClassType;->contains(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 760
    :cond_1c
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 761
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Type;->contains(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    invoke-static {v0, p1}, Lcom/sun/tools/javac/code/Type$ClassType;->contains(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    .line 756
    :goto_33
    return v0

    .line 761
    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public getEnclosingType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 705
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->outer_field:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public bridge synthetic getEnclosingType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 575
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/type/TypeKind;
    .registers 2

    .line 769
    sget-object v0, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public getTypeArguments()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_11

    .line 693
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->complete()V

    .line 694
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_11

    .line 695
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    .line 697
    :cond_11
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .registers 2

    .line 575
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasErasedSupertypes()Z
    .registers 2

    .line 701
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->isRaw()Z

    move-result v0

    return v0
.end method

.method public isErroneous()Z
    .registers 2

    .line 720
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_24

    .line 722
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->isErroneous(Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eq p0, v0, :cond_26

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 723
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    .line 720
    :goto_25
    return v0

    .line 723
    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public isParameterized()Z
    .registers 2

    .line 727
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRaw()Z
    .registers 2

    .line 740
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eq p0, v0, :cond_20

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 742
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 743
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    .line 740
    :goto_1f
    return v0

    .line 743
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public map(Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 747
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 748
    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Type$Mapping;->apply(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 749
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 750
    invoke-static {v2, p1}, Lcom/sun/tools/javac/code/Type$ClassType;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 751
    if-ne v1, v0, :cond_15

    if-ne v3, v2, :cond_15

    .line 752
    :goto_14
    return-object p0

    :cond_15
    new-instance v0, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object p0, v0

    goto :goto_14
.end method

.method public setEnclosingType(Lcom/sun/tools/javac/code/Type;)V
    .registers 2

    .line 709
    iput-object p1, p0, Lcom/sun/tools/javac/code/Type$ClassType;->outer_field:Lcom/sun/tools/javac/code/Type;

    .line 710
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_56

    iget-object v1, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_56

    .line 647
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    iget-object v1, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sun/tools/javac/code/Type$ClassType;->className(Lcom/sun/tools/javac/code/Symbol;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :goto_32
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 654
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 651
    :cond_56
    iget-object v1, p0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sun/tools/javac/code/Type$ClassType;->className(Lcom/sun/tools/javac/code/Symbol;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32
.end method
