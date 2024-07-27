.class public abstract Lcom/a/b/a/e/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/a/e/f;


# instance fields
.field private final a:Lcom/a/b/e/c/ae;

.field private final b:I

.field private final c:Lcom/a/b/e/c/aa;

.field private final d:Lcom/a/b/a/e/b;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;ILcom/a/b/e/c/aa;Lcom/a/b/a/e/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nat == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/a/b/a/e/n;->a:Lcom/a/b/e/c/ae;

    iput p2, p0, Lcom/a/b/a/e/n;->b:I

    iput-object p3, p0, Lcom/a/b/a/e/n;->c:Lcom/a/b/e/c/aa;

    iput-object p4, p0, Lcom/a/b/a/e/n;->d:Lcom/a/b/a/e/b;

    return-void
.end method


# virtual methods
.method public final d()Lcom/a/b/e/c/aa;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/e/n;->c:Lcom/a/b/e/c/aa;

    return-object v0
.end method

.method public final e()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/e/n;->c:Lcom/a/b/e/c/aa;

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/e/n;->c:Lcom/a/b/e/c/aa;

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->b()Lcom/a/b/e/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/e/n;->b:I

    return v0
.end method

.method public final h()Lcom/a/b/a/e/b;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/e/n;->d:Lcom/a/b/a/e/b;

    return-object v0
.end method

.method public final i()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/e/n;->a:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/a/e/n;->c:Lcom/a/b/e/c/aa;

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
