.class public final Lcom/a/b/c/b/d;
.super Lcom/a/b/g/j;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lcom/a/b/c/b/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/c/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/c/b/d;-><init>(I)V

    sput-object v0, Lcom/a/b/c/b/d;->a:Lcom/a/b/c/b/d;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/b/d;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/a/b/c/b/d;->d_()I

    move-result v3

    invoke-virtual {p1}, Lcom/a/b/c/b/d;->d_()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    :goto_1
    if-lt v2, v5, :cond_2

    if-ge v3, v4, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/a/b/c/b/d;->a(I)Lcom/a/b/c/b/e;

    move-result-object v1

    invoke-virtual {p1, v2}, Lcom/a/b/c/b/d;->a(I)Lcom/a/b/c/b/e;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/a/b/c/b/e;->a(Lcom/a/b/c/b/e;)I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    if-le v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(I)Lcom/a/b/c/b/e;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/e;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/a/b/c/b/d;->d_()I

    move-result v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "catch "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/a/b/c/b/d;->a(I)Lcom/a/b/c/b/e;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v4, ",\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/a/b/c/b/d;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "<any>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/a/b/c/b/e;->b()I

    move-result v3

    invoke-static {v3}, Lcom/a/b/g/k;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/a/b/c/b/e;->a()Lcom/a/b/e/c/ae;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public a(ILcom/a/b/e/c/ae;I)V
    .registers 5

    new-instance v0, Lcom/a/b/c/b/e;

    invoke-direct {v0, p2, p3}, Lcom/a/b/c/b/e;-><init>(Lcom/a/b/e/c/ae;I)V

    invoke-virtual {p0, p1, v0}, Lcom/a/b/c/b/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/b/d;

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/d;->a(Lcom/a/b/c/b/d;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/a/b/c/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/c/b/d;->d_()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/a/b/c/b/d;->a(I)Lcom/a/b/c/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/e;->a()Lcom/a/b/e/c/ae;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/c/ae;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
