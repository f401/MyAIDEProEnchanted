.class public La/b/c/f;
.super La/b/f/w;

# interfaces
.implements La/b/a/a/b/f;


# static fields
.field private static final a:[La/b/a/a/h;


# instance fields
.field private final b:La/b/k;

.field private final c:La/b/a/a/c;

.field private final d:La/b/c/g;

.field private final e:La/b/c/bk;

.field private final f:La/b/c/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [La/b/a/a/h;

    sput-object v0, La/b/c/f;->a:[La/b/a/a/h;

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/a/a/c;)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/c/f;->b:La/b/k;

    iput-object p2, p0, La/b/c/f;->c:La/b/a/a/c;

    const/4 p2, 0x0

    iput-object p2, p0, La/b/c/f;->d:La/b/c/g;

    iput-object p2, p0, La/b/c/f;->e:La/b/c/bk;

    new-instance p2, La/b/c/ad;

    invoke-direct {p2, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object p2, p0, La/b/c/f;->f:La/b/c/ad;

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/a/a/d;)V
    .registers 5

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/c/f;->b:La/b/k;

    const/4 v0, 0x0

    iput-object v0, p0, La/b/c/f;->c:La/b/a/a/c;

    new-instance v1, La/b/c/g;

    invoke-direct {v1, p2}, La/b/c/g;-><init>(La/b/a/a/d;)V

    iput-object v1, p0, La/b/c/f;->d:La/b/c/g;

    iput-object v0, p0, La/b/c/f;->e:La/b/c/bk;

    new-instance p2, La/b/c/ad;

    invoke-direct {p2, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object p2, p0, La/b/c/f;->f:La/b/c/ad;

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/a/a/j;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/c/f;->b:La/b/k;

    const/4 v0, 0x0

    iput-object v0, p0, La/b/c/f;->c:La/b/a/a/c;

    iput-object v0, p0, La/b/c/f;->d:La/b/c/g;

    new-instance v0, La/b/c/bk;

    invoke-direct {v0, p2}, La/b/c/bk;-><init>(La/b/a/a/j;)V

    iput-object v0, p0, La/b/c/f;->e:La/b/c/bk;

    new-instance p2, La/b/c/ad;

    invoke-direct {p2, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object p2, p0, La/b/c/f;->f:La/b/c/ad;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/a;)V
    .registers 7

    iget-object v0, p0, La/b/c/f;->f:La/b/c/ad;

    iget v1, p2, La/b/a/a/a;->a:I

    invoke-virtual {v0, p1, v1}, La/b/c/ad;->a(La/b/c;I)I

    move-result v0

    iget v1, p2, La/b/a/a/a;->b:I

    if-lez v1, :cond_11

    iget v1, p2, La/b/a/a/a;->b:I

    new-array v1, v1, [La/b/a/a/h;

    goto :goto_13

    :cond_11
    sget-object v1, La/b/c/f;->a:[La/b/a/a/h;

    :goto_13
    new-instance v2, La/b/a/a/a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, La/b/a/a/a;-><init>(II[La/b/a/a/h;)V

    iget-object v0, p2, La/b/a/a/a;->d:[La/b/c;

    iput-object v0, v2, La/b/a/a/a;->d:[La/b/c;

    new-instance v0, La/b/c/ai;

    iget-object v1, p0, La/b/c/f;->b:La/b/k;

    invoke-direct {v0, v1, v2, v3}, La/b/c/ai;-><init>(La/b/k;La/b/a/a/a;Z)V

    invoke-virtual {p2, p1, v0}, La/b/a/a/a;->a(La/b/c;La/b/a/a/b/g;)V

    iget-object p1, p0, La/b/c/f;->c:La/b/a/a/c;

    if-eqz p1, :cond_2e

    iput-object v2, p1, La/b/a/a/c;->a:La/b/a/a/a;

    goto :goto_33

    :cond_2e
    iget-object p1, p0, La/b/c/f;->d:La/b/c/g;

    invoke-virtual {p1, v2}, La/b/c/g;->a(La/b/a/a/a;)V

    :goto_33
    return-void
.end method

.method public a(La/b/c;La/b/j;ILa/b/a/a/a;)V
    .registers 8

    iget-object p2, p0, La/b/c/f;->f:La/b/c/ad;

    iget v0, p4, La/b/a/a/a;->a:I

    invoke-virtual {p2, p1, v0}, La/b/c/ad;->a(La/b/c;I)I

    move-result p2

    iget v0, p4, La/b/a/a/a;->b:I

    if-lez v0, :cond_11

    iget v0, p4, La/b/a/a/a;->b:I

    new-array v0, v0, [La/b/a/a/h;

    goto :goto_13

    :cond_11
    sget-object v0, La/b/c/f;->a:[La/b/a/a/h;

    :goto_13
    new-instance v1, La/b/a/a/a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v0}, La/b/a/a/a;-><init>(II[La/b/a/a/h;)V

    iget-object p2, p4, La/b/a/a/a;->d:[La/b/c;

    iput-object p2, v1, La/b/a/a/a;->d:[La/b/c;

    new-instance p2, La/b/c/ai;

    iget-object v0, p0, La/b/c/f;->b:La/b/k;

    invoke-direct {p2, v0, v1, v2}, La/b/c/ai;-><init>(La/b/k;La/b/a/a/a;Z)V

    invoke-virtual {p4, p1, p2}, La/b/a/a/a;->a(La/b/c;La/b/a/a/b/g;)V

    iget-object p1, p0, La/b/c/f;->e:La/b/c/bk;

    invoke-virtual {p1, p3, v1}, La/b/c/bk;->a(ILa/b/a/a/a;)V

    return-void
.end method
