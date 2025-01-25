.class public Lc/aa;
.super Lc/s;
.source "SourceFile"


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lc/s;-><init>()V

    invoke-static {p1}, Lx/b;->c(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lc/aa;->a:[B

    .line 1
    :try_start_9
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyMMddHHmmssz"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    .line 3
    const-string v0, "invalid date string: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lc/s;-><init>()V

    iput-object p1, p0, Lc/aa;->a:[B

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lc/aa;->a:[B

    invoke-static {v0}, Lx/b;->b([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x2b

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-gez v2, :cond_42

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00GMT+00:00"

    goto/16 :goto_ae

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GMT+00:00"

    goto :goto_ae

    :cond_42
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_4c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-ne v1, v2, :cond_65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_65
    const-string v2, ":"

    const/16 v3, 0xf

    if-ne v1, v6, :cond_8d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "00GMT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xd

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_ae

    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_ae
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lc/s;)Z
    .registers 3

    instance-of v0, p1, Lc/aa;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Lc/aa;->a:[B

    check-cast p1, Lc/aa;

    iget-object p1, p1, Lc/aa;->a:[B

    invoke-static {v0, p1}, Lx/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public final e(Lc/q;)V
    .registers 5

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    iget-object v0, p0, Lc/aa;->a:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lc/q;->i(I)V

    const/4 v1, 0x0

    :goto_c
    if-eq v1, v0, :cond_18

    iget-object v2, p0, Lc/aa;->a:[B

    aget-byte v2, v2, v1

    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_18
    return-void
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lc/aa;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lc/aa;->a:[B

    invoke-static {v0}, Lx/a;->c([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/aa;->a:[B

    invoke-static {v0}, Lx/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
