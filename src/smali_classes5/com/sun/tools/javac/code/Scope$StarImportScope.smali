.class public Lcom/sun/tools/javac/code/Scope$StarImportScope;
.super Lcom/sun/tools/javac/code/Scope$ImportScope;
.source "Scope.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Scope$ScopeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarImportScope"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 2

    .line 534
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Scope$ImportScope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    .line 535
    return-void
.end method


# virtual methods
.method public importAll(Lcom/sun/tools/javac/code/Scope;)V
    .registers 5

    .line 538
    iget-object v0, p1, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    :goto_2
    if-eqz v0, :cond_1b

    .line 539
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/code/Scope$StarImportScope;->includes(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 540
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v1, p1}, Lcom/sun/tools/javac/code/Scope$StarImportScope;->enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 538
    :cond_18
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_2

    .line 543
    :cond_1b
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/code/Scope;->addScopeListener(Lcom/sun/tools/javac/code/Scope$ScopeListener;)V

    .line 544
    return-void
.end method

.method public symbolAdded(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 3

    .line 549
    return-void
.end method

.method public symbolRemoved(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 3

    .line 547
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Scope$StarImportScope;->remove(Lcom/sun/tools/javac/code/Symbol;)V

    .line 548
    return-void
.end method
