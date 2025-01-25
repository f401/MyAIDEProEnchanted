.class Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x700

    new-array v0, v3, [B

    sput-object v0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v3, :cond_14

    sget-object v1, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2

    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_8
.end method

.method private skipEntityBackward()B
    .registers 5

    const/16 v3, 0x3b

    iget v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_4
    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_23

    iget-object v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1f

    const/16 v0, 0xc

    :goto_1e
    return v0

    :cond_1f
    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v3, :cond_4

    :cond_23
    iput v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    int-to-char v0, v3

    iput-char v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v0, 0xd

    goto :goto_1e
.end method

.method private skipEntityForward()B
    .registers 4

    :cond_0
    iget v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    int-to-char v1, v0

    iput-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    :cond_19
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .registers 6

    const/16 v4, 0x3e

    iget v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_4
    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_23

    iget-object v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1f

    const/16 v0, 0xc

    :goto_1e
    return v0

    :cond_1f
    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v4, :cond_2b

    :cond_23
    iput v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    int-to-char v0, v4

    iput-char v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v0, 0xd

    goto :goto_1e

    :cond_2b
    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_37

    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_4

    :cond_37
    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_39
    iget v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_4

    iget-object v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-char v3, v2

    iput-char v3, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_4

    goto :goto_39
.end method

.method private skipTagForward()B
    .registers 6

    iget v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_2
    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_45

    iget-object v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1f

    const/16 v0, 0xc

    :goto_1e
    return v0

    :cond_1f
    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2b

    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    :cond_2b
    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_2d
    iget v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-char v3, v2

    iput-char v3, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_2

    goto :goto_2d

    :cond_45
    iput v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v0, 0x3c

    int-to-char v0, v0

    iput-char v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v0, 0xd

    goto :goto_1e
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    :cond_29
    :goto_29
    return v0

    :cond_2a
    iget v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    iget-boolean v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_29

    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_45

    invoke-direct {p0}, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v0

    goto :goto_29

    :cond_45
    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_29

    invoke-direct {p0}, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v0

    goto :goto_29
.end method

.method dirTypeForward()B
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    :cond_27
    :goto_27
    return v0

    :cond_28
    iget v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    iget-boolean v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_27

    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_43

    invoke-direct {p0}, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v0

    goto :goto_27

    :cond_43
    iget-char v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_27

    invoke-direct {p0}, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v0

    goto :goto_27
.end method

.method getEntryDir()I
    .registers 9

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    iput v1, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v0, v1

    move v3, v1

    move v2, v1

    :goto_8
    :pswitch_8  #0x9
    iget v6, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v7, :cond_30

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    packed-switch v6, :pswitch_data_56

    :pswitch_17  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xa, 0xb, 0xc, 0xd
    move v0, v2

    goto :goto_8

    :pswitch_19  #0xe, 0xf
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_8

    :pswitch_1d  #0x10, 0x11
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_8

    :pswitch_21  #0x12
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    goto :goto_8

    :pswitch_25  #0x0
    if-nez v2, :cond_28

    :cond_27
    :goto_27
    return v4

    :cond_28
    move v0, v2

    goto :goto_8

    :pswitch_2a  #0x1, 0x2
    if-nez v2, :cond_2e

    move v4, v5

    goto :goto_27

    :cond_2e
    move v0, v2

    goto :goto_8

    :cond_30
    if-nez v0, :cond_34

    move v4, v1

    goto :goto_27

    :cond_34
    if-eqz v3, :cond_38

    move v4, v3

    goto :goto_27

    :cond_38
    :goto_38
    iget v3, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_53

    invoke-virtual {p0}, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_80

    goto :goto_38

    :pswitch_44  #0xe, 0xf
    if-eq v0, v2, :cond_27

    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    :pswitch_49  #0x10, 0x11
    if-ne v0, v2, :cond_4d

    move v4, v5

    goto :goto_27

    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    :pswitch_50  #0x12
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_53
    move v4, v1

    goto :goto_27

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_2a  #00000001
        :pswitch_2a  #00000002
        :pswitch_17  #00000003
        :pswitch_17  #00000004
        :pswitch_17  #00000005
        :pswitch_17  #00000006
        :pswitch_17  #00000007
        :pswitch_17  #00000008
        :pswitch_8  #00000009
        :pswitch_17  #0000000a
        :pswitch_17  #0000000b
        :pswitch_17  #0000000c
        :pswitch_17  #0000000d
        :pswitch_19  #0000000e
        :pswitch_19  #0000000f
        :pswitch_1d  #00000010
        :pswitch_1d  #00000011
        :pswitch_21  #00000012
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0xe
        :pswitch_44  #0000000e
        :pswitch_44  #0000000f
        :pswitch_49  #00000010
        :pswitch_49  #00000011
        :pswitch_50  #00000012
    .end packed-switch
.end method

.method getExitDir()I
    .registers 7

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v0, v1

    move v2, v1

    :cond_9
    :goto_9
    :pswitch_9  #0x9
    iget v5, p0, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v5, :cond_1b

    invoke-virtual {p0}, Landroidj/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v5

    packed-switch v5, :pswitch_data_3a

    :pswitch_14  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xa, 0xb, 0xc, 0xd
    if-nez v0, :cond_9

    move v0, v2

    goto :goto_9

    :pswitch_18  #0x0
    if-nez v2, :cond_1c

    move v1, v3

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    if-nez v0, :cond_9

    move v0, v2

    goto :goto_9

    :pswitch_20  #0xe, 0xf
    if-ne v0, v2, :cond_24

    move v1, v3

    goto :goto_1b

    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :pswitch_27  #0x1, 0x2
    if-nez v2, :cond_2b

    move v1, v4

    goto :goto_1b

    :cond_2b
    if-nez v0, :cond_9

    move v0, v2

    goto :goto_9

    :pswitch_2f  #0x10, 0x11
    if-ne v0, v2, :cond_33

    move v1, v4

    goto :goto_1b

    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :pswitch_36  #0x12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_27  #00000001
        :pswitch_27  #00000002
        :pswitch_14  #00000003
        :pswitch_14  #00000004
        :pswitch_14  #00000005
        :pswitch_14  #00000006
        :pswitch_14  #00000007
        :pswitch_14  #00000008
        :pswitch_9  #00000009
        :pswitch_14  #0000000a
        :pswitch_14  #0000000b
        :pswitch_14  #0000000c
        :pswitch_14  #0000000d
        :pswitch_20  #0000000e
        :pswitch_20  #0000000f
        :pswitch_2f  #00000010
        :pswitch_2f  #00000011
        :pswitch_36  #00000012
    .end packed-switch
.end method
