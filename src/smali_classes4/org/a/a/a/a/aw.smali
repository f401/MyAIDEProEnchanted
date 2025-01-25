.class public final Lorg/a/a/a/a/aw;
.super Lorg/a/a/a/a/p;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/n;IIZ)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/a/a/a/a/p;-><init>(Lorg/a/a/a/a/n;)V

    iput p2, p0, Lorg/a/a/a/a/aw;->a:I

    iput p3, p0, Lorg/a/a/a/a/aw;->b:I

    iput-boolean p4, p0, Lorg/a/a/a/a/aw;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public a(III)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pred_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/a/a/a/a/aw;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/a/a/a/a/aw;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
