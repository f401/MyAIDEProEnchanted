.class final Lokhttp3/internal/tls/DistinguishedNameParser;
.super Ljava/lang/Object;


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .registers 10

    const/16 v8, 0x3b

    const/16 v7, 0x2c

    const/16 v6, 0x2b

    const/16 v5, 0x20

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    :cond_e
    :goto_e
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_21

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_20
    return-object v0

    :cond_21
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-eq v2, v5, :cond_59

    if-eq v2, v8, :cond_4e

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_3f

    if-eq v2, v6, :cond_4e

    if-eq v2, v7, :cond_4e

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    int-to-char v2, v2

    aput-char v2, v1, v3

    :goto_3a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_e

    :cond_3f
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_3a

    :cond_4e
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_20

    :cond_59
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    int-to-char v0, v5

    aput-char v0, v1, v2

    :goto_68
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_81

    iget-object v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v4, v3, v1

    if-ne v4, v5, :cond_81

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    aput-char v0, v3, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_68

    :cond_81
    if-eq v1, v2, :cond_8d

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v0, v1

    if-eq v0, v7, :cond_8d

    if-eq v0, v6, :cond_8d

    if-ne v0, v8, :cond_e

    :cond_8d
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_20
.end method

.method private getByte(I)I
    .registers 11

    const/16 v8, 0x61

    const/16 v7, 0x46

    const/16 v6, 0x41

    const/16 v5, 0x39

    const/16 v4, 0x30

    add-int/lit8 v1, p1, 0x1

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v1, v0, :cond_78

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v2, p1

    if-lt v0, v4, :cond_26

    if-gt v0, v5, :cond_26

    add-int/lit8 v0, v0, -0x30

    :goto_1a
    aget-char v1, v2, v1

    if-lt v1, v4, :cond_36

    if-gt v1, v5, :cond_36

    add-int/lit8 v1, v1, -0x30

    :goto_22
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    return v0

    :cond_26
    if-lt v0, v8, :cond_2f

    const/16 v3, 0x66

    if-gt v0, v3, :cond_2f

    add-int/lit8 v0, v0, -0x57

    goto :goto_1a

    :cond_2f
    if-lt v0, v6, :cond_5f

    if-gt v0, v7, :cond_5f

    add-int/lit8 v0, v0, -0x37

    goto :goto_1a

    :cond_36
    if-lt v1, v8, :cond_3f

    const/16 v2, 0x66

    if-gt v1, v2, :cond_3f

    add-int/lit8 v1, v1, -0x57

    goto :goto_22

    :cond_3f
    if-lt v1, v6, :cond_46

    if-gt v1, v7, :cond_46

    add-int/lit8 v1, v1, -0x37

    goto :goto_22

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEscaped()C
    .registers 3

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_31

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_30

    const/16 v1, 0x25

    if-eq v0, v1, :cond_30

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_30

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_30

    const/16 v1, 0x22

    if-eq v0, v1, :cond_30

    const/16 v1, 0x23

    if-eq v0, v1, :cond_30

    packed-switch v0, :pswitch_data_4a

    packed-switch v0, :pswitch_data_54

    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->getUTF8()C

    move-result v0

    :cond_30
    :pswitch_30  #0x2a, 0x2b, 0x2c, 0x3b, 0x3c, 0x3d, 0x3e
    return v0

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end of DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_4a
    .packed-switch 0x2a
        :pswitch_30  #0000002a
        :pswitch_30  #0000002b
        :pswitch_30  #0000002c
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x3b
        :pswitch_30  #0000003b
        :pswitch_30  #0000003c
        :pswitch_30  #0000003d
        :pswitch_30  #0000003e
    .end packed-switch
.end method

.method private getUTF8()C
    .registers 9

    const/16 v7, 0x80

    const/16 v2, 0x3f

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v1

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    if-ge v1, v7, :cond_14

    int-to-char v0, v1

    :goto_13
    return v0

    :cond_14
    const/16 v0, 0xc0

    if-lt v1, v0, :cond_66

    const/16 v0, 0xf7

    if-gt v1, v0, :cond_66

    const/16 v0, 0xdf

    if-gt v1, v0, :cond_3b

    and-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x1

    :goto_23
    const/4 v3, 0x0

    move v4, v1

    :goto_25
    if-ge v3, v0, :cond_64

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v5, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v1, v5, :cond_39

    iget-object v5, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v5, v5, v1

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_47

    :cond_39
    move v0, v2

    goto :goto_13

    :cond_3b
    const/16 v0, 0xef

    if-gt v1, v0, :cond_43

    const/4 v0, 0x2

    and-int/lit8 v1, v1, 0xf

    goto :goto_23

    :cond_43
    const/4 v0, 0x3

    and-int/lit8 v1, v1, 0x7

    goto :goto_23

    :cond_47
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v1}, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v1

    iget v5, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    and-int/lit16 v5, v1, 0xc0

    if-eq v5, v7, :cond_5b

    move v0, v2

    goto :goto_13

    :cond_5b
    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v4, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_25

    :cond_64
    int-to-char v0, v4

    goto :goto_13

    :cond_66
    move v0, v2

    goto :goto_13
