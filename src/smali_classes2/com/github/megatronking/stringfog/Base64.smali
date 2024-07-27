.class public final Lcom/github/megatronking/stringfog/Base64;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/megatronking/stringfog/Base64$Coder;,
        Lcom/github/megatronking/stringfog/Base64$Decoder;,
        Lcom/github/megatronking/stringfog/Base64$Encoder;
    }
.end annotation


# static fields
.field private static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field private static final URL_SAFE:I = 0x8


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$L1000000()I
    .registers 1

    sget v0, Lcom/github/megatronking/stringfog/Base64;->CRLF:I

    return v0
.end method

.method static synthetic access$L1000001()I
    .registers 1

    sget v0, Lcom/github/megatronking/stringfog/Base64;->URL_SAFE:I

    return v0
.end method

.method static synthetic access$S1000000(I)V
    .registers 1

    sput p0, Lcom/github/megatronking/stringfog/Base64;->CRLF:I

    return-void
.end method

.method static synthetic access$S1000001(I)V
    .registers 1

    sput p0, Lcom/github/megatronking/stringfog/Base64;->URL_SAFE:I

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/megatronking/stringfog/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/github/megatronking/stringfog/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method private static decode([BIII)[B
    .registers 8

    const/4 v3, 0x0

    new-instance v1, Lcom/github/megatronking/stringfog/Base64$Decoder;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v1, p3, v0}, Lcom/github/megatronking/stringfog/Base64$Decoder;-><init>(I[B)V

    const/4 v0, 0x1

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/github/megatronking/stringfog/Base64$Decoder;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v1, Lcom/github/megatronking/stringfog/Base64$Coder;->op:I

    iget-object v2, v1, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    :goto_0
    return-object v0

    :cond_1
    iget v0, v1, Lcom/github/megatronking/stringfog/Base64$Coder;->op:I

    new-array v0, v0, [B

    iget-object v2, v1, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    iget v1, v1, Lcom/github/megatronking/stringfog/Base64$Coder;->op:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;I)[B
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/megatronking/stringfog/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[B
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/github/megatronking/stringfog/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method private static encode([BIII)[B
    .registers 9

    const/4 v2, 0x1

    new-instance v3, Lcom/github/megatronking/stringfog/Base64$Encoder;

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {v3, p3, v0}, Lcom/github/megatronking/stringfog/Base64$Encoder;-><init>(I[B)V

    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    iget-boolean v1, v3, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_padding:Z

    if-eqz v1, :cond_2

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, v3, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_1

    if-lez p2, :cond_1

    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v4, v1, 0x39

    iget-boolean v1, v3, Lcom/github/megatronking/stringfog/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_1
    new-array v0, v0, [B

    iput-object v0, v3, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    invoke-virtual {v3, p0, p1, p2, v2}, Lcom/github/megatronking/stringfog/Base64$Encoder;->process([BIIZ)Z

    iget-object v0, v3, Lcom/github/megatronking/stringfog/Base64$Coder;->output:[B

    return-object v0

    :cond_2
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
