.class public final Lcom/a/b/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/p;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/a/b/g/n;

.field private final e:Lcom/a/b/a/b/h;


# direct methods
.method public constructor <init>(IIILcom/a/b/g/n;Lcom/a/b/a/b/h;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-gez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-gt p3, p2, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end <= start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    if-nez p4, :cond_2b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targets == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p4}, Lcom/a/b/g/n;->b()I

    move-result v1

    const/4 v0, 0x0

    :goto_30
    if-lt v0, v1, :cond_3c

    if-nez p5, :cond_68

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    invoke-virtual {p4, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v2

    if-gez v2, :cond_65

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "successors["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_68
    iput p1, p0, Lcom/a/b/a/b/f;->a:I

    iput p2, p0, Lcom/a/b/a/b/f;->b:I

    iput p3, p0, Lcom/a/b/a/b/f;->c:I

    iput-object p4, p0, Lcom/a/b/a/b/f;->d:Lcom/a/b/g/n;

    iput-object p5, p0, Lcom/a/b/a/b/f;->e:Lcom/a/b/a/b/h;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/f;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/f;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/f;->c:I

    return v0
.end method

.method public d()Lcom/a/b/g/n;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/f;->d:Lcom/a/b/g/n;

    return-object v0
.end method

.method public e()Lcom/a/b/a/b/h;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/f;->e:Lcom/a/b/a/b/h;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/a/b/a/b/f;->a:I

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/b/a/b/f;->b:I

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/b/a/b/f;->c:I

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
