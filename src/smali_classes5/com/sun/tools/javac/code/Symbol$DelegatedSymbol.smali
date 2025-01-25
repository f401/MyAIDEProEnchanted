.class public Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;
.super Lcom/sun/tools/javac/code/Symbol;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelegatedSymbol"
.end annotation


# instance fields
.field protected other:Lcom/sun/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 9

    .line 475
    iget v1, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget-wide v2, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    iget-object v4, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symbol;-><init>(IJLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 476
    iput-object p1, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    .line 477
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

    .line 505
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-interface {p1, v0, p2}, Lcom/sun/tools/javac/code/Symbol$Visitor;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 501
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Symbol;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asMemberOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Symbol;->asMemberOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asType()Ljavax/lang/model/type/TypeMirror;
    .registers 2

    .line 472
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public complete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->complete()V

    return-void
.end method

.method public enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    return-object v0
.end method

.method public erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public externalType(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Symbol;->externalType(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public flatName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .registers 2

    .line 472
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEnclosingElement()Ljavax/lang/model/element/Element;
    .registers 2

    .line 472
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 485
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSimpleName()Ljavax/lang/model/element/Name;
    .registers 2

    .line 472
    invoke-super {p0}, Lcom/sun/tools/javac/code/Symbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public hasOuterInstance()Z
    .registers 2

    .line 489
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    return v0
.end method

.method public isEnclosedBy(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Symbol;->isEnclosedBy(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v0

    return v0
.end method

.method public isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z
    .registers 4

    .line 496
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Symbol;->isInheritedIn(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    return v0
.end method

.method public isInner()Z
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->isInner()Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->isLocal()Z

    move-result v0

    return v0
.end method

.method public isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z
    .registers 4

    .line 494
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Symbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    return v0
.end method

.method public isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Symbol;->isSubClass(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    return v0
.end method

.method public location()Lcom/sun/tools/javac/code/Symbol;
    .registers 2

    .line 479
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public location(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;
    .registers 4

    .line 480
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Symbol;->location(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public members()Lcom/sun/tools/javac/code/Scope;
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    return-object v0
.end method

.method public outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    return-object v0
.end method

.method public packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
    .registers 2

    .line 492
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->packge()Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 478
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;->other:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
