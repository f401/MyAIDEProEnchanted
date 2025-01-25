.class public La/aa;
.super La/f;


# instance fields
.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:La/f;


# direct methods
.method public constructor <init>(ZZZZZZZLa/f;La/f;)V
    .registers 10

    invoke-direct {p0, p9}, La/f;-><init>(La/f;)V

    iput-boolean p1, p0, La/aa;->k:Z

    iput-boolean p2, p0, La/aa;->l:Z

    iput-boolean p3, p0, La/aa;->m:Z

    iput-boolean p4, p0, La/aa;->n:Z

    iput-boolean p5, p0, La/aa;->o:Z

    iput-boolean p6, p0, La/aa;->p:Z

    iput-boolean p7, p0, La/aa;->q:Z

    iput-object p8, p0, La/aa;->r:La/f;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, La/f;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_52

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_52

    :cond_d
    check-cast p1, La/aa;

    iget-boolean v0, p0, La/aa;->k:Z

    iget-boolean v1, p1, La/aa;->k:Z

    if-ne v0, v1, :cond_52

    iget-boolean v0, p0, La/aa;->l:Z

    iget-boolean v1, p1, La/aa;->l:Z

    if-ne v0, v1, :cond_52

    iget-boolean v0, p0, La/aa;->m:Z

    iget-boolean v1, p1, La/aa;->m:Z

    if-ne v0, v1, :cond_52

    iget-boolean v0, p0, La/aa;->n:Z

    iget-boolean v1, p1, La/aa;->n:Z

    if-ne v0, v1, :cond_52

    iget-boolean v0, p0, La/aa;->o:Z

    iget-boolean v1, p1, La/aa;->o:Z

    if-ne v0, v1, :cond_52

    iget-boolean v0, p0, La/aa;->p:Z

    iget-boolean v1, p1, La/aa;->p:Z

    if-ne v0, v1, :cond_52

    iget-boolean v0, p0, La/aa;->q:Z

    iget-boolean v1, p1, La/aa;->q:Z

    if-ne v0, v1, :cond_52

    iget-object v0, p0, La/aa;->r:La/f;

    if-nez v0, :cond_42

    iget-object v0, p1, La/aa;->r:La/f;

    if-nez v0, :cond_52

    goto :goto_4a

    :cond_42
    iget-object v1, p1, La/aa;->r:La/f;

    invoke-virtual {v0, v1}, La/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    :goto_4a
    invoke-super {p0, p1}, La/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    const/4 p1, 0x1

    goto :goto_53

    :cond_52
    :goto_52
    const/4 p1, 0x0

    :goto_53
    return p1
.end method

.method public hashCode()I
    .registers 10

    iget-boolean v0, p0, La/aa;->k:Z

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, La/aa;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    const/4 v1, 0x2

    :goto_c
    iget-boolean v3, p0, La/aa;->m:Z

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    goto :goto_13

    :cond_12
    const/4 v3, 0x4

    :goto_13
    iget-boolean v4, p0, La/aa;->n:Z

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    goto :goto_1b

    :cond_19
    const/16 v4, 0x8

    :goto_1b
    iget-boolean v5, p0, La/aa;->o:Z

    if-eqz v5, :cond_21

    const/4 v5, 0x0

    goto :goto_23

    :cond_21
    const/16 v5, 0x10

    :goto_23
    iget-boolean v6, p0, La/aa;->p:Z

    if-eqz v6, :cond_29

    const/4 v6, 0x0

    goto :goto_2b

    :cond_29
    const/16 v6, 0x20

    :goto_2b
    iget-boolean v7, p0, La/aa;->q:Z

    if-eqz v7, :cond_31

    const/4 v7, 0x0

    goto :goto_33

    :cond_31
    const/16 v7, 0x40

    :goto_33
    iget-object v8, p0, La/aa;->r:La/f;

    if-nez v8, :cond_38

    goto :goto_3c

    :cond_38
    invoke-virtual {v8}, La/f;->hashCode()I

    move-result v2

    :goto_3c
    xor-int/2addr v0, v1

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    xor-int/2addr v0, v6

    xor-int/2addr v0, v7

    xor-int/2addr v0, v2

    invoke-super {p0}, La/f;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
