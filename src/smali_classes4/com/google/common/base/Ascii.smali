.class public final Lcom/google/common/base/Ascii;
.super Ljava/lang/Object;
.source "Ascii.java"


# static fields
.field public static final ACK:B = 0x6t

.field public static final BEL:B = 0x7t

.field public static final BS:B = 0x8t

.field public static final CAN:B = 0x18t

.field private static final CASE_MASK:C = ' '

.field public static final CR:B = 0xdt

.field public static final DC1:B = 0x11t

.field public static final DC2:B = 0x12t

.field public static final DC3:B = 0x13t

.field public static final DC4:B = 0x14t

.field public static final DEL:B = 0x7ft

.field public static final DLE:B = 0x10t

.field public static final EM:B = 0x19t

.field public static final ENQ:B = 0x5t

.field public static final EOT:B = 0x4t

.field public static final ESC:B = 0x1bt

.field public static final ETB:B = 0x17t

.field public static final ETX:B = 0x3t

.field public static final FF:B = 0xct

.field public static final FS:B = 0x1ct

.field public static final GS:B = 0x1dt

.field public static final HT:B = 0x9t

.field public static final LF:B = 0xat

.field public static final MAX:C = '\u007f'

.field public static final MIN:C = '\u0000'

.field public static final NAK:B = 0x15t

.field public static final NL:B = 0xat

.field public static final NUL:B = 0x0t

.field public static final RS:B = 0x1et

.field public static final SI:B = 0xft

.field public static final SO:B = 0xet

.field public static final SOH:B = 0x1t

.field public static final SP:B = 0x20t

.field public static final SPACE:B = 0x20t

.field public static final STX:B = 0x2t

.field public static final SUB:B = 0x1at

.field public static final SYN:B = 0x16t

.field public static final US:B = 0x1ft

.field public static final VT:B = 0xbt

.field public static final XOFF:B = 0x13t

.field public static final XON:B = 0x11t


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 603
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 604
    if-ne p0, p1, :cond_9

    .line 624
    :cond_8
    :goto_8
    return v0

    .line 607
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v3, v2, :cond_11

    move v0, v1

    .line 608
    goto :goto_8

    :cond_11
    move v2, v1

    .line 610
    :goto_12
    if-ge v2, v3, :cond_8

    .line 611
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 612
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 613
    if-ne v4, v5, :cond_21

    .line 620
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 616
    :cond_21
    invoke-static {v4}, Lcom/google/common/base/Ascii;->getAlphaIndex(C)I

    move-result v4

    .line 619
    const/16 v6, 0x1a

    if-ge v4, v6, :cond_2f

    invoke-static {v5}, Lcom/google/common/base/Ascii;->getAlphaIndex(C)I

    move-result v5

    if-eq v4, v5, :cond_1e

    :cond_2f
    move v0, v1

    .line 622
    goto :goto_8
.end method

.method private static getAlphaIndex(C)I
    .registers 2

    .line 633
    or-int/lit8 v0, p0, 0x20

    add-int/lit8 v0, v0, -0x61

    int-to-char v0, v0

    return v0
.end method

.method public static isLowerCase(C)Z
    .registers 2

    .line 505
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUpperCase(C)Z
    .registers 2

    .line 514
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static toLowerCase(C)C
    .registers 2

    .line 446
    invoke-static {p0}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_9

    xor-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    :cond_9
    return p0
.end method

.method public static toLowerCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 431
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 432
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    :goto_a
    return-object v0

    .line 434
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 435
    const/4 v0, 0x0

    :goto_12
    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 436
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 438
    :cond_22
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 407
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 408
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2b

    .line 409
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 410
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 411
    :goto_15
    if-ge v0, v1, :cond_27

    .line 412
    aget-char v3, v2, v0

    .line 413
    invoke-static {v3}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 414
    xor-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 411
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 417
    :cond_27
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 420
    :cond_2b
    return-object p0

    .line 408
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static toUpperCase(C)C
    .registers 2

    .line 494
    invoke-static {p0}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_9

    xor-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    :cond_9
    return p0
.end method

.method public static toUpperCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 479
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 480
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    :goto_a
    return-object v0

    .line 482
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 483
    const/4 v0, 0x0

    :goto_12
    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 484
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 486
    :cond_22
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 455
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 456
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2b

    .line 457
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 458
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 459
    :goto_15
    if-ge v0, v1, :cond_27

    .line 460
    aget-char v3, v2, v0

    .line 461
    invoke-static {v3}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 462
    xor-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 459
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 465
    :cond_27
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 468
    :cond_2b
    return-object p0

    .line 456
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static truncate(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    .line 551
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, p1, v0

    .line 558
    if-ltz v2, :cond_27

    const/4 v0, 0x1

    .line 562
    :goto_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 558
    const-string v4, "maxLength (%s) must be >= length of the truncation indicator (%s)"

    invoke-static {v0, v4, p1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 564
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, p1, :cond_29

    .line 565
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 566
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_29

    .line 573
    :goto_26
    return-object p0

    :cond_27
    move v0, v1

    .line 558
    goto :goto_d

    .line 570
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 574
    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_26
.end method
