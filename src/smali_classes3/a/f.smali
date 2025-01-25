.class public La/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, La/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(La/f;)V
    .registers 12

    iget-object v1, p1, La/f;->a:Ljava/lang/String;

    iget v2, p1, La/f;->b:I

    iget v3, p1, La/f;->c:I

    iget-object v4, p1, La/f;->d:Ljava/lang/String;

    iget-object v5, p1, La/f;->e:Ljava/lang/String;

    iget-object v6, p1, La/f;->f:Ljava/lang/String;

    iget-object v7, p1, La/f;->g:Ljava/lang/String;

    iget-object v8, p1, La/f;->i:Ljava/util/List;

    iget-object v9, p1, La/f;->j:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, La/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, La/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/f;->h:Ljava/util/List;

    iput-object p1, p0, La/f;->a:Ljava/lang/String;

    iput p2, p0, La/f;->b:I

    iput p3, p0, La/f;->c:I

    iput-object p4, p0, La/f;->d:Ljava/lang/String;

    iput-object p5, p0, La/f;->e:Ljava/lang/String;

    iput-object p6, p0, La/f;->f:Ljava/lang/String;

    iput-object p7, p0, La/f;->g:Ljava/lang/String;

    iput-object p8, p0, La/f;->i:Ljava/util/List;

    iput-object p9, p0, La/f;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(La/ae;)V
    .registers 3

    iget-object v0, p0, La/f;->i:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/f;->i:Ljava/util/List;

    :cond_b
    iget-object v0, p0, La/f;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(La/ae;)V
    .registers 3

    iget-object v0, p0, La/f;->j:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/f;->j:Ljava/util/List;

    :cond_b
    iget-object v0, p0, La/f;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_82

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_e

    goto/16 :goto_82

    :cond_e
    check-cast p1, La/f;

    iget v0, p0, La/f;->b:I

    iget v1, p1, La/f;->b:I

    if-ne v0, v1, :cond_82

    iget v0, p0, La/f;->c:I

    iget v1, p1, La/f;->c:I

    if-ne v0, v1, :cond_82

    iget-object v0, p0, La/f;->d:Ljava/lang/String;

    if-nez v0, :cond_25

    iget-object v0, p1, La/f;->d:Ljava/lang/String;

    if-nez v0, :cond_82

    goto :goto_2d

    :cond_25
    iget-object v1, p1, La/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    :goto_2d
    iget-object v0, p0, La/f;->e:Ljava/lang/String;

    if-nez v0, :cond_36

    iget-object v0, p1, La/f;->e:Ljava/lang/String;

    if-nez v0, :cond_82

    goto :goto_3e

    :cond_36
    iget-object v1, p1, La/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    :goto_3e
    iget-object v0, p0, La/f;->f:Ljava/lang/String;

    if-nez v0, :cond_47

    iget-object v0, p1, La/f;->f:Ljava/lang/String;

    if-nez v0, :cond_82

    goto :goto_4f

    :cond_47
    iget-object v1, p1, La/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    :goto_4f
    iget-object v0, p0, La/f;->g:Ljava/lang/String;

    if-nez v0, :cond_58

    iget-object v0, p1, La/f;->g:Ljava/lang/String;

    if-nez v0, :cond_82

    goto :goto_60

    :cond_58
    iget-object v1, p1, La/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    :goto_60
    iget-object v0, p0, La/f;->i:Ljava/util/List;

    if-nez v0, :cond_69

    iget-object v0, p1, La/f;->i:Ljava/util/List;

    if-nez v0, :cond_82

    goto :goto_71

    :cond_69
    iget-object v1, p1, La/f;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    :goto_71
    iget-object v0, p0, La/f;->j:Ljava/util/List;

    iget-object p1, p1, La/f;->j:Ljava/util/List;

    if-nez v0, :cond_7a

    if-nez p1, :cond_82

    goto :goto_80

    :cond_7a
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    :goto_80
    const/4 p1, 0x1

    goto :goto_83

    :cond_82
    :goto_82
    const/4 p1, 0x0

    :goto_83
    return p1
.end method

.method public hashCode()I
    .registers 10

    iget v0, p0, La/f;->b:I

    iget v1, p0, La/f;->c:I

    iget-object v2, p0, La/f;->d:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    iget-object v4, p0, La/f;->e:Ljava/lang/String;

    if-nez v4, :cond_15

    const/4 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_19
    iget-object v5, p0, La/f;->f:Ljava/lang/String;

    if-nez v5, :cond_1f

    const/4 v5, 0x0

    goto :goto_23

    :cond_1f
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_23
    iget-object v6, p0, La/f;->g:Ljava/lang/String;

    if-nez v6, :cond_29

    const/4 v6, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    :goto_2d
    iget-object v7, p0, La/f;->i:Ljava/util/List;

    if-nez v7, :cond_33

    const/4 v7, 0x0

    goto :goto_37

    :cond_33
    invoke-interface {v7}, Ljava/util/List;->hashCode()I

    move-result v7

    :goto_37
    iget-object v8, p0, La/f;->j:Ljava/util/List;

    if-nez v8, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-interface {v8}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_40
    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    xor-int/2addr v0, v6

    xor-int/2addr v0, v7

    xor-int/2addr v0, v3

    return v0
.end method
