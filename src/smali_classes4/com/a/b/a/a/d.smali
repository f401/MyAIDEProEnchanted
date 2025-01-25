.class public final Lcom/a/b/a/a/d;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:Lcom/a/b/e/c/ag;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ag;)V
    .registers 4

    const-string v0, "ConstantValue"

    invoke-direct {p0, v0}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/a/b/e/c/ad;

    if-nez v0, :cond_2b

    instance-of v0, p1, Lcom/a/b/e/c/p;

    if-nez v0, :cond_2b

    instance-of v0, p1, Lcom/a/b/e/c/w;

    if-nez v0, :cond_2b

    instance-of v0, p1, Lcom/a/b/e/c/o;

    if-nez v0, :cond_2b

    instance-of v0, p1, Lcom/a/b/e/c/l;

    if-nez v0, :cond_2b

    if-nez p1, :cond_23

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constantValue == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad type for constantValue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iput-object p1, p0, Lcom/a/b/a/a/d;->a:Lcom/a/b/e/c/ag;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public b()Lcom/a/b/e/c/ag;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/d;->a:Lcom/a/b/e/c/ag;

    return-object v0
.end method
