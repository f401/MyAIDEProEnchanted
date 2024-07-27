.class public Lcom/sun/tools/javac/code/Scope$ErrorScope;
.super Lcom/sun/tools/javac/code/Scope;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorScope"
.end annotation


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;)V
    .registers 5

    .line 734
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$1;)V

    .line 735
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 2

    .line 737
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    .line 738
    return-void
.end method


# virtual methods
.method public dup()Lcom/sun/tools/javac/code/Scope;
    .registers 4

    .line 740
    new-instance v0, Lcom/sun/tools/javac/code/Scope$ErrorScope;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$ErrorScope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Scope$ErrorScope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-direct {v0, p0, v1, v2}, Lcom/sun/tools/javac/code/Scope$ErrorScope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;)V

    return-object v0
.end method

.method public dupUnshared()Lcom/sun/tools/javac/code/Scope;
    .registers 4

    .line 743
    new-instance v1, Lcom/sun/tools/javac/code/Scope$ErrorScope;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Scope$ErrorScope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$ErrorScope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/Scope$Entry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-direct {v1, p0, v2, v0}, Lcom/sun/tools/javac/code/Scope$ErrorScope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;)V

    return-object v1
.end method

.method public lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 5

    const/4 v2, 0x0

    .line 746
    invoke-super {p0, p1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 747
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-nez v1, :cond_0

    .line 748
    new-instance v0, Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$ErrorScope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sun/tools/javac/code/Scope$Entry;-><init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope;)V

    .line 750
    :cond_0
    return-object v0
.end method
