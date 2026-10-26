.class public La/b/a/q;
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

.field public f:[La/b/c;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/b/a/q;->a:I

    iput p2, p0, La/b/a/q;->b:I

    iput p3, p0, La/b/a/q;->c:I

    iput p4, p0, La/b/a/q;->d:I

    iput p5, p0, La/b/a/q;->e:I

    return-void
.end method


# virtual methods
.method public a(La/b/c;)Ljava/lang/String;
    .locals 1

    iget v0, p0, La/b/a/q;->c:I

    invoke-interface {p1, v0}, La/b/c;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(La/b/g/s;)V
    .locals 3

    iget-object v0, p0, La/b/a/q;->f:[La/b/c;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, La/b/a/q;->f:[La/b/c;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, La/b/c;->a(La/b/g/s;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La/b/a/q;->g:Ljava/lang/Object;

    return-void
.end method

.method public b(La/b/c;)Ljava/lang/String;
    .locals 1

    iget v0, p0, La/b/a/q;->d:I

    invoke-interface {p1, v0}, La/b/c;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, La/b/a/q;

    iget v1, p0, La/b/a/q;->a:I

    iget v2, p1, La/b/a/q;->a:I

    if-ge v1, v2, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    if-gt v1, v2, :cond_1

    iget v1, p0, La/b/a/q;->b:I

    iget v2, p1, La/b/a/q;->b:I

    if-lt v1, v2, :cond_0

    if-gt v1, v2, :cond_1

    iget v1, p0, La/b/a/q;->e:I

    iget v2, p1, La/b/a/q;->e:I

    if-lt v1, v2, :cond_0

    if-gt v1, v2, :cond_1

    iget v1, p0, La/b/a/q;->d:I

    iget v2, p1, La/b/a/q;->d:I

    if-lt v1, v2, :cond_0

    if-gt v1, v2, :cond_1

    iget v1, p0, La/b/a/q;->c:I

    iget v2, p1, La/b/a/q;->c:I

    if-lt v1, v2, :cond_0

    if-gt v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/b/a/q;->g:Ljava/lang/Object;

    return-object v0
.end method
