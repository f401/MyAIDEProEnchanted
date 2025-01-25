.class public Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
.super Lcom/sun/tools/javac/code/Symbol$TypeSymbol;
.source "Symbol.java"

# interfaces
.implements Ljavax/lang/model/element/PackageElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageSymbol"
.end annotation


# instance fields
.field public fullname:Lcom/sun/tools/javac/util/Name;

.field public members_field:Lcom/sun/tools/javac/code/Scope;

.field public package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4

    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 641
    new-instance v0, Lcom/sun/tools/javac/code/Type$PackageType;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Type$PackageType;-><init>(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 642
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 11

    .line 633
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 634
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->kind:I

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 636
    invoke-static {p1, p3}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->formFullName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    .line 637
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/code/Symbol$Visitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 696
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Symbol$Visitor;->visitPackageSymbol(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/element/ElementVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 692
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/ElementVisitor;->visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exists()Z
    .registers 5

    .line 680
    iget-wide v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->flags_field:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public flags()J
    .registers 3

    .line 662
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->complete()V

    .line 663
    :cond_7
    iget-wide v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->flags_field:J

    return-wide v0
.end method

.method public getAnnotationMirrors()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->complete()V

    .line 668
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eqz v0, :cond_22

    .line 669
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 670
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 671
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->package_info:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    .line 673
    :cond_22
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .registers 2

    .line 625
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;
    .registers 2

    .line 688
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getEnclosingElement()Ljavax/lang/model/element/Element;
    .registers 2

    .line 625
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/element/ElementKind;
    .registers 2

    .line 684
    sget-object v0, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    return-object v0
.end method

.method public getQualifiedName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getQualifiedName()Ljavax/lang/model/element/Name;
    .registers 2

    .line 625
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public isUnnamed()Z
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public members()Lcom/sun/tools/javac/code/Scope;
    .registers 2

    .line 657
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->complete()V

    .line 658
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 645
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
