.class public final Lcom/a/b/e/c/w;
.super Lcom/a/b/e/c/u;


# static fields
.field public static final a:Lcom/a/b/e/c/w;

.field public static final b:Lcom/a/b/e/c/w;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/a/b/e/c/w;->a(J)Lcom/a/b/e/c/w;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/w;->a:Lcom/a/b/e/c/w;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/a/b/e/c/w;->a(J)Lcom/a/b/e/c/w;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/w;->b:Lcom/a/b/e/c/w;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/a/b/e/c/u;-><init>(J)V

    return-void
.end method

.method public static a(J)Lcom/a/b/e/c/w;
    .registers 4

    new-instance v0, Lcom/a/b/e/c/w;

    invoke-direct {v0, p0, p1}, Lcom/a/b/e/c/w;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/c;->g:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/e/c/w;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "long"

    return-object v0
.end method

.method public n()J
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/e/c/w;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/c/w;->k()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "long{0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/a/b/g/k;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
