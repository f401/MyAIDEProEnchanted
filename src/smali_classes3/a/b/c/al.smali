.class public La/b/c/al;
.super Ljava/lang/Object;

# interfaces
.implements La/b/a/d/l;


# instance fields
.field private final a:La/b/c/ad;

.field private final b:La/b/c/u;


# direct methods
.method public constructor <init>(La/b/k;La/b/c/u;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b/c/ad;

    invoke-direct {v0, p1}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object v0, p0, La/b/c/al;->a:La/b/c/ad;

    iput-object p2, p0, La/b/c/al;->b:La/b/c/u;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V
    .registers 7

    iget p2, p4, La/b/a/h;->a:I

    iget p3, p4, La/b/a/h;->b:I

    iget v0, p4, La/b/a/h;->c:I

    iget v1, p4, La/b/a/h;->d:I

    if-nez v1, :cond_c

    const/4 p1, 0x0

    goto :goto_14

    :cond_c
    iget-object v1, p0, La/b/c/al;->a:La/b/c/ad;

    iget p4, p4, La/b/a/h;->d:I

    invoke-virtual {v1, p1, p4}, La/b/c/ad;->a(La/b/c;I)I

    move-result p1

    :goto_14
    new-instance p4, La/b/a/h;

    invoke-direct {p4, p2, p3, v0, p1}, La/b/a/h;-><init>(IIII)V

    iget-object p1, p0, La/b/c/al;->b:La/b/c/u;

    invoke-virtual {p1, p4}, La/b/c/u;->a(La/b/a/h;)V

    return-void
.end method
