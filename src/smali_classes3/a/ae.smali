.class public La/ae;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La/ae;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/ae;->f:Ljava/util/List;

    iput p1, p0, La/ae;->a:I

    iput p2, p0, La/ae;->b:I

    iput-object p3, p0, La/ae;->c:Ljava/lang/String;

    iput-object p4, p0, La/ae;->d:Ljava/lang/String;

    iput-object p5, p0, La/ae;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_4e

    :cond_d
    check-cast p1, La/ae;

    iget v0, p0, La/ae;->a:I

    iget v1, p1, La/ae;->a:I

    if-ne v0, v1, :cond_4e

    iget v0, p0, La/ae;->b:I

    iget v1, p1, La/ae;->b:I

    if-ne v0, v1, :cond_4e

    iget-object v0, p0, La/ae;->c:Ljava/lang/String;

    if-nez v0, :cond_24

    iget-object v0, p1, La/ae;->c:Ljava/lang/String;

    if-nez v0, :cond_4e

    goto :goto_2c

    :cond_24
    iget-object v1, p1, La/ae;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :goto_2c
    iget-object v0, p0, La/ae;->d:Ljava/lang/String;

    if-nez v0, :cond_35

    iget-object v0, p1, La/ae;->d:Ljava/lang/String;

    if-nez v0, :cond_4e

    goto :goto_3d

    :cond_35
    iget-object v1, p1, La/ae;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :goto_3d
    iget-object v0, p0, La/ae;->e:Ljava/lang/String;

    iget-object p1, p1, La/ae;->e:Ljava/lang/String;

    if-nez v0, :cond_46

    if-nez p1, :cond_4e

    goto :goto_4c

    :cond_46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    :goto_4c
    const/4 p1, 0x1

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 p1, 0x0

    :goto_4f
    return p1
.end method

.method public hashCode()I
    .registers 7

    iget v0, p0, La/ae;->a:I

    iget v1, p0, La/ae;->b:I

    iget-object v2, p0, La/ae;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    iget-object v4, p0, La/ae;->d:Ljava/lang/String;

    if-nez v4, :cond_15

    const/4 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_19
    iget-object v5, p0, La/ae;->e:Ljava/lang/String;

    if-nez v5, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_22
    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v4

    xor-int/2addr v0, v3

    return v0
.end method
