.class public final Lcom/a/b/e/c/h;
.super Lcom/a/b/e/c/t;


# static fields
.field public static final a:Lcom/a/b/e/c/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/a/b/e/c/h;->a(B)Lcom/a/b/e/c/h;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/h;->a:Lcom/a/b/e/c/h;

    return-void
.end method

.method private constructor <init>(B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/c/t;-><init>(I)V

    return-void
.end method

.method public static a(B)Lcom/a/b/e/c/h;
    .registers 2

    new-instance v0, Lcom/a/b/e/c/h;

    invoke-direct {v0, p0}, Lcom/a/b/e/c/h;-><init>(B)V

    return-object v0
.end method

.method public static a(I)Lcom/a/b/e/c/h;
    .registers 4

    int-to-byte v0, p0

    if-eq v0, p0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus byte value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-static {v0}, Lcom/a/b/e/c/h;->a(B)Lcom/a/b/e/c/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/c;->b:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/h;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "byte"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/e/c/h;->j()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byte{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
