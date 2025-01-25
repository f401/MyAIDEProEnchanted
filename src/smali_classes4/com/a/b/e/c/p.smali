.class public final Lcom/a/b/e/c/p;
.super Lcom/a/b/e/c/t;


# static fields
.field public static final a:Lcom/a/b/e/c/p;

.field public static final b:Lcom/a/b/e/c/p;

.field public static final c:Lcom/a/b/e/c/p;

.field public static final d:Lcom/a/b/e/c/p;

.field public static final e:Lcom/a/b/e/c/p;

.field public static final f:Lcom/a/b/e/c/p;

.field public static final g:Lcom/a/b/e/c/p;

.field private static final h:[Lcom/a/b/e/c/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1ff

    new-array v0, v0, [Lcom/a/b/e/c/p;

    sput-object v0, Lcom/a/b/e/c/p;->h:[Lcom/a/b/e/c/p;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/p;->a:Lcom/a/b/e/c/p;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/p;->b:Lcom/a/b/e/c/p;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/p;->c:Lcom/a/b/e/c/p;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/p;->d:Lcom/a/b/e/c/p;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/p;->e:Lcom/a/b/e/c/p;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/p;->f:Lcom/a/b/e/c/p;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v0

    sput-object v0, Lcom/a/b/e/c/p;->g:Lcom/a/b/e/c/p;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/e/c/t;-><init>(I)V

    return-void
.end method

.method public static a(I)Lcom/a/b/e/c/p;
    .registers 4

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    sget-object v1, Lcom/a/b/e/c/p;->h:[Lcom/a/b/e/c/p;

    array-length v1, v1

    rem-int v1, v0, v1

    sget-object v0, Lcom/a/b/e/c/p;->h:[Lcom/a/b/e/c/p;

    aget-object v0, v0, v1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v2

    if-ne v2, p0, :cond_16

    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Lcom/a/b/e/c/p;

    invoke-direct {v0, p0}, Lcom/a/b/e/c/p;-><init>(I)V

    sget-object v2, Lcom/a/b/e/c/p;->h:[Lcom/a/b/e/c/p;

    aput-object v0, v2, v1

    goto :goto_15
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/p;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "int"

    return-object v0
.end method

.method public i_()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/p;->j()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/e/c/p;->j()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "int{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

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
