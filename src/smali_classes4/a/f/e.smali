.class La/f/e;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# instance fields
.field final a:La/f/c;


# direct methods
.method private constructor <init>(La/f/c;)V
    .registers 2

    iput-object p1, p0, La/f/e;->a:La/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/f/c;La/f/d;)V
    .registers 3

    invoke-direct {p0, p1}, La/f/e;-><init>(La/f/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    invoke-static {p1}, La/b/f/i;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, La/b/f/i;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    iget-object v2, p0, La/f/e;->a:La/f/c;

    invoke-static {v2}, La/f/c;->e(La/f/c;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-static {v0}, La/b/f/i;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, La/b/f/i;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8

    goto :goto_13
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 5

    invoke-static {p1}, La/f/c;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, La/b/e;->b()Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget-object v1, p0, La/f/e;->a:La/f/c;

    invoke-static {v1}, La/f/c;->a(La/f/c;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, La/f/e;->a:La/f/c;

    invoke-static {v2, v0}, La/f/c;->a(La/f/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, La/f/e;->a:La/f/c;

    invoke-static {v1}, La/f/c;->b(La/f/c;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, La/f/e;->a:La/f/c;

    invoke-static {v1}, La/f/c;->c(La/f/c;)Z

    move-result v1

    if-nez v1, :cond_41

    :cond_29
    invoke-virtual {p1}, La/b/e;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, La/f/e;->a:La/f/c;

    invoke-static {v1}, La/f/c;->b(La/f/c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    iget-object v1, p0, La/f/e;->a:La/f/c;

    invoke-static {v1}, La/f/c;->d(La/f/c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    const/4 v1, 0x1

    :goto_3e
    invoke-direct {p0, v2, v0, v1}, La/f/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_41
    return-void

    :cond_42
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method public a(La/b/k;)V
    .registers 5

    invoke-static {p1}, La/f/c;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v0, p0, La/f/e;->a:La/f/c;

    invoke-static {v0}, La/f/c;->a(La/f/c;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, La/f/e;->a:La/f/c;

    invoke-static {v2, v1}, La/f/c;->a(La/f/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f/e;->a:La/f/c;

    invoke-static {v0}, La/f/c;->b(La/f/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, La/f/e;->a:La/f/c;

    invoke-static {v0}, La/f/c;->c(La/f/c;)Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_25
    invoke-virtual {p1}, La/b/k;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, La/f/e;->a:La/f/c;

    invoke-static {v0}, La/f/c;->b(La/f/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    iget-object v0, p0, La/f/e;->a:La/f/c;

    invoke-static {v0}, La/f/c;->d(La/f/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    :goto_3a
    invoke-direct {p0, v2, v1, v0}, La/f/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3d
    return-void

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3a
.end method
