.class public Lcom/a/b/c/b/ad;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lcom/a/b/e/b/ad;


# direct methods
.method public constructor <init>(ILcom/a/b/e/b/ad;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/a/b/c/b/ad;->a:I

    iput-object p2, p0, Lcom/a/b/c/b/ad;->b:Lcom/a/b/e/b/ad;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/c/b/ad;->a:I

    return v0
.end method

.method public b()Lcom/a/b/e/b/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/b/ad;->b:Lcom/a/b/e/b/ad;

    return-object v0
.end method
