.class public La/b/g/bm;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:La/b/c;

.field private final b:La/b/g/s;


# direct methods
.method public constructor <init>(La/b/c;La/b/g/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g/bm;->a:La/b/c;

    iput-object p2, p0, La/b/g/bm;->b:La/b/g/s;

    return-void
.end method

.method private a([La/b/c;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    move v1, v0

    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    iget-object v3, p0, La/b/g/bm;->a:La/b/c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    goto :goto_3

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 3

    iget-object v0, p1, La/b/e;->i:[La/b/c;

    invoke-direct {p0, v0}, La/b/g/bm;->a([La/b/c;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, La/b/g/bm;->b:La/b/g/s;

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/e;)V

    :cond_d
    return-void
.end method

.method public a(La/b/k;)V
    .registers 3

    iget-object v0, p1, La/b/k;->o:[La/b/c;

    invoke-direct {p0, v0}, La/b/g/bm;->a([La/b/c;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, La/b/g/bm;->b:La/b/g/s;

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/k;)V

    :cond_d
    return-void
.end method
