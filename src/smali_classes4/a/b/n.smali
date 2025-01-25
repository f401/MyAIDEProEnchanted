.class public La/b/n;
.super La/b/m;

# interfaces
.implements La/b/j;


# static fields
.field private static final h:[La/b/a/a;


# instance fields
.field public a:[La/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [La/b/a/a;

    sput-object v0, La/b/n;->h:[La/b/a/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/m;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII[La/b/a/a;[La/b/c;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, La/b/m;-><init>(IIII[La/b/a/a;)V

    iput-object p6, p0, La/b/n;->a:[La/b/c;

    return-void
.end method

.method public constructor <init>(III[La/b/c;)V
    .registers 12

    const/4 v4, 0x0

    sget-object v5, La/b/n;->h:[La/b/a/a;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, La/b/n;-><init>(IIII[La/b/a/a;[La/b/c;)V

    return-void
.end method


# virtual methods
.method public a(La/b/g/s;)V
    .registers 4

    iget-object v0, p0, La/b/n;->a:[La/b/c;

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, La/b/n;->a:[La/b/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, La/b/n;->a:[La/b/c;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    iget-object v1, p0, La/b/n;->a:[La/b/c;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, La/b/c;->a(La/b/g/s;)V

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1a
    return-void
.end method

.method public a(La/b/k;La/b/a/d/i;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La/b/n;->e:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, La/b/n;->f:[La/b/a/a;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p0, p2}, La/b/a/a;->a(La/b/c;La/b/j;La/b/a/d/i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public a(La/b/k;La/b/g/aq;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/g/aq;->a(La/b/k;La/b/n;)V

    return-void
.end method
