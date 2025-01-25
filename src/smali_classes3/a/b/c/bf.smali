.class public La/b/c/bf;
.super La/b/f/w;

# interfaces
.implements La/b/g/aq;


# static fields
.field private static final a:[La/b/a/a;


# instance fields
.field private final b:La/b/k;

.field private final c:La/j/v;

.field private final d:La/b/g/aq;

.field private final e:La/b/c/r;

.field private final f:La/b/c/ae;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [La/b/a/a;

    sput-object v0, La/b/c/bf;->a:[La/b/a/a;

    return-void
.end method

.method public constructor <init>(La/b/k;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/b/c/bf;-><init>(La/b/k;La/b/g/aq;)V

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/g/aq;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, La/b/c/bf;-><init>(La/b/k;La/j/v;La/b/g/aq;)V

    return-void
.end method

.method public constructor <init>(La/b/k;La/j/v;La/b/g/aq;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/c/bf;->b:La/b/k;

    iput-object p2, p0, La/b/c/bf;->c:La/j/v;

    iput-object p3, p0, La/b/c/bf;->d:La/b/g/aq;

    new-instance p2, La/b/c/r;

    invoke-direct {p2, p1}, La/b/c/r;-><init>(La/b/k;)V

    iput-object p2, p0, La/b/c/bf;->e:La/b/c/r;

    new-instance p2, La/b/c/ae;

    invoke-direct {p2, p1}, La/b/c/ae;-><init>(La/b/k;)V

    iput-object p2, p0, La/b/c/bf;->f:La/b/c/ae;

    return-void
.end method


# virtual methods
.method public a(La/b/k;La/b/l;)V
    .registers 12

    invoke-virtual {p2, p1}, La/b/l;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, La/b/l;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, La/b/l;->a()I

    move-result v3

    iget-object v2, p0, La/b/c/bf;->c:La/j/v;

    if-eqz v2, :cond_14

    invoke-interface {v2, v0}, La/j/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    iget-object v2, p0, La/b/c/bf;->f:La/b/c/ae;

    invoke-virtual {v2, v0}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, La/b/c/bf;->f:La/b/c/ae;

    invoke-virtual {v0, v1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v5

    iget v0, p2, La/b/l;->e:I

    if-lez v0, :cond_29

    iget v0, p2, La/b/l;->e:I

    new-array v0, v0, [La/b/a/a;

    goto :goto_2b

    :cond_29
    sget-object v0, La/b/c/bf;->a:[La/b/a/a;

    :goto_2b
    move-object v7, v0

    new-instance v0, La/b/l;

    const/4 v6, 0x0

    iget-object v8, p2, La/b/l;->a:La/b/c;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, La/b/l;-><init>(IIII[La/b/a/a;La/b/c;)V

    invoke-virtual {v0, p2}, La/b/l;->a(Ljava/lang/Object;)V

    new-instance v1, La/b/c/h;

    iget-object v2, p0, La/b/c/bf;->b:La/b/k;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, La/b/c/h;-><init>(La/b/k;La/b/m;Z)V

    invoke-virtual {p2, p1, v1}, La/b/l;->a(La/b/k;La/b/a/d/i;)V

    iget-object p1, p0, La/b/c/bf;->e:La/b/c/r;

    invoke-virtual {p1, v0}, La/b/c/r;->a(La/b/d;)V

    iget-object p1, p0, La/b/c/bf;->d:La/b/g/aq;

    if-eqz p1, :cond_51

    iget-object p2, p0, La/b/c/bf;->b:La/b/k;

    invoke-interface {p1, p2, v0}, La/b/g/aq;->a(La/b/k;La/b/l;)V

    :cond_51
    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 14

    invoke-virtual {p2, p1}, La/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, La/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, La/b/n;->a()I

    move-result v2

    iget-object v3, p0, La/b/c/bf;->c:La/j/v;

    if-eqz v3, :cond_14

    invoke-interface {v3, v0}, La/j/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    iget-object v3, p0, La/b/c/bf;->b:La/b/k;

    invoke-virtual {v3, v0, v1}, La/b/k;->b(Ljava/lang/String;Ljava/lang/String;)La/b/j;

    move-result-object v3

    check-cast v3, La/b/n;

    if-eqz v3, :cond_3b

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_23

    goto :goto_81

    :cond_23
    invoke-virtual {v3}, La/b/n;->a()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_3b

    and-int/lit8 v0, v2, -0x11

    iput v0, v3, La/b/n;->b:I

    new-instance v0, La/b/c/h;

    iget-object v1, p0, La/b/c/bf;->b:La/b/k;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, La/b/c/h;-><init>(La/b/k;La/b/m;Z)V

    invoke-virtual {p2, p1, v0}, La/b/n;->a(La/b/k;La/b/a/d/i;)V

    goto :goto_81

    :cond_3b
    iget-object v3, p0, La/b/c/bf;->f:La/b/c/ae;

    invoke-virtual {v3, v0}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, La/b/c/bf;->f:La/b/c/ae;

    invoke-virtual {v0, v1}, La/b/c/ae;->c(Ljava/lang/String;)I

    move-result v7

    iget v0, p2, La/b/n;->e:I

    if-lez v0, :cond_50

    iget v0, p2, La/b/n;->e:I

    new-array v0, v0, [La/b/a/a;

    goto :goto_52

    :cond_50
    sget-object v0, La/b/c/bf;->a:[La/b/a/a;

    :goto_52
    move-object v9, v0

    new-instance v0, La/b/n;

    and-int/lit8 v5, v2, -0x11

    const/4 v8, 0x0

    iget-object v1, p2, La/b/n;->a:[La/b/c;

    invoke-static {v1}, La/j/b;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [La/b/c;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, La/b/n;-><init>(IIII[La/b/a/a;[La/b/c;)V

    invoke-virtual {v0, p2}, La/b/n;->a(Ljava/lang/Object;)V

    new-instance v1, La/b/c/h;

    iget-object v2, p0, La/b/c/bf;->b:La/b/k;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, La/b/c/h;-><init>(La/b/k;La/b/m;Z)V

    invoke-virtual {p2, p1, v1}, La/b/n;->a(La/b/k;La/b/a/d/i;)V

    iget-object p1, p0, La/b/c/bf;->e:La/b/c/r;

    invoke-virtual {p1, v0}, La/b/c/r;->a(La/b/j;)V

    iget-object p1, p0, La/b/c/bf;->d:La/b/g/aq;

    if-eqz p1, :cond_81

    iget-object p2, p0, La/b/c/bf;->b:La/b/k;

    invoke-interface {p1, p2, v0}, La/b/g/aq;->a(La/b/k;La/b/n;)V

    :cond_81
    :goto_81
    return-void
.end method
