.class public La/b/g/aj;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/aq;


# instance fields
.field private final a:La/b/c;

.field private final b:La/b/g/aq;


# direct methods
.method public constructor <init>(La/b/c;La/b/g/aq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g/aj;->a:La/b/c;

    iput-object p2, p0, La/b/g/aj;->b:La/b/g/aq;

    return-void
.end method

.method private a(La/b/c;I)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {p2}, La/b/f/a;->a(I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3f

    if-ltz v1, :cond_12

    iget-object v2, p0, La/b/g/aj;->a:La/b/c;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_12
    if-lt v1, v0, :cond_2c

    iget-object v2, p0, La/b/g/aj;->a:La/b/c;

    invoke-interface {v2}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/b/f/i;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La/b/f/i;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_2c
    const/4 v2, 0x2

    if-lt v1, v2, :cond_40

    iget-object v1, p0, La/b/g/aj;->a:La/b/c;

    invoke-interface {v1, p1}, La/b/c;->b(La/b/c;)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, La/b/g/aj;->a:La/b/c;

    invoke-interface {v1, p1}, La/b/c;->c(La/b/c;)Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_3f
    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method


# virtual methods
.method public a(La/b/e;La/b/f;)V
    .registers 4

    invoke-virtual {p2}, La/b/f;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, La/b/g/aj;->a(La/b/c;I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, La/b/g/aj;->b:La/b/g/aq;

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/e;La/b/f;)V

    :cond_f
    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 4

    invoke-virtual {p2}, La/b/h;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, La/b/g/aj;->a(La/b/c;I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, La/b/g/aj;->b:La/b/g/aq;

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/e;La/b/h;)V

    :cond_f
    return-void
.end method

.method public a(La/b/k;La/b/l;)V
    .registers 4

    invoke-virtual {p2}, La/b/l;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, La/b/g/aj;->a(La/b/c;I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, La/b/g/aj;->b:La/b/g/aq;

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/k;La/b/l;)V

    :cond_f
    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 4

    invoke-virtual {p2}, La/b/n;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, La/b/g/aj;->a(La/b/c;I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, La/b/g/aj;->b:La/b/g/aq;

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/k;La/b/n;)V

    :cond_f
    return-void
.end method
