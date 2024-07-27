.class Lcom/jcraft/jsch/KeyPair$ASN1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/KeyPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ASN1"
.end annotation


# instance fields
.field DW:I

.field FH:I

.field final Hw:Lcom/jcraft/jsch/KeyPair;

.field j6:[B


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/KeyPair;[B)V
    .registers 5

    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[BII)V

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/KeyPair;[BII)V
    .registers 7

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->Hw:Lcom/jcraft/jsch/KeyPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->j6:[B

    iput p3, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->DW:I

    iput p4, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->FH:I

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/KeyPair$ASN1Exception;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/KeyPair$ASN1Exception;-><init>(Lcom/jcraft/jsch/KeyPair;)V

    throw v0
.end method

.method private j6([I)I
    .registers 7

    const/4 v3, 0x0

    aget v1, p1, v3

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->j6:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    and-int/lit8 v2, v1, 0x7f

    move v1, v3

    :goto_0
    if-gtz v2, :cond_1

    :cond_0
    aput v0, p1, v3

    return v1

    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->j6:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method DW()[Lcom/jcraft/jsch/KeyPair$ASN1;
    .registers 13

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->j6:[B

    iget v2, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->DW:I

    aget-byte v1, v1, v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    add-int/lit8 v2, v2, 0x1

    aput v2, v3, v0

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6([I)I

    move-result v2

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    new-array v0, v0, [Lcom/jcraft/jsch/KeyPair$ASN1;

    :goto_0
    return-object v0

    :cond_0
    aget v1, v3, v0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :goto_1
    if-gtz v2, :cond_2

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lcom/jcraft/jsch/KeyPair$ASN1;

    move v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyPair$ASN1;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    aput v1, v3, v0

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6([I)I

    move-result v5

    aget v6, v3, v0

    sub-int v7, v6, v1

    new-instance v8, Lcom/jcraft/jsch/KeyPair$ASN1;

    iget-object v9, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->Hw:Lcom/jcraft/jsch/KeyPair;

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->j6:[B

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v11, v7, 0x1

    add-int/2addr v11, v5

    invoke-direct {v8, v9, v10, v1, v11}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[BII)V

    invoke-virtual {v4, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int v1, v6, v5

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v7

    sub-int/2addr v2, v5

    goto :goto_1
.end method

.method j6()[B
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->DW:I

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6([I)I

    move-result v1

    aget v0, v0, v4

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair$ASN1;->j6:[B

    array-length v3, v1

    invoke-static {v2, v0, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
