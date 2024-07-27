.class public Lorg/c/a/a/b/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:[Lorg/c/a/a/b/a/b/a;


# direct methods
.method public constructor <init>([Lorg/c/a/a/b/a/b/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/a/b;->a:[Lorg/c/a/a/b/a/b/a;

    return-void
.end method


# virtual methods
.method public a(I)Lorg/c/a/a/b/a/b/a;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/b/a/b;->a:[Lorg/c/a/a/b/a/b/a;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/b/a/b;->a:[Lorg/c/a/a/b/a/b/a;

    aget-object v0, v0, p1

    check-cast v0, Lorg/c/a/a/b/a/b/b;

    iget-object v1, p0, Lorg/c/a/a/b/a/b;->a:[Lorg/c/a/a/b/a/b/a;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/b;->b()I

    move-result v0

    aget-object v0, v1, v0

    check-cast v0, Lorg/c/a/a/b/a/b/l;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/b/a/b;->a:[Lorg/c/a/a/b/a/b/a;

    aget-object v0, v0, p1

    check-cast v0, Lorg/c/a/a/b/a/b/k;

    iget-object v1, p0, Lorg/c/a/a/b/a/b;->a:[Lorg/c/a/a/b/a/b/a;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/k;->b()I

    move-result v0

    aget-object v0, v1, v0

    check-cast v0, Lorg/c/a/a/b/a/b/l;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/b/a/b;->a:[Lorg/c/a/a/b/a/b/a;

    aget-object v0, v0, p1

    check-cast v0, Lorg/c/a/a/b/a/b/l;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lorg/c/a/a/b/a/b/m;
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/b/a/b;->a:[Lorg/c/a/a/b/a/b/a;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/a;->a()B

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/c/a/a/b/a/b;->a:[Lorg/c/a/a/b/a/b/a;

    check-cast v0, Lorg/c/a/a/b/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/k;->b()I

    move-result v0

    aget-object v0, v1, v0

    :cond_0
    check-cast v0, Lorg/c/a/a/b/a/b/m;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ConstantPool"

    return-object v0
.end method
