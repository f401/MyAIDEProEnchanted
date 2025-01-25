.class public La/ac;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:La/b/b;

.field private final b:La/b/b;

.field private final c:La/b/f/z;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/b/b;La/b/b;La/b/f/z;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/ac;->a:La/b/b;

    iput-object p2, p0, La/ac;->b:La/b/b;

    iput-object p3, p0, La/ac;->c:La/b/f/z;

    return-void
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 5

    invoke-virtual {p1}, La/b/e;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, La/ac;->c:La/b/f/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Note: the configuration explicitly specifies \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/ac;->d:Ljava/lang/String;

    invoke-static {v2}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to keep library class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, La/b/f/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(La/b/k;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 13

    if-eqz p1, :cond_47

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/aa;

    iget-object v2, v1, La/aa;->e:Ljava/lang/String;

    iput-object v2, p0, La/ac;->d:Ljava/lang/String;

    if-eqz v2, :cond_44

    new-instance v8, La/ab;

    const/4 v2, 0x1

    invoke-direct {v8, v2, v2, v2}, La/ab;-><init>(ZZZ)V

    new-instance v9, La/b/g/i;

    invoke-direct {v9}, La/b/g/i;-><init>()V

    iget-object v10, p0, La/ac;->a:La/b/b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v1

    move-object v4, v9

    invoke-virtual/range {v2 .. v7}, La/ab;->a(La/aa;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;)La/b/g/n;

    move-result-object v2

    invoke-virtual {v10, v2}, La/b/b;->a(La/b/g/n;)V

    invoke-virtual {v9}, La/b/g/i;->a()I

    move-result v2

    if-nez v2, :cond_44

    iget-object v9, p0, La/ac;->b:La/b/b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v1

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, La/ab;->a(La/aa;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;)La/b/g/n;

    move-result-object v1

    invoke-virtual {v9, v1}, La/b/b;->a(La/b/g/n;)V

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_47
    return-void
.end method
