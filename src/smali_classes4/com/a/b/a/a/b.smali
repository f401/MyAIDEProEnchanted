.class public Lcom/a/b/a/a/b;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:Lcom/a/b/a/b/d;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/a/b/a/b/d;)V
    .registers 5

    const-string v0, "BootstrapMethods"

    invoke-direct {p0, v0}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/a/b/a/a/b;->a:Lcom/a/b/a/b/d;

    invoke-virtual {p1}, Lcom/a/b/a/b/d;->d_()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {p1}, Lcom/a/b/a/b/d;->d_()I

    move-result v2

    if-lt v1, v2, :cond_19

    iput v0, p0, Lcom/a/b/a/a/b;->b:I

    return-void

    :cond_19
    invoke-virtual {p1, v1}, Lcom/a/b/a/b/d;->a(I)Lcom/a/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/a/b/e;->b()Lcom/a/b/a/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/a/b/c;->d_()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/a/b;->b:I

    return v0
.end method

.method public b()Lcom/a/b/a/b/d;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/b;->a:Lcom/a/b/a/b/d;

    return-object v0
.end method
