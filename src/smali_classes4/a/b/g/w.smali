.class public La/b/g/w;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:[La/b/c;

.field private final b:La/b/g/s;


# direct methods
.method public constructor <init>([La/b/c;La/b/g/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g/w;->a:[La/b/c;

    iput-object p2, p0, La/b/g/w;->b:La/b/g/s;

    return-void
.end method

.method private a(La/b/c;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, La/b/g/w;->a:[La/b/c;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    move v1, v0

    :goto_7
    iget-object v2, p0, La/b/g/w;->a:[La/b/c;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, La/b/g/w;->a:[La/b/c;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    goto :goto_5

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 3

    invoke-direct {p0, p1}, La/b/g/w;->a(La/b/c;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, La/b/g/w;->b:La/b/g/s;

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/e;)V

    :cond_b
    return-void
.end method

.method public a(La/b/k;)V
    .registers 3

    invoke-direct {p0, p1}, La/b/g/w;->a(La/b/c;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, La/b/g/w;->b:La/b/g/s;

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/k;)V

    :cond_b
    return-void
.end method
