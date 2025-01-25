.class public Lcom/a/b/a/a/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/e/c/ae;

.field private final b:Lcom/a/b/e/c/ae;

.field private final c:Lcom/a/b/e/c/ad;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/ae;Lcom/a/b/e/c/ad;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "innerClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/a/b/a/a/y;->a:Lcom/a/b/e/c/ae;

    iput-object p2, p0, Lcom/a/b/a/a/y;->b:Lcom/a/b/e/c/ae;

    iput-object p3, p0, Lcom/a/b/a/a/y;->c:Lcom/a/b/e/c/ad;

    iput p4, p0, Lcom/a/b/a/a/y;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/y;->a:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public b()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/y;->b:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public c()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/y;->c:Lcom/a/b/e/c/ad;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/a/y;->d:I

    return v0
.end method
