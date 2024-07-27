.class public final Lcom/a/b/a/a/z;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:Lcom/a/b/g/e;

.field private final b:Lcom/a/b/e/c/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/a/b/g/e;IILcom/a/b/e/c/b;)V
    .registers 7

    add-int v0, p3, p4

    invoke-virtual {p2, p3, v0}, Lcom/a/b/g/e;->a(II)Lcom/a/b/g/e;

    move-result-object v0

    invoke-direct {p0, p1, v0, p5}, Lcom/a/b/a/a/z;-><init>(Ljava/lang/String;Lcom/a/b/g/e;Lcom/a/b/e/c/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/a/b/g/e;Lcom/a/b/e/c/b;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/a/b/a/a/z;->a:Lcom/a/b/g/e;

    iput-object p3, p0, Lcom/a/b/a/a/z;->b:Lcom/a/b/e/c/b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/z;->a:Lcom/a/b/g/e;

    invoke-virtual {v0}, Lcom/a/b/g/e;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method
