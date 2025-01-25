.class public La/b/a/o;
.super Ljava/lang/Object;

# interfaces
.implements La/b/o;
.implements Ljava/lang/Comparable;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:La/b/c;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/b/a/o;->a:I

    iput p2, p0, La/b/a/o;->b:I

    iput p3, p0, La/b/a/o;->c:I

    iput p4, p0, La/b/a/o;->d:I

    iput p5, p0, La/b/a/o;->e:I

    return-void
.end method


# virtual methods
.method public a(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/a/o;->c:I

    invoke-interface {p1, v0}, La/b/c;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(La/b/g/s;)V
    .registers 3

    iget-object v0, p0, La/b/a/o;->f:La/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, La/b/c;->a(La/b/g/s;)V

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, La/b/a/o;->g:Ljava/lang/Object;

    return-void
.end method

.method public b(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/a/o;->d:I

    invoke-interface {p1, v0}, La/b/c;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 5

    check-cast p1, La/b/a/o;

    iget v0, p0, La/b/a/o;->a:I

    iget v1, p1, La/b/a/o;->a:I

    if-ge v0, v1, :cond_9

    goto :goto_33

    :cond_9
    const/4 v2, 0x1

    if-le v0, v1, :cond_d

    goto :goto_34

    :cond_d
    iget v0, p0, La/b/a/o;->e:I

    iget v1, p1, La/b/a/o;->e:I

    if-lt v0, v1, :cond_33

    if-le v0, v1, :cond_16

    goto :goto_34

    :cond_16
    iget v0, p0, La/b/a/o;->b:I

    iget v1, p1, La/b/a/o;->b:I

    if-lt v0, v1, :cond_33

    if-le v0, v1, :cond_1f

    goto :goto_34

    :cond_1f
    iget v0, p0, La/b/a/o;->d:I

    iget v1, p1, La/b/a/o;->d:I

    if-lt v0, v1, :cond_33

    if-le v0, v1, :cond_28

    goto :goto_34

    :cond_28
    iget v0, p0, La/b/a/o;->c:I

    iget p1, p1, La/b/a/o;->c:I

    if-lt v0, p1, :cond_33

    if-le v0, p1, :cond_31

    goto :goto_34

    :cond_31
    const/4 v2, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v2, -0x1

    :goto_34
    return v2
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La/b/a/o;->g:Ljava/lang/Object;

    return-object v0
.end method
