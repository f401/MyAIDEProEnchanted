.class public La/b/c/br;
.super La/b/f/w;

# interfaces
.implements La/b/a/a/b/h;


# static fields
.field private static final a:[La/b/a/a/h;


# instance fields
.field private final b:La/b/k;

.field private final c:La/b/a/a/c;

.field private final d:La/b/c/g;

.field private final e:La/b/c/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [La/b/a/a/h;

    sput-object v0, La/b/c/br;->a:[La/b/a/a/h;

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/a/a/d;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/c/br;->b:La/b/k;

    const/4 v0, 0x0

    iput-object v0, p0, La/b/c/br;->c:La/b/a/a/c;

    new-instance v0, La/b/c/g;

    invoke-direct {v0, p2}, La/b/c/g;-><init>(La/b/a/a/d;)V

    iput-object v0, p0, La/b/c/br;->d:La/b/c/g;

    new-instance p2, La/b/c/ad;

    invoke-direct {p2, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object p2, p0, La/b/c/br;->e:La/b/c/ad;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/q;)V
    .registers 12

    iget-object v0, p2, La/b/a/a/q;->g:[La/b/a/a/s;

    array-length v1, v0

    new-array v1, v1, [La/b/a/a/s;

    iget-object v2, p0, La/b/c/br;->e:La/b/c/ad;

    iget v3, p2, La/b/a/a/q;->a:I

    invoke-virtual {v2, p1, v3}, La/b/c/ad;->a(La/b/c;I)I

    move-result v3

    iget v2, p2, La/b/a/a/q;->b:I

    if-lez v2, :cond_16

    iget v2, p2, La/b/a/a/q;->b:I

    new-array v2, v2, [La/b/a/a/h;

    goto :goto_18

    :cond_16
    sget-object v2, La/b/c/br;->a:[La/b/a/a/h;

    :goto_18
    move-object v5, v2

    new-instance v8, La/b/a/a/q;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, La/b/a/a/q;-><init>(II[La/b/a/a/h;La/b/a/a/a/h;[La/b/a/a/s;)V

    iget-object v2, p2, La/b/a/a/q;->d:[La/b/c;

    iput-object v2, v8, La/b/a/a/q;->d:[La/b/c;

    new-instance v2, La/b/c/ai;

    iget-object v3, p0, La/b/c/br;->b:La/b/k;

    invoke-direct {v2, v3, v8, v4}, La/b/c/ai;-><init>(La/b/k;La/b/a/a/a;Z)V

    invoke-virtual {p2, p1, v2}, La/b/a/a/q;->a(La/b/c;La/b/a/a/b/g;)V

    iget-object v2, p2, La/b/a/a/q;->f:La/b/a/a/a/h;

    new-instance v3, La/b/c/bq;

    iget-object v5, p0, La/b/c/br;->b:La/b/k;

    invoke-direct {v3, v5, v8}, La/b/c/bq;-><init>(La/b/k;La/b/a/a/q;)V

    invoke-virtual {v2, p1, p2, v3}, La/b/a/a/a/h;->a(La/b/c;La/b/a/a/q;La/b/a/a/a/a/b;)V

    :goto_3c
    array-length p1, v0

    if-ge v4, p1, :cond_4f

    aget-object p1, v0, v4

    new-instance p2, La/b/a/a/s;

    iget v2, p1, La/b/a/a/s;->a:I

    iget p1, p1, La/b/a/a/s;->b:I

    invoke-direct {p2, v2, p1}, La/b/a/a/s;-><init>(II)V

    aput-object p2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_4f
    iget-object p1, p0, La/b/c/br;->c:La/b/a/a/c;

    if-eqz p1, :cond_56

    iput-object v8, p1, La/b/a/a/c;->a:La/b/a/a/a;

    goto :goto_5b

    :cond_56
    iget-object p1, p0, La/b/c/br;->d:La/b/c/g;

    invoke-virtual {p1, v8}, La/b/c/g;->a(La/b/a/a/a;)V

    :goto_5b
    return-void
.end method