.end method

.method private hexAV()Ljava/lang/String;
    .registers 7

    const/16 v4, 0x20

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_92

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    :cond_c
    :goto_c
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_26

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_26

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_26

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_4b

    :cond_26
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    :cond_28
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int v3, v0, v2

    const/4 v0, 0x5

    if-lt v3, v0, :cond_79

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_79

    div-int/lit8 v4, v3, 0x2

    new-array v5, v4, [B

    const/4 v1, 0x0

    add-int/lit8 v0, v2, 0x1

    :goto_3c
    if-ge v1, v4, :cond_6f

    invoke-direct {p0, v0}, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4b
    if-ne v2, v4, :cond_60

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    :goto_4f
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_28

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_28

    goto :goto_4f

    :cond_60
    const/16 v3, 0x41

    if-lt v2, v3, :cond_c

    const/16 v3, 0x46

    if-gt v2, v3, :cond_c

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_c

    :cond_6f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end of DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end of DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private nextAT()Ljava/lang/String;
    .registers 7

    const/16 v4, 0x3d

    const/16 v3, 0x20

    :goto_4
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_15

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v2, v0

    if-ne v2, v3, :cond_15

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_4

    :cond_15
    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    :goto_18
    return-object v0

    :cond_19
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2d

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v2, v0

    if-eq v2, v4, :cond_2d

    if-ne v2, v3, :cond_1b

    :cond_2d
    if-ge v0, v1, :cond_c6

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v3, :cond_52

    :goto_37
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_4a

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v2, v0

    if-eq v2, v4, :cond_4a

    if-ne v2, v3, :cond_4a

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_37

    :cond_4a
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v2, v0

    if-ne v2, v4, :cond_ad

    if-eq v0, v1, :cond_ad

    :cond_52
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    :cond_54
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_64

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-eq v1, v3, :cond_54

    :cond_64
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int v2, v1, v0

    const/4 v3, 0x4

    if-le v2, v3, :cond_a1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    add-int/lit8 v3, v0, 0x3

    aget-char v3, v2, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a1

    aget-char v3, v2, v0

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_81

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_a1

    :cond_81
    add-int/lit8 v3, v0, 0x1

    aget-char v4, v2, v3

    const/16 v5, 0x49

    if-eq v4, v5, :cond_8f

    aget-char v3, v2, v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_a1

    :cond_8f
    add-int/lit8 v3, v0, 0x2

    aget-char v4, v2, v3

    const/16 v5, 0x44

    if-eq v4, v5, :cond_9d

    aget-char v2, v2, v3

    const/16 v3, 0x64

    if-ne v2, v3, :cond_a1

    :cond_9d
    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    :cond_a1
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    new-instance v0, Ljava/lang/String;

    sub-int/2addr v1, v3

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_18

    :cond_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end of DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end of DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private quotedAV()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    :goto_8
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_54

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_37

    :cond_18
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_18

    :cond_2a
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_37
    const/16 v0, 0x5c

    if-ne v2, v0, :cond_4e

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    :goto_43
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_4e
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_43

    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end of DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v6, 0x3b

    const/16 v5, 0x2c

    const/16 v4, 0x2b

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    move-object v1, v2

    :cond_1f
    :goto_1f
    return-object v1

    :cond_20
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-eq v1, v5, :cond_28

    if-ne v1, v6, :cond_6b

    :cond_28
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    :cond_32
    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ne v1, v3, :cond_3a

    move-object v1, v2

    goto :goto_1f

    :cond_3a
    iget-object v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v3, v1

    const/16 v3, 0x22

    if-eq v1, v3, :cond_66

    const/16 v3, 0x23

    if-eq v1, v3, :cond_61

    if-eq v1, v4, :cond_5e

    if-eq v1, v5, :cond_5e

    if-eq v1, v6, :cond_5e

    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    :goto_50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_20

    move-object v1, v2

    goto :goto_1f

    :cond_5e
    const-string v1, ""

    goto :goto_50

    :cond_61
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_50

    :cond_66
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_50

    :cond_6b
    if-eq v1, v4, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
