.class public La/b/g/aa;
.super Ljava/lang/Object;

# interfaces
.implements La/b/a/d/l;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:La/b/a/d/l;


# direct methods
.method public constructor <init>(IILa/b/a/d/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/b/g/aa;->a:I

    iput p2, p0, La/b/g/aa;->b:I

    iput-object p3, p0, La/b/g/aa;->c:La/b/a/d/l;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V
    .registers 7

    iget v0, p4, La/b/a/h;->c:I

    iget v1, p0, La/b/g/aa;->a:I

    if-lt v0, v1, :cond_f

    iget v1, p0, La/b/g/aa;->b:I

    if-ge v0, v1, :cond_f

    iget-object v0, p0, La/b/g/aa;->c:La/b/a/d/l;

    invoke-interface {v0, p1, p2, p3, p4}, La/b/a/d/l;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V

    :cond_f
    return-void
.end method
