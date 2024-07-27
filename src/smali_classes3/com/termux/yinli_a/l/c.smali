.class public final Lcom/termux/yinli_a/l/c;
.super Lcom/termux/yinli_a/l/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/yinli_a/l/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/termux/yinli_a/l/a;",
        "Ljava/lang/Object",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lcom/termux/yinli_a/l/c;

.field public static final e:Lcom/termux/yinli_a/l/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/termux/yinli_a/l/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/termux/yinli_a/l/c$a;-><init>(Lcom/termux/yinli_a/k/b/a;)V

    sput-object v0, Lcom/termux/yinli_a/l/c;->e:Lcom/termux/yinli_a/l/c$a;

    new-instance v0, Lcom/termux/yinli_a/l/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/yinli_a/l/c;-><init>(II)V

    sput-object v0, Lcom/termux/yinli_a/l/c;->d:Lcom/termux/yinli_a/l/c;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/yinli_a/l/a;-><init>(III)V

    return-void
.end method

.method public static final synthetic f()Lcom/termux/yinli_a/l/c;
    .registers 1

    sget-object v0, Lcom/termux/yinli_a/l/c;->d:Lcom/termux/yinli_a/l/c;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .registers 3

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/termux/yinli_a/l/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/termux/yinli_a/l/c;

    invoke-virtual {v0}, Lcom/termux/yinli_a/l/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->a()I

    move-result v0

    check-cast p1, Lcom/termux/yinli_a/l/c;

    invoke-virtual {p1}, Lcom/termux/yinli_a/l/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/termux/yinli_a/l/a;->b()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/yinli_a/l/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
