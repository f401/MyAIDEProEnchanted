.class public final Lc/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:I

.field public final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lc/bu;->d(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lc/x;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/x;->a:Ljava/io/InputStream;

    iput p2, p0, Lc/x;->b:I

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lc/x;->c:[[B

    return-void
.end method


# virtual methods
.method public final d()Lc/e;
    .locals 11

    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lc/x;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    const/4 v0, 0x0

    .line 7
    :goto_0
    return-object v0

    .line 1
    :cond_0
    iget-object v0, p0, Lc/x;->a:Ljava/io/InputStream;

    instance-of v4, v0, Lc/bp;

    if-eqz v4, :cond_1

    check-cast v0, Lc/bp;

    .line 2
    iput-boolean v2, v0, Lc/bp;->e:Z

    invoke-virtual {v0}, Lc/bp;->f()Z

    .line 3
    :cond_1
    iget-object v0, p0, Lc/x;->a:Ljava/io/InputStream;

    invoke-static {v0, v3}, Lc/j;->g(Ljava/io/InputStream;I)I

    move-result v4

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v5, p0, Lc/x;->a:Ljava/io/InputStream;

    iget v6, p0, Lc/x;->b:I

    invoke-static {v5, v6}, Lc/j;->f(Ljava/io/InputStream;I)I

    move-result v5

    if-gez v5, :cond_a

    if-eqz v0, :cond_9

    new-instance v5, Lc/x;

    new-instance v0, Lc/bp;

    iget-object v6, p0, Lc/x;->a:Ljava/io/InputStream;

    iget v7, p0, Lc/x;->b:I

    invoke-direct {v0, v6, v7}, Lc/bp;-><init>(Ljava/io/InputStream;I)V

    iget v6, p0, Lc/x;->b:I

    invoke-direct {v5, v0, v6}, Lc/x;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_3

    new-instance v0, Lc/ac;

    invoke-direct {v0, v4, v5}, Lc/ac;-><init>(ILc/x;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_4

    new-instance v0, Lc/am;

    invoke-direct {v0, v1, v4, v5}, Lc/am;-><init>(ZILc/x;)V

    goto :goto_0

    :cond_4
    if-eq v4, v8, :cond_8

    if-eq v4, v9, :cond_7

    if-eq v4, v10, :cond_6

    const/16 v0, 0x11

    if-ne v4, v0, :cond_5

    .line 4
    new-instance v0, Lc/ak;

    invoke-direct {v0, v5, v2}, Lc/ak;-><init>(Lc/x;I)V

    goto :goto_0

    .line 5
    :cond_5
    const-string v0, "unknown BER object encountered: 0x"

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lc/h;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/h;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Lc/ai;

    invoke-direct {v0, v5, v2}, Lc/ai;-><init>(Lc/x;I)V

    goto :goto_0

    :cond_7
    new-instance v0, Lc/ar;

    invoke-direct {v0, v5}, Lc/ar;-><init>(Lc/x;)V

    goto :goto_0

    :cond_8
    new-instance v0, Lc/ag;

    invoke-direct {v0, v5, v2}, Lc/ag;-><init>(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 7
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v6, Lc/bn;

    iget-object v7, p0, Lc/x;->a:Ljava/io/InputStream;

    invoke-direct {v6, v7, v5}, Lc/bn;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_b

    new-instance v1, Lc/ab;

    invoke-virtual {v6}, Lc/bn;->e()[B

    move-result-object v2

    invoke-direct {v1, v0, v4, v2}, Lc/ab;-><init>(ZI[B)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_c

    new-instance v1, Lc/am;

    new-instance v2, Lc/x;

    invoke-direct {v2, v6}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0, v4, v2}, Lc/am;-><init>(ZILc/x;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_11

    if-eq v4, v8, :cond_10

    if-eq v4, v9, :cond_f

    if-eq v4, v10, :cond_e

    const/16 v0, 0x11

    if-ne v4, v0, :cond_d

    new-instance v0, Lc/ak;

    new-instance v2, Lc/x;

    invoke-direct {v2, v6}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2, v1}, Lc/ak;-><init>(Lc/x;I)V

    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown tag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encountered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    new-instance v0, Lc/ai;

    new-instance v2, Lc/x;

    invoke-direct {v2, v6}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2, v1}, Lc/ai;-><init>(Lc/x;I)V

    goto/16 :goto_0

    :cond_f
    new-instance v0, Lc/ar;

    new-instance v1, Lc/x;

    invoke-direct {v1, v6}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lc/ar;-><init>(Lc/x;)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Lc/ag;

    new-instance v1, Lc/x;

    invoke-direct {v1, v6}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, v2}, Lc/ag;-><init>(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_11
    if-eq v4, v8, :cond_12

    :try_start_0
    iget-object v0, p0, Lc/x;->c:[[B

    invoke-static {v4, v6, v0}, Lc/j;->d(ILc/bn;[[B)Lc/s;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lc/h;

    const-string v3, "corrupted stream detected"

    invoke-direct {v1, v3, v0, v2}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :cond_12
    new-instance v0, Lc/ag;

    invoke-direct {v0, v6, v1}, Lc/ag;-><init>(Ljava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method public final e(ZI)Lc/s;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v1, Lc/bf;

    new-instance v2, Lc/az;

    iget-object v0, p0, Lc/x;->a:Ljava/io/InputStream;

    check-cast v0, Lc/bn;

    invoke-virtual {v0}, Lc/bn;->e()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lc/az;-><init>([B)V

    invoke-direct {v1, v3, p2, v2}, Lc/bf;-><init>(ZILc/e;)V

    move-object v0, v1

    .line 4
    :goto_0
    return-object v0

    .line 4294967295
    :cond_0
    invoke-virtual {p0}, Lc/x;->f()Lc/f;

    move-result-object v1

    iget-object v0, p0, Lc/x;->a:Ljava/io/InputStream;

    instance-of v0, v0, Lc/bp;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lc/f;->d()I

    move-result v0

    if-ne v0, v2, :cond_1

    new-instance v0, Lc/al;

    invoke-virtual {v1, v3}, Lc/f;->c(I)Lc/e;

    move-result-object v1

    invoke-direct {v0, v2, p2, v1}, Lc/al;-><init>(ZILc/e;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lc/ad;->a:Lc/ah;

    .line 1
    invoke-virtual {v1}, Lc/f;->d()I

    move-result v0

    if-ge v0, v2, :cond_2

    sget-object v0, Lc/ad;->a:Lc/ah;

    .line 2
    :goto_1
    new-instance v1, Lc/al;

    invoke-direct {v1, v3, p2, v0}, Lc/al;-><init>(ZILc/e;)V

    move-object v0, v1

    goto :goto_0

    .line 1
    :cond_2
    new-instance v0, Lc/ah;

    invoke-direct {v0, v1}, Lc/ah;-><init>(Lc/f;)V

    goto :goto_1

    .line 2
    :cond_3
    invoke-virtual {v1}, Lc/f;->d()I

    move-result v0

    if-ne v0, v2, :cond_4

    new-instance v0, Lc/bf;

    invoke-virtual {v1, v3}, Lc/f;->c(I)Lc/e;

    move-result-object v1

    invoke-direct {v0, v2, p2, v1}, Lc/bf;-><init>(ZILc/e;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lc/as;->a:Lc/bc;

    .line 3
    invoke-virtual {v1}, Lc/f;->d()I

    move-result v0

    if-ge v0, v2, :cond_5

    sget-object v0, Lc/as;->a:Lc/bc;

    .line 4
    :goto_2
    new-instance v1, Lc/bf;

    invoke-direct {v1, v3, p2, v0}, Lc/bf;-><init>(ZILc/e;)V

    move-object v0, v1

    goto :goto_0

    .line 3
    :cond_5
    new-instance v0, Lc/bc;

    invoke-direct {v0, v1, v2}, Lc/bc;-><init>(Lc/f;I)V

    goto :goto_2
.end method

.method public final f()Lc/f;
    .locals 3

    new-instance v1, Lc/f;

    invoke-direct {v1}, Lc/f;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lc/x;->d()Lc/e;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lc/bo;

    if-eqz v2, :cond_0

    check-cast v0, Lc/bo;

    invoke-interface {v0}, Lc/bo;->c()Lc/s;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lc/f;->b(Lc/e;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v1
.end method
