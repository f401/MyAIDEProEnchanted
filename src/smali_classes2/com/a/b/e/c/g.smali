.class public final Lcom/a/b/e/c/g;
.super Lcom/a/b/e/c/t;


# static fields
.field public static final a:Lcom/a/b/e/c/g;

.field public static final b:Lcom/a/b/e/c/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/e/c/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/e/c/g;-><init>(Z)V

    sput-object v0, Lcom/a/b/e/c/g;->a:Lcom/a/b/e/c/g;

    new-instance v0, Lcom/a/b/e/c/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/a/b/e/c/g;-><init>(Z)V

    sput-object v0, Lcom/a/b/e/c/g;->b:Lcom/a/b/e/c/g;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/a/b/e/c/t;-><init>(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)Lcom/a/b/e/c/g;
    .registers 4

    if-nez p0, :cond_0

    sget-object v0, Lcom/a/b/e/c/g;->a:Lcom/a/b/e/c/g;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/a/b/e/c/g;->b:Lcom/a/b/e/c/g;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/c;->a:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/g;->h_()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "boolean"

    return-object v0
.end method

.method public h_()Z
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/g;->j()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/g;->h_()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "boolean{true}"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "boolean{false}"

    goto :goto_0
.end method
