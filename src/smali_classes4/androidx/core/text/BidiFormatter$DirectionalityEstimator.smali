.class Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
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

    sput-object v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v3, :cond_14

    sget-object v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

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

    iput-object p1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2

    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

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

    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_4
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_1d

    iget-object v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1b

    const/16 v0, 0xc

    :goto_1a
    return v0

    :cond_1b
    if-ne v1, v3, :cond_4

    :cond_1d
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v0, 0xd

    goto :goto_1a
.end method

.method private skipEntityForward()B
    .registers 4

    :cond_0
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    :cond_16
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .registers 6

    const/16 v4, 0x3e

    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_4
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_1d

    iget-object v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1b

    const/16 v0, 0xc

    :goto_1a
    return v0

    :cond_1b
    if-ne v1, v4, :cond_24

    :cond_1d
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v0, 0xd

    goto :goto_1a

    :cond_24
    const/16 v2, 0x22

    if-eq v1, v2, :cond_2c

    const/16 v2, 0x27

    if-ne v1, v2, :cond_4

    :cond_2c
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_2e
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_4

    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_4

    goto :goto_2e
.end method

.method private skipTagForward()B
    .registers 6

    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_3a

    iget-object v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1b

    const/16 v0, 0xc

    :goto_1a
    return v0

    :cond_1b
    const/16 v2, 0x22

    if-eq v1, v2, :cond_23

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    :cond_23
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_25
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_2

    goto :goto_25

    :cond_3a
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v0, 0x3c

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v0, 0xd

    goto :goto_1a
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 4

    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    :cond_27
    :goto_27
    return v0

    :cond_28
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_27

    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_43

    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v0

    goto :goto_27

    :cond_43
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_27

    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v0

    goto :goto_27
.end method

.method dirTypeForward()B
    .registers 4

    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    :cond_25
    :goto_25
    return v0

    :cond_26
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_25

    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_41

    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v0

    goto :goto_25

    :cond_41
    const/16 v2, 0x26

    if-ne v1, v2, :cond_25

    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v0

    goto :goto_25
.end method

.method getEntryDir()I
    .registers 9

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v0, v1

    move v3, v1

    move v2, v1

    :cond_8
    :goto_8
    iget v6, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v7, :cond_37

    if-nez v0, :cond_37

    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    if-eqz v6, :cond_33

    if-eq v6, v4, :cond_30

    const/4 v7, 0x2

    if-eq v6, v7, :cond_30

    const/16 v7, 0x9

    if-eq v6, v7, :cond_8

    packed-switch v6, :pswitch_data_5a

    :cond_22
    move v0, v2

    goto :goto_8

    :pswitch_24  #0x12
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    goto :goto_8

    :pswitch_28  #0x10, 0x11
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_8

    :pswitch_2c  #0xe, 0xf
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_8

    :cond_30
    if-nez v2, :cond_22

    :cond_32
    :goto_32
    return v4

    :cond_33
    if-nez v2, :cond_22

    move v4, v5

    goto :goto_32

    :cond_37
    if-nez v0, :cond_3b

    move v4, v1

    goto :goto_32

    :cond_3b
    if-eqz v3, :cond_3f

    move v4, v3

    goto :goto_32

    :cond_3f
    :goto_3f
    iget v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_57

    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_68

    goto :goto_3f

    :pswitch_4b  #0xe, 0xf
    if-ne v0, v2, :cond_54

    move v4, v5

    goto :goto_32

    :pswitch_4f  #0x12
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :pswitch_52  #0x10, 0x11
    if-eq v0, v2, :cond_32

    :cond_54
    add-int/lit8 v2, v2, -0x1

    goto :goto_3f

    :cond_57
    move v4, v1

    goto :goto_32

    nop

    :pswitch_data_5a
    .packed-switch 0xe
        :pswitch_2c  #0000000e
        :pswitch_2c  #0000000f
        :pswitch_28  #00000010
        :pswitch_28  #00000011
        :pswitch_24  #00000012
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0xe
        :pswitch_4b  #0000000e
        :pswitch_4b  #0000000f
        :pswitch_52  #00000010
        :pswitch_52  #00000011
        :pswitch_4f  #00000012
    .end packed-switch
.end method

.method getExitDir()I
    .registers 8

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v0, v1

    move v2, v1

    :cond_9
    :goto_9
    iget v5, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v5, :cond_29

    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v5

    if-eqz v5, :cond_38

    if-eq v5, v3, :cond_31

    const/4 v6, 0x2

    if-eq v5, v6, :cond_31

    const/16 v6, 0x9

    if-eq v5, v6, :cond_9

    packed-switch v5, :pswitch_data_40

    if-nez v0, :cond_9

    :goto_21
    move v0, v2

    goto :goto_9

    :pswitch_23  #0x12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :pswitch_26  #0x10, 0x11
    if-ne v0, v2, :cond_2e

    move v1, v3

    :cond_29
    :goto_29
    return v1

    :pswitch_2a  #0xe, 0xf
    if-ne v0, v2, :cond_2e

    move v1, v4

    goto :goto_29

    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_31
    if-nez v2, :cond_35

    move v1, v3

    goto :goto_29

    :cond_35
    if-nez v0, :cond_9

    goto :goto_21

    :cond_38
    if-nez v2, :cond_3c

    move v1, v4

    goto :goto_29

    :cond_3c
    if-nez v0, :cond_9

    goto :goto_21

    nop

    :pswitch_data_40
    .packed-switch 0xe
        :pswitch_2a  #0000000e
        :pswitch_2a  #0000000f
        :pswitch_26  #00000010
        :pswitch_26  #00000011
        :pswitch_23  #00000012
    .end packed-switch
.end method
