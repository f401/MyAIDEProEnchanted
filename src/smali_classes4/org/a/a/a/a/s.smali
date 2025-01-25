.class public final Lorg/a/a/a/a/s;
.super Lorg/a/a/a/a/bl;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/n;I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/a/a/a/a/bl;-><init>(Lorg/a/a/a/a/n;)V

    iput p2, p0, Lorg/a/a/a/a/s;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public a(III)Z
    .registers 5

    iget v0, p0, Lorg/a/a/a/a/s;->a:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Lorg/a/a/a/c/j;
    .registers 2

    iget v0, p0, Lorg/a/a/a/a/s;->a:I

    invoke-static {v0}, Lorg/a/a/a/c/j;->a(I)Lorg/a/a/a/c/j;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lorg/a/a/a/a/s;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
