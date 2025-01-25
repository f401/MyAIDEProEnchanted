.class public final Lcom/a/b/e/c/o;
.super Lcom/a/b/e/c/t;


# static fields
.field public static final a:Lcom/a/b/e/c/o;

.field public static final b:Lcom/a/b/e/c/o;

.field public static final c:Lcom/a/b/e/c/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/a/b/e/c/o;->a(I)Lcom/a/b/e/c/o;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/o;->a:Lcom/a/b/e/c/o;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/a/b/e/c/o;->a(I)Lcom/a/b/e/c/o;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/o;->b:Lcom/a/b/e/c/o;

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/a/b/e/c/o;->a(I)Lcom/a/b/e/c/o;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/o;->c:Lcom/a/b/e/c/o;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/c/t;-><init>(I)V

    return-void
.end method

.method public static a(I)Lcom/a/b/e/c/o;
    .registers 2

    new-instance v0, Lcom/a/b/e/c/o;

    invoke-direct {v0, p0}, Lcom/a/b/e/c/o;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/c;->e:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/o;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "float"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/e/c/o;->j()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "float{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
