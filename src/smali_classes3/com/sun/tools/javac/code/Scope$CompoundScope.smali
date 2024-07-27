.class public Lcom/sun/tools/javac/code/Scope$CompoundScope;
.super Lcom/sun/tools/javac/code/Scope;
.source "Scope.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Scope$ScopeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundScope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;
    }
.end annotation


# static fields
.field public static final emptyTable:[Lcom/sun/tools/javac/code/Scope$Entry;


# instance fields
.field private mark:I

.field private subScopes:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 594
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sun/tools/javac/code/Scope$Entry;

    sput-object v0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->emptyTable:[Lcom/sun/tools/javac/code/Scope$Entry;

    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4

    const/4 v1, 0x0

    .line 600
    sget-object v0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->emptyTable:[Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-direct {p0, v1, p1, v0, v1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$1;)V

    .line 596
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->subScopes:Lcom/sun/tools/javac/util/List;

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->mark:I

    .line 601
    return-void
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/code/Scope$CompoundScope;)Lcom/sun/tools/javac/util/List;
    .registers 2

    .line 592
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->subScopes:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method


# virtual methods
.method public addSubScope(Lcom/sun/tools/javac/code/Scope;)V
    .registers 5

    .line 604
    if-eqz p1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->subScopes:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->subScopes:Lcom/sun/tools/javac/util/List;

    .line 606
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/code/Scope;->addScopeListener(Lcom/sun/tools/javac/code/Scope$ScopeListener;)V

    .line 607
    iget v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->mark:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->mark:I

    .line 608
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->listeners:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Scope$ScopeListener;

    .line 609
    const/4 v2, 0x0

    invoke-interface {v0, v2, p0}, Lcom/sun/tools/javac/code/Scope$ScopeListener;->symbolAdded(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    goto :goto_0

    .line 612
    :cond_0
    return-void
.end method

.method public dup(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Scope;
    .registers 3

    .line 717
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)V
    .registers 5

    .line 722
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getElements(Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 648
    new-instance v0, Lcom/sun/tools/javac/code/Scope$CompoundScope$1;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/code/Scope$CompoundScope$1;-><init>(Lcom/sun/tools/javac/code/Scope$CompoundScope;Lcom/sun/tools/javac/util/Filter;)V

    return-object v0
.end method

.method public getElementsByName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 661
    new-instance v0, Lcom/sun/tools/javac/code/Scope$CompoundScope$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/tools/javac/code/Scope$CompoundScope$2;-><init>(Lcom/sun/tools/javac/code/Scope$CompoundScope;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)V

    return-object v0
.end method

.method public getMark()I
    .registers 2

    .line 629
    iget v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->mark:I

    return v0
.end method

.method public lookup(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Lcom/sun/tools/javac/code/Scope$Entry;"
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 3

    .line 727
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public symbolAdded(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 5

    .line 615
    iget v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->mark:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->mark:I

    .line 616
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->listeners:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Scope$ScopeListener;

    .line 617
    invoke-interface {v0, p1, p2}, Lcom/sun/tools/javac/code/Scope$ScopeListener;->symbolAdded(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    goto :goto_0

    .line 619
    :cond_0
    return-void
.end method

.method public symbolRemoved(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 5

    .line 622
    iget v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->mark:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->mark:I

    .line 623
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->listeners:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Scope$ScopeListener;

    .line 624
    invoke-interface {v0, p1, p2}, Lcom/sun/tools/javac/code/Scope$ScopeListener;->symbolRemoved(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    const-string v0, "CompoundScope{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v0, ""

    .line 637
    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope;->subScopes:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Scope;

    .line 638
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    const-string v0, ","

    move-object v1, v0

    .line 641
    goto :goto_0

    .line 642
    :cond_0
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
