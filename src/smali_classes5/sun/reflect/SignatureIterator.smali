.class public Lsun/reflect/SignatureIterator;
.super Ljava/lang/Object;
.source "SignatureIterator.java"


# instance fields
.field private idx:I

.field private sig:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lsun/reflect/SignatureIterator;->sig:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lsun/reflect/SignatureIterator;->reset()V

    .line 37
    return-void
.end method


# virtual methods
.method public atEnd()Z
    .registers 3

    .line 44
    iget-object v0, p0, Lsun/reflect/SignatureIterator;->sig:Ljava/lang/String;

    iget v1, p0, Lsun/reflect/SignatureIterator;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public next()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x4c

    const/16 v2, 0x5b

    .line 48
    invoke-virtual {p0}, Lsun/reflect/SignatureIterator;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 70
    :goto_b
    return-object v0

    .line 49
    :cond_c
    iget-object v0, p0, Lsun/reflect/SignatureIterator;->sig:Ljava/lang/String;

    iget v1, p0, Lsun/reflect/SignatureIterator;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 50
    if-eq v1, v2, :cond_2a

    if-eq v1, v3, :cond_2a

    .line 51
    iget v0, p0, Lsun/reflect/SignatureIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/reflect/SignatureIterator;->idx:I

    .line 52
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v1, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_b

    .line 55
    :cond_2a
    iget v0, p0, Lsun/reflect/SignatureIterator;->idx:I

    .line 56
    if-ne v1, v2, :cond_39

    .line 57
    :goto_2e
    iget-object v1, p0, Lsun/reflect/SignatureIterator;->sig:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_39

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 62
    :cond_39
    if-ne v1, v3, :cond_48

    .line 63
    :goto_3b
    iget-object v1, p0, Lsun/reflect/SignatureIterator;->sig:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_48

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 68
    :cond_48
    iget v1, p0, Lsun/reflect/SignatureIterator;->idx:I

    .line 69
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/reflect/SignatureIterator;->idx:I

    .line 70
    iget-object v2, p0, Lsun/reflect/SignatureIterator;->sig:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public reset()V
    .registers 2

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lsun/reflect/SignatureIterator;->idx:I

    .line 41
    return-void
.end method

.method public returnType()Ljava/lang/String;
    .registers 4

    .line 76
    invoke-virtual {p0}, Lsun/reflect/SignatureIterator;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 79
    iget-object v0, p0, Lsun/reflect/SignatureIterator;->sig:Ljava/lang/String;

    iget v1, p0, Lsun/reflect/SignatureIterator;->idx:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_15
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Illegal use of SignatureIterator"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
