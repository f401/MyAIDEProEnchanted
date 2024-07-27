.class public final Lcom/a/b/e/b/ad;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/a/b/e/b/ad;


# instance fields
.field private final b:Lcom/a/b/e/c/ad;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, -0x1

    new-instance v0, Lcom/a/b/e/b/ad;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/a/b/e/b/ad;-><init>(Lcom/a/b/e/c/ad;II)V

    sput-object v0, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    return-void
.end method

.method public constructor <init>(Lcom/a/b/e/c/ad;II)V
    .registers 6

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p3, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "line < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/a/b/e/b/ad;->b:Lcom/a/b/e/c/ad;

    iput p2, p0, Lcom/a/b/e/b/ad;->c:I

    iput p3, p0, Lcom/a/b/e/b/ad;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/ad;->d:I

    return v0
.end method

.method public a(Lcom/a/b/e/b/ad;)Z
    .registers 4

    iget v0, p0, Lcom/a/b/e/b/ad;->d:I

    iget v1, p1, Lcom/a/b/e/b/ad;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/a/b/e/b/ad;)Z
    .registers 4

    iget v0, p0, Lcom/a/b/e/b/ad;->d:I

    iget v1, p1, Lcom/a/b/e/b/ad;->d:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/a/b/e/b/ad;->b:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/b/ad;->b:Lcom/a/b/e/c/ad;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/b/e/b/ad;->b:Lcom/a/b/e/c/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/b/e/b/ad;->b:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/b/ad;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/a/b/e/b/ad;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/a/b/e/b/ad;

    iget v2, p0, Lcom/a/b/e/b/ad;->c:I

    iget v3, p1, Lcom/a/b/e/b/ad;->c:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/ad;->b(Lcom/a/b/e/b/ad;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/b/ad;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/a/b/e/b/ad;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/b/e/b/ad;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/a/b/e/b/ad;->b:Lcom/a/b/e/c/ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/b/e/b/ad;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/a/b/e/b/ad;->d:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/a/b/e/b/ad;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/b/e/b/ad;->c:I

    if-gez v1, :cond_2

    const-string v1, "????"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget v1, p0, Lcom/a/b/e/b/ad;->c:I

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
