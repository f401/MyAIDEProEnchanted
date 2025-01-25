.class public Lorg/a/a/a/a/bf;
.super Lorg/a/a/a/a/bl;


# instance fields
.field public final a:Lorg/a/a/a/c/j;


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/n;Lorg/a/a/a/c/j;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/a/a/a/a/bl;-><init>(Lorg/a/a/a/a/n;)V

    if-nez p2, :cond_a

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/a/c/j;->a(I)Lorg/a/a/a/c/j;

    move-result-object p2

    :cond_a
    iput-object p2, p0, Lorg/a/a/a/a/bf;->a:Lorg/a/a/a/c/j;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public a(III)Z
    .registers 5

    iget-object v0, p0, Lorg/a/a/a/a/bf;->a:Lorg/a/a/a/c/j;

    invoke-virtual {v0, p1}, Lorg/a/a/a/c/j;->c(I)Z

    move-result v0

    return v0
.end method

.method public c()Lorg/a/a/a/c/j;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/bf;->a:Lorg/a/a/a/c/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/bf;->a:Lorg/a/a/a/c/j;

    invoke-virtual {v0}, Lorg/a/a/a/c/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
