.class public final Lcom/a/b/a/a/r;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:Lcom/a/b/e/c/ad;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ad;)V
    .registers 4

    const-string v0, "SourceFile"

    invoke-direct {p0, v0}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sourceFile == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/a/a/r;->a:Lcom/a/b/e/c/ad;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public b()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/r;->a:Lcom/a/b/e/c/ad;

    return-object v0
.end method
