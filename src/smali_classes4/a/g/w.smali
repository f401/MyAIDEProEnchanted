.class public La/g/w;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# instance fields
.field private final a:La/b/g/aq;

.field private final b:La/b/c/bu;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/g/w;-><init>(La/b/g/aq;)V

    return-void
.end method

.method public constructor <init>(La/b/g/aq;)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/bu;

    invoke-direct {v0}, La/b/c/bu;-><init>()V

    iput-object v0, p0, La/g/w;->b:La/b/c/bu;

    iput-object p1, p0, La/g/w;->a:La/b/g/aq;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 11

    const/4 v1, 0x0

    invoke-static {p2}, La/g/b/ad;->a(La/b/j;)I

    move-result v3

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, La/b/j;->a()I

    move-result v2

    invoke-static {v0, v2}, La/b/f/i;->c(Ljava/lang/String;I)I

    move-result v0

    if-le v3, v0, :cond_4a

    iget v5, p3, La/b/a/d;->d:I

    new-array v6, v5, [I

    move v4, v1

    move v2, v1

    :goto_19
    if-ge v4, v3, :cond_38

    invoke-static {p2, v4}, La/g/b/ad;->b(La/b/j;I)Z

    move-result v1

    if-eqz v1, :cond_29

    add-int/lit8 v1, v2, 0x1

    aput v2, v6, v4

    :goto_25
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_19

    :cond_29
    aput v0, v6, v4

    iget-object v1, p0, La/g/w;->a:La/b/g/aq;

    if-eqz v1, :cond_34

    iget-object v1, p0, La/g/w;->a:La/b/g/aq;

    invoke-interface {p2, p1, v1}, La/b/j;->a(La/b/c;La/b/g/aq;)V

    :cond_34
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_25

    :cond_38
    move v0, v3

    :goto_39
    if-ge v0, v5, :cond_40

    aput v0, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_40
    iget-object v0, p0, La/g/w;->b:La/b/c/bu;

    invoke-virtual {v0, v6}, La/b/c/bu;->a([I)V

    iget-object v0, p0, La/g/w;->b:La/b/c/bu;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/bu;->a(La/b/c;La/b/j;La/b/a/d;)V

    :cond_4a
    return-void
.end method
