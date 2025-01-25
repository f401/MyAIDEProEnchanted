.class public final Lc/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:I

.field public final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-static {p1}, Lc/bu;->d(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lc/x;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/x;->a:Ljava/io/InputStream;

    iput p2, p0, Lc/x;->b:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lc/x;->c:[[B

    return-void
.end method


# virtual methods
.method public final d()Lc/e;
    .registers 13

    iget-object v0, p0, Lc/x;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_b
    iget-object v1, p0, Lc/x;->a:Ljava/io/InputStream;

    instance-of v2, v1, Lc/bp;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    check-cast v1, Lc/bp;

    .line 2
    iput-boolean v3, v1, Lc/bp;->e:Z

    invoke-virtual {v1}, Lc/bp;->f()Z

    .line 3
    :cond_19
    iget-object v1, p0, Lc/x;->a:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lc/j;->g(Ljava/io/InputStream;I)I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v4, 0x1

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    iget-object v5, p0, Lc/x;->a:Ljava/io/InputStream;

    iget v6, p0, Lc/x;->b:I

    invoke-static {v5, v6}, Lc/j;->f(Ljava/io/InputStream;I)I

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-gez v5, :cond_9d

    if-eqz v2, :cond_95

    new-instance v2, Lc/x;

    new-instance v5, Lc/bp;

    iget-object v10, p0, Lc/x;->a:Ljava/io/InputStream;

    iget v11, p0, Lc/x;->b:I

    invoke-direct {v5, v10, v11}, Lc/bp;-><init>(Ljava/io/InputStream;I)V

    iget v10, p0, Lc/x;->b:I

    invoke-direct {v2, v5, v10}, Lc/x;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_54

    new-instance v0, Lc/ac;

    invoke-direct {v0, v1, v2}, Lc/ac;-><init>(ILc/x;)V

    return-object v0

    :cond_54
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5e

    new-instance v0, Lc/am;

    invoke-direct {v0, v4, v1, v2}, Lc/am;-><init>(ZILc/x;)V

    return-object v0

    :cond_5e
    if-eq v1, v9, :cond_8f

    if-eq v1, v8, :cond_89

    if-eq v1, v7, :cond_83

    if-ne v1, v6, :cond_6c

    .line 4
    new-instance v0, Lc/ak;

    invoke-direct {v0, v2, v3}, Lc/ak;-><init>(Lc/x;I)V

    goto :goto_94

    .line 5
    :cond_6c
    const-string v0, "unknown BER object encountered: 0x"

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lc/h;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/h;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_83
    new-instance v0, Lc/ai;

    invoke-direct {v0, v2, v3}, Lc/ai;-><init>(Lc/x;I)V

    goto :goto_94

    :cond_89
    new-instance v0, Lc/ar;

    invoke-direct {v0, v2}, Lc/ar;-><init>(Lc/x;)V

    goto :goto_94

    :cond_8f
    new-instance v0, Lc/ag;

    invoke-direct {v0, v2, v3}, Lc/ag;-><init>(Ljava/lang/Object;I)V

    :goto_94
    return-object v0

    .line 7
    :cond_95
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9d
    new-instance v10, Lc/bn;

    iget-object v11, p0, Lc/x;->a:Ljava/io/InputStream;

    invoke-direct {v10, v11, v5}, Lc/bn;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_b2

    new-instance v0, Lc/ab;

    invoke-virtual {v10}, Lc/bn;->e()[B

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lc/ab;-><init>(ZI[B)V

    return-object v0

    :cond_b2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c1

    new-instance v0, Lc/am;

    new-instance v3, Lc/x;

    invoke-direct {v3, v10}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2, v1, v3}, Lc/am;-><init>(ZILc/x;)V

    return-object v0

    :cond_c1
    if-eqz v2, :cond_110

    if-eq v1, v9, :cond_105

    if-eq v1, v8, :cond_fa

    if-eq v1, v7, :cond_ef

    if-ne v1, v6, :cond_d6

    new-instance v0, Lc/ak;

    new-instance v1, Lc/x;

    invoke-direct {v1, v10}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, v4}, Lc/ak;-><init>(Lc/x;I)V

    return-object v0

    :cond_d6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unknown tag "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encountered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ef
    new-instance v0, Lc/ai;

    new-instance v1, Lc/x;

    invoke-direct {v1, v10}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, v4}, Lc/ai;-><init>(Lc/x;I)V

    return-object v0

    :cond_fa
    new-instance v0, Lc/ar;

    new-instance v1, Lc/x;

    invoke-direct {v1, v10}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lc/ar;-><init>(Lc/x;)V

    return-object v0

    :cond_105
    new-instance v0, Lc/ag;

    new-instance v1, Lc/x;

    invoke-direct {v1, v10}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, v3}, Lc/ag;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :cond_110
    if-eq v1, v9, :cond_122

    :try_start_112
    iget-object v0, p0, Lc/x;->c:[[B

    invoke-static {v1, v10, v0}, Lc/j;->d(ILc/bn;[[B)Lc/s;

    move-result-object v0
    :try_end_118
    .catch Ljava/lang/IllegalArgumentException; {:try_start_112 .. :try_end_118} :catch_119

    return-object v0

    :catch_119
    move-exception v0

    new-instance v1, Lc/h;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0, v3}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :cond_122
    new-instance v0, Lc/ag;

    invoke-direct {v0, v10, v4}, Lc/ag;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final e(ZI)Lc/s;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_16

    new-instance p1, Lc/bf;

    new-instance v1, Lc/az;

    iget-object v2, p0, Lc/x;->a:Ljava/io/InputStream;

    check-cast v2, Lc/bn;

    invoke-virtual {v2}, Lc/bn;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lc/az;-><init>([B)V

    invoke-direct {p1, v0, p2, v1}, Lc/bf;-><init>(ZILc/e;)V

    return-object p1

    :cond_16
    invoke-virtual {p0}, Lc/x;->f()Lc/f;

    move-result-object p1

    iget-object v1, p0, Lc/x;->a:Ljava/io/InputStream;

    instance-of v1, v1, Lc/bp;

    const/4 v2, 0x1

    if-eqz v1, :cond_48

    invoke-virtual {p1}, Lc/f;->d()I

    move-result v1

    if-ne v1, v2, :cond_31

    new-instance v1, Lc/al;

    invoke-virtual {p1, v0}, Lc/f;->c(I)Lc/e;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lc/al;-><init>(ZILc/e;)V

    goto :goto_47

    :cond_31
    sget-object v1, Lc/ad;->a:Lc/ah;

    .line 1
    invoke-virtual {p1}, Lc/f;->d()I

    move-result v1

    if-ge v1, v2, :cond_3c

    sget-object p1, Lc/ad;->a:Lc/ah;

    goto :goto_42

    :cond_3c
    new-instance v1, Lc/ah;

    invoke-direct {v1, p1}, Lc/ah;-><init>(Lc/f;)V

    move-object p1, v1

    .line 2
    :goto_42
    new-instance v1, Lc/al;

    invoke-direct {v1, v0, p2, p1}, Lc/al;-><init>(ZILc/e;)V

    :goto_47
    return-object v1

    :cond_48
    invoke-virtual {p1}, Lc/f;->d()I

    move-result v1

    if-ne v1, v2, :cond_58

    new-instance v1, Lc/bf;

    invoke-virtual {p1, v0}, Lc/f;->c(I)Lc/e;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lc/bf;-><init>(ZILc/e;)V

    goto :goto_6e

    :cond_58
    sget-object v1, Lc/as;->a:Lc/bc;

    .line 3
    invoke-virtual {p1}, Lc/f;->d()I

    move-result v1

    if-ge v1, v2, :cond_63

    sget-object p1, Lc/as;->a:Lc/bc;

    goto :goto_69

    :cond_63
    new-instance v1, Lc/bc;

    invoke-direct {v1, p1, v2}, Lc/bc;-><init>(Lc/f;I)V

    move-object p1, v1

    .line 4
    :goto_69
    new-instance v1, Lc/bf;

    invoke-direct {v1, v0, p2, p1}, Lc/bf;-><init>(ZILc/e;)V

    :goto_6e
    return-object v1
.end method

.method public final f()Lc/f;
    .registers 4

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lc/x;->d()Lc/e;

    move-result-object v1

    if-eqz v1, :cond_1e

    instance-of v2, v1, Lc/bo;

    if-eqz v2, :cond_16

    check-cast v1, Lc/bo;

    invoke-interface {v1}, Lc/bo;->c()Lc/s;

    move-result-object v1

    goto :goto_1a

    :cond_16
    invoke-interface {v1}, Lc/e;->l()Lc/s;

    move-result-object v1

    :goto_1a
    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    goto :goto_5

    :cond_1e
    return-object v0
.end method
