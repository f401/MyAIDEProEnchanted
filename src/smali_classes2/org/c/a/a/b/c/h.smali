.class public Lorg/c/a/a/b/c/h;
.super Lorg/c/a/a/b/b/d;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# static fields
.field protected static final g:Lorg/c/a/a/b/c/j;

.field static final i:Z


# instance fields
.field protected final h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/c/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/b/c/h;->i:Z

    new-instance v0, Lorg/c/a/a/b/c/j;

    invoke-direct {v0}, Lorg/c/a/a/b/c/j;-><init>()V

    sput-object v0, Lorg/c/a/a/b/c/h;->g:Lorg/c/a/a/b/c/j;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .registers 8

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string v5, "Imports"

    move-object v0, p0

    move v3, v2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/b/d;-><init>(IIIILjava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/b/c/h;->h:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/b/c/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/c/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/b/c/h;->h:Ljava/util/HashMap;

    new-instance v1, Lorg/c/a/a/b/c/i;

    invoke-direct {v1, p1, p2}, Lorg/c/a/a/b/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/c/a/a/b/c/i;->d()V

    goto :goto_0
.end method

.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/h;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/b/c/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()I
    .registers 3

    sget-boolean v0, Lorg/c/a/a/b/c/h;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/c/a/a/b/c/h;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Call initLineCounts() before"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/c/a/a/b/c/h;->d:I

    return v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/b/c/h;->d:I

    iput v0, p0, Lorg/c/a/a/b/c/h;->c:I

    iput v0, p0, Lorg/c/a/a/b/c/h;->b:I

    return-void
.end method

.method public j()Ljava/util/Collection;
    .registers 5

    invoke-virtual {p0}, Lorg/c/a/a/b/c/h;->e()I

    move-result v1

    iget-object v0, p0, Lorg/c/a/a/b/c/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v0, Lorg/c/a/a/d/c;

    iget-object v3, p0, Lorg/c/a/a/b/c/h;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/c/a/a/d/c;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lorg/c/a/a/b/c/h;->g:Lorg/c/a/a/b/c/j;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v1, v2}, Lorg/c/a/a/d/c;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/b/c/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method
