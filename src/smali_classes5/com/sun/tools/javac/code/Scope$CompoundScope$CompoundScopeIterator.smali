.class abstract Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Scope$CompoundScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CompoundScopeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/sun/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private scopesToScan:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/code/Scope$CompoundScope;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Scope$CompoundScope;Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Scope;",
            ">;)V"
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->this$0:Lcom/sun/tools/javac/code/Scope$CompoundScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->scopesToScan:Lcom/sun/tools/javac/util/List;

    .line 679
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->update()V

    .line 680
    return-void
.end method

.method private update()V
    .registers 2

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->scopesToScan:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 702
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->scopesToScan:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->nextIterator(Lcom/sun/tools/javac/code/Scope;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->currentIterator:Ljava/util/Iterator;

    .line 703
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->scopesToScan:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->scopesToScan:Lcom/sun/tools/javac/util/List;

    .line 704
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    :goto_22
    return-void

    .line 706
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->currentIterator:Ljava/util/Iterator;

    goto :goto_22
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 685
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->currentIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Lcom/sun/tools/javac/code/Symbol;
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 690
    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_13

    .line 691
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->update()V

    .line 693
    :cond_13
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 672
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;->next()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method abstract nextIterator(Lcom/sun/tools/javac/code/Scope;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Scope;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end method

.method public remove()V
    .registers 2

    .line 697
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
