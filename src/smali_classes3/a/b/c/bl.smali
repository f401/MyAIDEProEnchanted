.class public La/b/c/bl;
.super Ljava/lang/Object;

# interfaces
.implements La/b/a/d/u;


# instance fields
.field private final a:La/b/c/ad;

.field private final b:La/b/a/s;


# direct methods
.method public constructor <init>(La/b/k;La/b/a/s;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b/c/ad;

    invoke-direct {v0, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/bl;->a:La/b/c/ad;

    iput-object p2, p0, La/b/c/bl;->b:La/b/a/s;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;ILa/b/a/t;)V
    .registers 6

    iget p2, p4, La/b/a/t;->a:I

    if-nez p2, :cond_6

    const/4 p1, 0x0

    goto :goto_e

    :cond_6
    iget-object p2, p0, La/b/c/bl;->a:La/b/c/ad;

    iget v0, p4, La/b/a/t;->a:I

    invoke-virtual {p2, p1, v0}, La/b/c/ad;->a(La/b/c;I)I

    move-result p1

    :goto_e
    new-instance p2, La/b/a/t;

    iget p4, p4, La/b/a/t;->b:I

    invoke-direct {p2, p1, p4}, La/b/a/t;-><init>(II)V

    iget-object p1, p0, La/b/c/bl;->b:La/b/a/s;

    iget-object p1, p1, La/b/a/s;->d:[La/b/a/t;

    aput-object p2, p1, p3

    return-void
.end method
