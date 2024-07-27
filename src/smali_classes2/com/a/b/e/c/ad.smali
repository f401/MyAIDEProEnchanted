.class public final Lcom/a/b/e/c/ad;
.super Lcom/a/b/e/c/ag;


# static fields
.field public static final a:Lcom/a/b/e/c/ad;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/a/b/g/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/e/c/ad;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/a/b/e/c/ad;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/a/b/e/c/ad;->a:Lcom/a/b/e/c/ad;

    return-void
.end method

.method public constructor <init>(Lcom/a/b/g/e;)V
    .registers 4

    invoke-direct {p0}, Lcom/a/b/e/c/ag;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/e/c/ad;->c:Lcom/a/b/g/e;

    invoke-static {p1}, Lcom/a/b/e/c/ad;->a(Lcom/a/b/g/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/a/b/e/c/ag;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    new-instance v0, Lcom/a/b/g/e;

    invoke-static {p1}, Lcom/a/b/e/c/ad;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/g/e;-><init>([B)V

    iput-object v0, p0, Lcom/a/b/e/c/ad;->c:Lcom/a/b/g/e;

    return-void
.end method

.method private static a(II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad utf-8 byte "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/a/b/g/e;)Ljava/lang/String;
    .registers 11

    const/4 v4, 0x0

    const/16 v9, 0x80

    invoke-virtual {p0}, Lcom/a/b/g/e;->a()I

    move-result v0

    new-array v5, v0, [C

    move v3, v4

    move v1, v4

    :goto_0
    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/a/b/g/e;->e(I)I

    move-result v2

    shr-int/lit8 v6, v2, 0x4

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    invoke-static {v2, v1}, Lcom/a/b/e/c/ad;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    if-nez v2, :cond_1

    invoke-static {v2, v1}, Lcom/a/b/e/c/ad;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    int-to-char v2, v2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    aput-char v2, v5, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_2

    invoke-static {v2, v1}, Lcom/a/b/e/c/ad;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Lcom/a/b/g/e;->e(I)I

    move-result v6

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v9, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-static {v6, v0}, Lcom/a/b/e/c/ad;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v6, 0x3f

    or-int/2addr v2, v7

    if-eqz v2, :cond_4

    if-ge v2, v9, :cond_4

    add-int/lit8 v0, v1, 0x1

    invoke-static {v6, v0}, Lcom/a/b/e/c/ad;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    int-to-char v2, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :pswitch_3
    add-int/lit8 v0, v0, -0x3

    if-gez v0, :cond_5

    invoke-static {v2, v1}, Lcom/a/b/e/c/ad;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Lcom/a/b/g/e;->e(I)I

    move-result v6

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v9, :cond_6

    add-int/lit8 v0, v1, 0x1

    invoke-static {v6, v0}, Lcom/a/b/e/c/ad;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v1, 0x2

    invoke-virtual {p0, v7}, Lcom/a/b/g/e;->e(I)I

    move-result v7

    and-int/lit16 v8, v6, 0xc0

    if-eq v8, v9, :cond_7

    add-int/lit8 v0, v1, 0x2

    invoke-static {v7, v0}, Lcom/a/b/e/c/ad;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v2, v6

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v2, v6

    const/16 v6, 0x800

    if-ge v2, v6, :cond_8

    add-int/lit8 v0, v1, 0x2

    invoke-static {v7, v0}, Lcom/a/b/e/c/ad;->a(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    int-to-char v2, v2

    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v0, v3, 0x3

    new-array v4, v0, [B

    move v1, v2

    move v0, v2

    :goto_0
    if-lt v1, v3, :cond_0

    new-array v1, v0, [B

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x800

    if-ge v5, v6, :cond_2

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v6, v0, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .registers 2

    sget-object v0, Lcom/a/b/e/d/c;->t:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 7

    const/16 v4, 0x22

    invoke-virtual {p0}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p1, -0x2

    if-gt v1, v2, :cond_0

    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    goto :goto_0
.end method

.method protected b(Lcom/a/b/e/c/a;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    check-cast p1, Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 13

    const/4 v1, 0x1

    const/16 v11, 0x5c

    const/16 v10, 0x30

    const/4 v2, 0x0

    const/16 v9, 0x10

    iget-object v0, p0, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v5, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v2

    :goto_0
    if-lt v4, v5, :cond_0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v0, 0x20

    if-lt v7, v0, :cond_4

    const/16 v0, 0x7f

    if-ge v7, v0, :cond_4

    const/16 v0, 0x27

    if-eq v7, v0, :cond_1

    const/16 v0, 0x22

    if-eq v7, v0, :cond_1

    if-ne v7, v11, :cond_2

    :cond_1
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x7f

    if-gt v7, v0, :cond_a

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v0, v5, -0x1

    if-ge v4, v0, :cond_5

    iget-object v0, p0, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    if-lt v0, v10, :cond_6

    const/16 v3, 0x37

    if-gt v0, v3, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    :goto_4
    if-gez v3, :cond_7

    if-nez v0, :cond_3

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v0, "\\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v0, "\\r"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v0, "\\t"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    shr-int v8, v7, v3

    and-int/lit8 v8, v8, 0x7

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    if-ne v8, v10, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_9
    add-int/lit8 v3, v3, -0x3

    goto :goto_4

    :cond_a
    const-string v0, "\\u"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v7, 0xc

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v7, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v7, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/a/b/e/c/ad;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    check-cast p1, Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "utf8"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/a/b/g/e;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/ad;->c:Lcom/a/b/g/e;

    return-object v0
.end method

.method public l()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/ad;->c:Lcom/a/b/g/e;

    invoke-virtual {v0}, Lcom/a/b/g/e;->a()I

    move-result v0

    return v0
.end method

.method public m()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/ad;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string{\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
