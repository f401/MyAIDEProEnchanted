.class public La/b/g/q;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:La/b/g/s;


# direct methods
.method public constructor <init>(IILa/b/g/s;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/b/g/q;->a:I

    iput p2, p0, La/b/g/q;->b:I

    iput-object p3, p0, La/b/g/q;->c:La/b/g/s;

    return-void
.end method

.method public constructor <init>(ILa/b/g/s;)V
    .registers 4

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0, p2}, La/b/g/q;-><init>(IILa/b/g/s;)V

    return-void
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 2

    return-void
.end method

.method public a(La/b/k;)V
    .registers 4

    iget v0, p1, La/b/k;->a:I

    iget v1, p0, La/b/g/q;->a:I

    if-lt v0, v1, :cond_11

    iget v0, p1, La/b/k;->a:I

    iget v1, p0, La/b/g/q;->b:I

    if-gt v0, v1, :cond_11

    iget-object v0, p0, La/b/g/q;->c:La/b/g/s;

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/k;)V

    :cond_11
    return-void
.end method
