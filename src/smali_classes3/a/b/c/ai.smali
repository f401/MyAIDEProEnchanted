.class public La/b/c/ai;
.super Ljava/lang/Object;

# interfaces
.implements La/b/a/a/b/g;


# static fields
.field private static final a:[La/b/a/a/h;


# instance fields
.field private final b:La/b/k;

.field private final c:La/b/a/a/b;

.field private final d:La/b/c/ad;

.field private final e:La/b/c/aj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [La/b/a/a/h;

    sput-object v0, La/b/c/ai;->a:[La/b/a/a/h;

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/a/a/a;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/ai;->b:La/b/k;

    const/4 v0, 0x0

    iput-object v0, p0, La/b/c/ai;->c:La/b/a/a/b;

    new-instance v0, La/b/c/ad;

    invoke-direct {v0, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/ai;->d:La/b/c/ad;

    new-instance v0, La/b/c/aj;

    invoke-direct {v0, p1, p2, p3}, La/b/c/aj;-><init>(La/b/k;La/b/a/a/a;Z)V

    iput-object v0, p0, La/b/c/ai;->e:La/b/c/aj;

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/a/a/b;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/ai;->b:La/b/k;

    iput-object p2, p0, La/b/c/ai;->c:La/b/a/a/b;

    new-instance p2, La/b/c/ad;

    invoke-direct {p2, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object p2, p0, La/b/c/ai;->d:La/b/c/ad;

    const/4 p1, 0x0

    iput-object p1, p0, La/b/c/ai;->e:La/b/c/aj;

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/a/a/e;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/ai;->b:La/b/k;

    const/4 v0, 0x0

    iput-object v0, p0, La/b/c/ai;->c:La/b/a/a/b;

    new-instance v0, La/b/c/ad;

    invoke-direct {v0, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/ai;->d:La/b/c/ad;

    new-instance v0, La/b/c/aj;

    invoke-direct {v0, p1, p2, p3}, La/b/c/aj;-><init>(La/b/k;La/b/a/a/e;Z)V

    iput-object v0, p0, La/b/c/ai;->e:La/b/c/aj;

    return-void
.end method

.method private a(La/b/a/a/h;)V
    .registers 3

    iget-object v0, p0, La/b/c/ai;->c:La/b/a/a/b;

    if-eqz v0, :cond_7

    iput-object p1, v0, La/b/a/a/b;->c:La/b/a/a/h;

    goto :goto_c

    :cond_7
    iget-object v0, p0, La/b/c/ai;->e:La/b/c/aj;

    invoke-virtual {v0, p1}, La/b/c/aj;->a(La/b/a/a/h;)V

    :goto_c
    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/a;La/b/a/a/c;)V
    .registers 6

    iget p2, p3, La/b/a/a/c;->c:I

    if-nez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_e

    :cond_6
    iget-object p2, p0, La/b/c/ai;->d:La/b/c/ad;

    iget v0, p3, La/b/a/a/c;->c:I

    invoke-virtual {p2, p1, v0}, La/b/c/ad;->a(La/b/c;I)I

    move-result p2

    :goto_e
    new-instance v0, La/b/a/a/c;

    new-instance v1, La/b/a/a/a;

    invoke-direct {v1}, La/b/a/a/a;-><init>()V

    invoke-direct {v0, p2, v1}, La/b/a/a/c;-><init>(ILa/b/a/a/a;)V

    iget-object p2, p3, La/b/a/a/c;->d:La/b/c;

    iput-object p2, v0, La/b/a/a/c;->d:La/b/c;

    iget-object p2, p3, La/b/a/a/c;->e:La/b/j;

    iput-object p2, v0, La/b/a/a/c;->e:La/b/j;

    new-instance p2, La/b/c/f;

    iget-object v1, p0, La/b/c/ai;->b:La/b/k;

    invoke-direct {p2, v1, v0}, La/b/c/f;-><init>(La/b/k;La/b/a/a/c;)V

    invoke-virtual {p3, p1, p2}, La/b/a/a/c;->a(La/b/c;La/b/a/a/b/f;)V

    invoke-direct {p0, v0}, La/b/c/ai;->a(La/b/a/a/h;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/e;)V
    .registers 8

    iget v0, p3, La/b/a/a/e;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_f

    :cond_7
    iget-object v0, p0, La/b/c/ai;->d:La/b/c/ad;

    iget v2, p3, La/b/a/a/e;->c:I

    invoke-virtual {v0, p1, v2}, La/b/c/ad;->a(La/b/c;I)I

    move-result v0

    :goto_f
    iget v2, p3, La/b/a/a/e;->a:I

    if-lez v2, :cond_18

    iget v2, p3, La/b/a/a/e;->a:I

    new-array v2, v2, [La/b/a/a/h;

    goto :goto_1a

    :cond_18
    sget-object v2, La/b/c/ai;->a:[La/b/a/a/h;

    :goto_1a
    new-instance v3, La/b/a/a/e;

    invoke-direct {v3, v0, v1, v2}, La/b/a/a/e;-><init>(II[La/b/a/a/h;)V

    iget-object v0, p3, La/b/a/a/e;->d:La/b/c;

    iput-object v0, v3, La/b/a/a/e;->d:La/b/c;

    iget-object v0, p3, La/b/a/a/e;->e:La/b/j;

    iput-object v0, v3, La/b/a/a/e;->e:La/b/j;

    new-instance v0, La/b/c/ai;

    iget-object v2, p0, La/b/c/ai;->b:La/b/k;

    invoke-direct {v0, v2, v3, v1}, La/b/c/ai;-><init>(La/b/k;La/b/a/a/e;Z)V

    invoke-virtual {p3, p1, p2, v0}, La/b/a/a/e;->b(La/b/c;La/b/a/a/a;La/b/a/a/b/g;)V

    invoke-direct {p0, v3}, La/b/c/ai;->a(La/b/a/a/h;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/f;)V
    .registers 7

    iget p2, p3, La/b/a/a/f;->c:I

    if-nez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_e

    :cond_6
    iget-object p2, p0, La/b/c/ai;->d:La/b/c/ad;

    iget v0, p3, La/b/a/a/f;->c:I

    invoke-virtual {p2, p1, v0}, La/b/c/ad;->a(La/b/c;I)I

    move-result p2

    :goto_e
    new-instance v0, La/b/a/a/f;

    iget-object v1, p0, La/b/c/ai;->d:La/b/c/ad;

    iget v2, p3, La/b/a/a/f;->a:I

    invoke-virtual {v1, p1, v2}, La/b/c/ad;->a(La/b/c;I)I

    move-result p1

    invoke-direct {v0, p2, p1}, La/b/a/a/f;-><init>(II)V

    iget-object p1, p3, La/b/a/a/f;->d:La/b/c;

    iput-object p1, v0, La/b/a/a/f;->d:La/b/c;

    iget-object p1, p3, La/b/a/a/f;->e:La/b/j;

    iput-object p1, v0, La/b/a/a/f;->e:La/b/j;

    iget-object p1, p3, La/b/a/a/f;->b:[La/b/c;

    iput-object p1, v0, La/b/a/a/f;->b:[La/b/c;

    invoke-direct {p0, v0}, La/b/c/ai;->a(La/b/a/a/h;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/g;)V
    .registers 8

    iget-char p2, p3, La/b/a/a/g;->a:C

    iget v0, p3, La/b/a/a/g;->c:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    iget-object v0, p0, La/b/c/ai;->d:La/b/c/ad;

    iget v1, p3, La/b/a/a/g;->c:I

    invoke-virtual {v0, p1, v1}, La/b/c/ad;->a(La/b/c;I)I

    move-result v0

    :goto_10
    new-instance v1, La/b/a/a/g;

    iget-object v2, p0, La/b/c/ai;->d:La/b/c/ad;

    iget v3, p3, La/b/a/a/g;->b:I

    invoke-virtual {v2, p1, v3}, La/b/c/ad;->a(La/b/c;I)I

    move-result p1

    invoke-direct {v1, p2, v0, p1}, La/b/a/a/g;-><init>(CII)V

    iget-object p1, p3, La/b/a/a/g;->d:La/b/c;

    iput-object p1, v1, La/b/a/a/g;->d:La/b/c;

    iget-object p1, p3, La/b/a/a/g;->e:La/b/j;

    iput-object p1, v1, La/b/a/a/g;->e:La/b/j;

    invoke-direct {p0, v1}, La/b/c/ai;->a(La/b/a/a/h;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/i;)V
    .registers 8

    iget p2, p3, La/b/a/a/i;->c:I

    if-nez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_e

    :cond_6
    iget-object p2, p0, La/b/c/ai;->d:La/b/c/ad;

    iget v0, p3, La/b/a/a/i;->c:I

    invoke-virtual {p2, p1, v0}, La/b/c/ad;->a(La/b/c;I)I

    move-result p2

    :goto_e
    new-instance v0, La/b/a/a/i;

    iget-object v1, p0, La/b/c/ai;->d:La/b/c/ad;

    iget v2, p3, La/b/a/a/i;->a:I

    invoke-virtual {v1, p1, v2}, La/b/c/ad;->a(La/b/c;I)I

    move-result v1

    iget-object v2, p0, La/b/c/ai;->d:La/b/c/ad;

    iget v3, p3, La/b/a/a/i;->b:I

    invoke-virtual {v2, p1, v3}, La/b/c/ad;->a(La/b/c;I)I

    move-result p1

    invoke-direct {v0, p2, v1, p1}, La/b/a/a/i;-><init>(III)V

    iget-object p1, p3, La/b/a/a/i;->d:La/b/c;

    iput-object p1, v0, La/b/a/a/i;->d:La/b/c;

    iget-object p1, p3, La/b/a/a/i;->e:La/b/j;

    iput-object p1, v0, La/b/a/a/i;->e:La/b/j;

    iget-object p1, p3, La/b/a/a/i;->g:[La/b/c;

    iput-object p1, v0, La/b/a/a/i;->g:[La/b/c;

    invoke-direct {p0, v0}, La/b/c/ai;->a(La/b/a/a/h;)V

    return-void
.end method
