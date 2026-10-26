.class public Lorg/c/a/a/b/d/b/x;
.super Lorg/c/a/a/b/d/b/c;


# instance fields
.field protected a:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    sget-object v0, Lorg/c/a/a/b/d/e/k;->g:Lorg/c/a/a/b/d/e/k;

    invoke-direct {p0, p1, v0}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-wide p2, p0, Lorg/c/a/a/b/d/b/x;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Lorg/c/a/a/b/d/e/k;->g:Lorg/c/a/a/b/d/e/k;

    invoke-direct {p0, v0}, Lorg/c/a/a/b/d/b/c;-><init>(Lorg/c/a/a/b/d/e/l;)V

    iput-wide p1, p0, Lorg/c/a/a/b/d/b/x;->a:J

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/x;)V

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lorg/c/a/a/b/d/b/x;->a:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LongConstantExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/c/a/a/b/d/b/x;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
