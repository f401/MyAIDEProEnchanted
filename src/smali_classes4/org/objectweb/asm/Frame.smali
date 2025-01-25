.class final Lorg/objectweb/asm/Frame;
.super Ljava/lang/Object;


# static fields
.field static final a:[I


# instance fields
.field b:Lorg/objectweb/asm/Label;

.field c:[I

.field d:[I

.field private e:[I

.field private f:[I

.field private g:I

.field private h:I

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/objectweb/asm/Frame;->_clinit_()V

    const/16 v0, 0xca

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_18

    const-string v2, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x45

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    sput-object v1, Lorg/objectweb/asm/Frame;->a:[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static _clinit_()V
    .registers 0

    return-void
.end method

.method private a()I
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/Frame;->g:I

    if-lez v0, :cond_f

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->f:[I

    iget v1, p0, Lorg/objectweb/asm/Frame;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/objectweb/asm/Frame;->g:I

    aget v0, v0, v1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->b:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/objectweb/asm/Label;->f:I

    const/high16 v0, 0x3000000

    neg-int v1, v1

    or-int/2addr v0, v1

    goto :goto_e
.end method

.method private a(I)I
    .registers 5

    const/high16 v2, 0x2000000

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->e:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->e:[I

    array-length v0, v0

    if-lt p1, v0, :cond_e

    :cond_b
    or-int v0, v2, p1

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->e:[I

    aget v0, v0, p1

    if-nez v0, :cond_d

    iget-object v1, p0, Lorg/objectweb/asm/Frame;->e:[I

    or-int v0, v2, p1

    aput v0, v1, p1

    goto :goto_d
.end method

.method private a(Lorg/objectweb/asm/ClassWriter;I)I
    .registers 10

    const/high16 v2, 0x1700000

    const v6, 0x7fffff

    const v0, 0x1000006

    if-ne p2, v0, :cond_2e

    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v2

    :goto_11
    const/4 v1, 0x0

    :goto_12
    iget v2, p0, Lorg/objectweb/asm/Frame;->h:I

    if-ge v1, v2, :cond_2d

    iget-object v2, p0, Lorg/objectweb/asm/Frame;->i:[I

    aget v2, v2, v1

    const/high16 v3, -0x10000000

    and-int/2addr v3, v2

    const/high16 v4, 0xf000000

    and-int/2addr v4, v2

    const/high16 v5, 0x2000000

    if-ne v4, v5, :cond_45

    iget-object v4, p0, Lorg/objectweb/asm/Frame;->c:[I

    and-int/2addr v2, v6

    aget v2, v4, v2

    add-int/2addr v2, v3

    :cond_2a
    :goto_2a
    if-ne p2, v2, :cond_55

    move p2, v0

    :cond_2d
    return p2

    :cond_2e
    const/high16 v0, -0x100000

    and-int/2addr v0, p2

    const/high16 v1, 0x1800000

    if-ne v0, v1, :cond_2d

    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->H:[Lorg/objectweb/asm/Item;

    const v1, 0xfffff

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v2

    goto :goto_11

    :cond_45
    const/high16 v5, 0x3000000

    if-ne v4, v5, :cond_2a

    iget-object v4, p0, Lorg/objectweb/asm/Frame;->d:[I

    iget-object v5, p0, Lorg/objectweb/asm/Frame;->d:[I

    array-length v5, v5

    and-int/2addr v2, v6

    sub-int v2, v5, v2

    aget v2, v4, v2

    add-int/2addr v2, v3

    goto :goto_2a

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method private a(II)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->e:[I

    if-nez v0, :cond_b

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/Frame;->e:[I

    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->e:[I

    array-length v0, v0

    if-lt p1, v0, :cond_21

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/objectweb/asm/Frame;->e:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/objectweb/asm/Frame;->e:[I

    :cond_21
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->e:[I

    aput p2, v0, p1

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_15

    invoke-static {p1}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    :goto_14
    return-void

    :cond_15
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x44

    if-ne v0, v1, :cond_22

    :cond_1d
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    goto :goto_14

    :cond_22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    goto :goto_14
.end method

.method private a(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1, p2}, Lorg/objectweb/asm/Frame;->b(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    const v1, 0x1000004

    if-eq v0, v1, :cond_13

    const v1, 0x1000003

    if-ne v0, v1, :cond_18

    :cond_13
    const/high16 v0, 0x1000000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    :cond_18
    return-void
.end method

.method private static a(Lorg/objectweb/asm/ClassWriter;I[II)Z
    .registers 12

    const/4 v0, 0x0

    const v1, 0x1000005

    const/high16 v7, 0xff00000

    const/high16 v6, 0x1700000

    const/high16 v2, -0x10000000

    aget v5, p2, p3

    if-ne v5, p1, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    const v3, 0xfffffff

    and-int/2addr v3, p1

    if-ne v3, v1, :cond_9c

    if-eq v5, v1, :cond_e

    move v3, v1

    :goto_18
    if-nez v5, :cond_1e

    aput v3, p2, p3

    const/4 v0, 0x1

    goto :goto_e

    :cond_1e
    and-int v4, v5, v7

    if-eq v4, v6, :cond_26

    and-int v4, v5, v2

    if-eqz v4, :cond_8a

    :cond_26
    if-eq v3, v1, :cond_e

    const/high16 v1, -0x100000

    and-int/2addr v1, v3

    const/high16 v4, -0x100000

    and-int/2addr v4, v5

    if-ne v1, v4, :cond_58

    and-int v1, v5, v7

    if-ne v1, v6, :cond_4a

    and-int v1, v3, v2

    or-int/2addr v1, v6

    const v2, 0xfffff

    and-int/2addr v2, v3

    const v3, 0xfffff

    and-int/2addr v3, v5

    invoke-virtual {p0, v2, v3}, Lorg/objectweb/asm/ClassWriter;->a(II)I

    move-result v2

    or-int/2addr v1, v2

    :goto_44
    if-eq v5, v1, :cond_e

    aput v1, p2, p3

    const/4 v0, 0x1

    goto :goto_e

    :cond_4a
    and-int v1, v5, v2

    const/high16 v2, 0x10000000

    sub-int/2addr v1, v2

    or-int/2addr v1, v6

    const-string v2, "java/lang/Object"

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_44

    :cond_58
    and-int v1, v3, v7

    if-eq v1, v6, :cond_60

    and-int v1, v3, v2

    if-eqz v1, :cond_87

    :cond_60
    and-int v1, v3, v2

    if-eqz v1, :cond_68

    and-int v1, v3, v7

    if-ne v1, v6, :cond_83

    :cond_68
    move v4, v0

    :goto_69
    and-int v1, v5, v2

    if-eqz v1, :cond_71

    and-int v1, v5, v7

    if-ne v1, v6, :cond_85

    :cond_71
    move v1, v0

    :goto_72
    and-int/2addr v3, v2

    add-int/2addr v3, v4

    and-int/2addr v2, v5

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    or-int/2addr v1, v6

    const-string v2, "java/lang/Object"

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_44

    :cond_83
    move v4, v2

    goto :goto_69

    :cond_85
    move v1, v2

    goto :goto_72

    :cond_87
    const/high16 v1, 0x1000000

    goto :goto_44

    :cond_8a
    if-ne v5, v1, :cond_99

    and-int v1, v3, v7

    if-eq v1, v6, :cond_94

    and-int v1, v3, v2

    if-eqz v1, :cond_96

    :cond_94
    move v1, v3

    goto :goto_44

    :cond_96
    const/high16 v1, 0x1000000

    goto :goto_44

    :cond_99
    const/high16 v1, 0x1000000

    goto :goto_44

    :cond_9c
    move v3, p1

    goto/16 :goto_18
.end method

.method private static b(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)I
    .registers 10

    const v4, 0x1000004

    const v5, 0x1000003

    const v3, 0x1000002

    const v2, 0x1000001

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x28

    if-ne v0, v6, :cond_31

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_86

    add-int/lit8 v1, v0, 0x1

    :goto_26
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_4f

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_31
    move v0, v1

    goto :goto_1d

    :sswitch_33
    move v1, v2

    :goto_34
    :sswitch_34
    return v1

    :sswitch_35
    move v1, v3

    goto :goto_34

    :sswitch_37
    move v1, v4

    goto :goto_34

    :sswitch_39
    move v1, v5

    goto :goto_34

    :sswitch_3b
    const/high16 v1, 0x1700000

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_34

    :cond_4f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_b0

    const/high16 v2, 0x1700000

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v3, v2

    :goto_69
    :sswitch_69
    sub-int v0, v1, v0

    shl-int/lit8 v0, v0, 0x1c

    or-int v1, v0, v3

    goto :goto_34

    :sswitch_70
    const v3, 0x1000009

    goto :goto_69

    :sswitch_74
    const v3, 0x100000b

    goto :goto_69

    :sswitch_78
    const v3, 0x100000a

    goto :goto_69

    :sswitch_7c
    const v3, 0x100000c

    goto :goto_69

    :sswitch_80
    move v3, v4

    goto :goto_69

    :sswitch_82
    move v3, v5

    goto :goto_69

    :sswitch_84
    move v3, v2

    goto :goto_69

    :sswitch_data_86
    .sparse-switch
        0x42 -> :sswitch_33
        0x43 -> :sswitch_33
        0x44 -> :sswitch_39
        0x46 -> :sswitch_35
        0x49 -> :sswitch_33
        0x4a -> :sswitch_37
        0x4c -> :sswitch_3b
        0x53 -> :sswitch_33
        0x56 -> :sswitch_34
        0x5a -> :sswitch_33
    .end sparse-switch

    :sswitch_data_b0
    .sparse-switch
        0x42 -> :sswitch_78
        0x43 -> :sswitch_74
        0x44 -> :sswitch_82
        0x46 -> :sswitch_69
        0x49 -> :sswitch_84
        0x4a -> :sswitch_80
        0x53 -> :sswitch_7c
        0x5a -> :sswitch_70
    .end sparse-switch
.end method

.method private b(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->f:[I

    if-nez v0, :cond_b

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/Frame;->f:[I

    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->f:[I

    array-length v0, v0

    iget v1, p0, Lorg/objectweb/asm/Frame;->g:I

    if-lt v1, v0, :cond_25

    iget v1, p0, Lorg/objectweb/asm/Frame;->g:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/objectweb/asm/Frame;->f:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/objectweb/asm/Frame;->f:[I

    :cond_25
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->f:[I

    iget v1, p0, Lorg/objectweb/asm/Frame;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/Frame;->g:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->b:Lorg/objectweb/asm/Label;

    iget v0, v0, Lorg/objectweb/asm/Label;->f:I

    iget v1, p0, Lorg/objectweb/asm/Frame;->g:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/objectweb/asm/Frame;->b:Lorg/objectweb/asm/Label;

    iget v1, v1, Lorg/objectweb/asm/Label;->g:I

    if-le v0, v1, :cond_40

    iget-object v1, p0, Lorg/objectweb/asm/Frame;->b:Lorg/objectweb/asm/Label;

    iput v0, v1, Lorg/objectweb/asm/Label;->g:I

    :cond_40
    return-void
.end method

.method private c(I)V
    .registers 5

    iget v0, p0, Lorg/objectweb/asm/Frame;->g:I

    if-lt v0, p1, :cond_a

    iget v0, p0, Lorg/objectweb/asm/Frame;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/objectweb/asm/Frame;->g:I

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->b:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->f:I

    iget v2, p0, Lorg/objectweb/asm/Frame;->g:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/objectweb/asm/Label;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/objectweb/asm/Frame;->g:I

    goto :goto_9
.end method

.method private d(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->i:[I

    if-nez v0, :cond_a

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/Frame;->i:[I

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->i:[I

    array-length v0, v0

    iget v1, p0, Lorg/objectweb/asm/Frame;->h:I

    if-lt v1, v0, :cond_24

    iget v1, p0, Lorg/objectweb/asm/Frame;->h:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/objectweb/asm/Frame;->i:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/objectweb/asm/Frame;->i:[I

    :cond_24
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->i:[I

    iget v1, p0, Lorg/objectweb/asm/Frame;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/Frame;->h:I

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method a(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V
    .registers 10

    const v4, 0x1000001

    const/4 v3, 0x2

    const v1, 0x1000004

    const/4 v0, 0x1

    const/high16 v2, 0x1000000

    packed-switch p1, :pswitch_data_35c

    :pswitch_d  #0x13, 0x14, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0xc4, 0xc5
    invoke-direct {p0, p2}, Lorg/objectweb/asm/Frame;->c(I)V

    iget-object v0, p4, Lorg/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    :cond_15
    :goto_15
    :pswitch_15  #0x0, 0x74, 0x75, 0x76, 0x77, 0x91, 0x92, 0x93, 0xa7, 0xb1
    return-void

    :pswitch_16  #0x1
    const v0, 0x1000005

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_1d  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x10, 0x11, 0x15
    invoke-direct {p0, v4}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_21  #0x9, 0xa, 0x16
    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_28  #0xb, 0xc, 0xd, 0x17
    const v0, 0x1000002

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_2f  #0xe, 0xf, 0x18
    const v0, 0x1000003

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_39  #0x12
    iget v0, p4, Lorg/objectweb/asm/Item;->b:I

    packed-switch v0, :pswitch_data_4f0

    :pswitch_3e  #0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf
    const/high16 v0, 0x1700000

    const-string v1, "java/lang/invoke/MethodHandle"

    invoke-virtual {p3, v1}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_4b  #0x3
    invoke-direct {p0, v4}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_4f  #0x5
    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_56  #0x4
    const v0, 0x1000002

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_5d  #0x6
    const v0, 0x1000003

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_67  #0x7
    const/high16 v0, 0x1700000

    const-string v1, "java/lang/Class"

    invoke-virtual {p3, v1}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_74  #0x8
    const/high16 v0, 0x1700000

    const-string v1, "java/lang/String"

    invoke-virtual {p3, v1}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_81  #0x10
    const/high16 v0, 0x1700000

    const-string v1, "java/lang/invoke/MethodType"

    invoke-virtual {p3, v1}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_8e  #0x19
    invoke-direct {p0, p2}, Lorg/objectweb/asm/Frame;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto :goto_15

    :pswitch_96  #0x2e, 0x33, 0x34, 0x35
    invoke-direct {p0, v3}, Lorg/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v4}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_9e  #0x2f, 0x8f
    invoke-direct {p0, v3}, Lorg/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_a9  #0x30
    invoke-direct {p0, v3}, Lorg/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000002

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_b4  #0x31, 0x8a
    invoke-direct {p0, v3}, Lorg/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000003

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_c2  #0x32
    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    const/high16 v0, -0x10000000

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_d1  #0x36, 0x38, 0x3a
    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/objectweb/asm/Frame;->a(II)V

    if-lez p2, :cond_15

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->a(I)I

    move-result v0

    if-eq v0, v1, :cond_e7

    const v1, 0x1000003

    if-ne v0, v1, :cond_ee

    :cond_e7
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0, v2}, Lorg/objectweb/asm/Frame;->a(II)V

    goto/16 :goto_15

    :cond_ee
    const/high16 v1, 0xf000000

    and-int/2addr v1, v0

    if-eq v1, v2, :cond_15

    add-int/lit8 v1, p2, -0x1

    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lorg/objectweb/asm/Frame;->a(II)V

    goto/16 :goto_15

    :pswitch_fd  #0x37, 0x39
    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/objectweb/asm/Frame;->a(II)V

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/objectweb/asm/Frame;->a(II)V

    if-lez p2, :cond_15

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->a(I)I

    move-result v0

    if-eq v0, v1, :cond_11b

    const v1, 0x1000003

    if-ne v0, v1, :cond_122

    :cond_11b
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0, v2}, Lorg/objectweb/asm/Frame;->a(II)V

    goto/16 :goto_15

    :cond_122
    const/high16 v1, 0xf000000

    and-int/2addr v1, v0

    if-eq v1, v2, :cond_15

    add-int/lit8 v1, p2, -0x1

    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lorg/objectweb/asm/Frame;->a(II)V

    goto/16 :goto_15

    :pswitch_131  #0x4f, 0x51, 0x53, 0x54, 0x55, 0x56
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    goto/16 :goto_15

    :pswitch_137  #0x50, 0x52
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    goto/16 :goto_15

    :pswitch_13d  #0x57, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0xaa, 0xab, 0xac, 0xae, 0xb0, 0xbf, 0xc2, 0xc3, 0xc6, 0xc7
    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    goto/16 :goto_15

    :pswitch_142  #0x58, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xad, 0xaf
    invoke-direct {p0, v3}, Lorg/objectweb/asm/Frame;->c(I)V

    goto/16 :goto_15

    :pswitch_147  #0x59
    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_153  #0x5a
    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_166  #0x5b
    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v2

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_180  #0x5c
    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_196  #0x5d
    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v2

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_1b3  #0x5e
    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v2

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v3

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v3}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_1d7  #0x5f
    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_1e7  #0x60, 0x64, 0x68, 0x6c, 0x70, 0x78, 0x7a, 0x7c, 0x7e, 0x80, 0x82, 0x88, 0x8e, 0x95, 0x96
    invoke-direct {p0, v3}, Lorg/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v4}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_1ef  #0x61, 0x65, 0x69, 0x6d, 0x71, 0x7f, 0x81, 0x83
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_1fb  #0x62, 0x66, 0x6a, 0x6e, 0x72, 0x89, 0x90
    invoke-direct {p0, v3}, Lorg/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000002

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_206  #0x63, 0x67, 0x6b, 0x6f, 0x73
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000003

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_215  #0x79, 0x7b, 0x7d
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_221  #0x84
    invoke-direct {p0, p2, v4}, Lorg/objectweb/asm/Frame;->a(II)V

    goto/16 :goto_15

    :pswitch_226  #0x85, 0x8c
    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_231  #0x86
    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000002

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_23c  #0x87, 0x8d
    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000003

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_24a  #0x8b, 0xbe, 0xc1
    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v4}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_252  #0x94, 0x97, 0x98
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v4}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_25b  #0xa8, 0xa9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_263  #0xb2
    iget-object v0, p4, Lorg/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_26a  #0xb3
    iget-object v0, p4, Lorg/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->a(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_271  #0xb4
    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->c(I)V

    iget-object v0, p4, Lorg/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_27b  #0xb5
    iget-object v0, p4, Lorg/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    goto/16 :goto_15

    :pswitch_285  #0xb6, 0xb7, 0xb8, 0xb9
    iget-object v0, p4, Lorg/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->a(Ljava/lang/String;)V

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_2a4

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    move-result v0

    const/16 v1, 0xb7

    if-ne p1, v1, :cond_2a4

    iget-object v1, p4, Lorg/objectweb/asm/Item;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2a4

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->d(I)V

    :cond_2a4
    iget-object v0, p4, Lorg/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_2ab  #0xba
    iget-object v0, p4, Lorg/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->a(Ljava/lang/String;)V

    iget-object v0, p4, Lorg/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_2b7  #0xbb
    const/high16 v0, 0x1800000

    iget-object v1, p4, Lorg/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {p3, v1, p2}, Lorg/objectweb/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_2c5  #0xbc
    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    packed-switch p2, :pswitch_data_510

    const v0, 0x11000004

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_2d3  #0x4
    const v0, 0x11000009

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_2db  #0x5
    const v0, 0x1100000b

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_2e3  #0x8
    const v0, 0x1100000a

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_2eb  #0x9
    const v0, 0x1100000c

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_2f3  #0xa
    const v0, 0x11000001

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_2fb  #0x6
    const v0, 0x11000002

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_303  #0x7
    const v0, 0x11000003

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_30b  #0xbd
    iget-object v0, p4, Lorg/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_331

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_331
    invoke-virtual {p3, v0}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x11700000

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_33d  #0xc0
    iget-object v0, p4, Lorg/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-direct {p0}, Lorg/objectweb/asm/Frame;->a()I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_350

    invoke-direct {p0, p3, v0}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_350
    invoke-virtual {p3, v0}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x1700000

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_15

    :pswitch_data_35c
    .packed-switch 0x0
        :pswitch_15  #00000000
        :pswitch_16  #00000001
        :pswitch_1d  #00000002
        :pswitch_1d  #00000003
        :pswitch_1d  #00000004
        :pswitch_1d  #00000005
        :pswitch_1d  #00000006
        :pswitch_1d  #00000007
        :pswitch_1d  #00000008
        :pswitch_21  #00000009
        :pswitch_21  #0000000a
        :pswitch_28  #0000000b
        :pswitch_28  #0000000c
        :pswitch_28  #0000000d
        :pswitch_2f  #0000000e
        :pswitch_2f  #0000000f
        :pswitch_1d  #00000010
        :pswitch_1d  #00000011
        :pswitch_39  #00000012
        :pswitch_d  #00000013
        :pswitch_d  #00000014
        :pswitch_1d  #00000015
        :pswitch_21  #00000016
        :pswitch_28  #00000017
        :pswitch_2f  #00000018
        :pswitch_8e  #00000019
        :pswitch_d  #0000001a
        :pswitch_d  #0000001b
        :pswitch_d  #0000001c
        :pswitch_d  #0000001d
        :pswitch_d  #0000001e
        :pswitch_d  #0000001f
        :pswitch_d  #00000020
        :pswitch_d  #00000021
        :pswitch_d  #00000022
        :pswitch_d  #00000023
        :pswitch_d  #00000024
        :pswitch_d  #00000025
        :pswitch_d  #00000026
        :pswitch_d  #00000027
        :pswitch_d  #00000028
        :pswitch_d  #00000029
        :pswitch_d  #0000002a
        :pswitch_d  #0000002b
        :pswitch_d  #0000002c
        :pswitch_d  #0000002d
        :pswitch_96  #0000002e
        :pswitch_9e  #0000002f
        :pswitch_a9  #00000030
        :pswitch_b4  #00000031
        :pswitch_c2  #00000032
        :pswitch_96  #00000033
        :pswitch_96  #00000034
        :pswitch_96  #00000035
        :pswitch_d1  #00000036
        :pswitch_fd  #00000037
        :pswitch_d1  #00000038
        :pswitch_fd  #00000039
        :pswitch_d1  #0000003a
        :pswitch_d  #0000003b
        :pswitch_d  #0000003c
        :pswitch_d  #0000003d
        :pswitch_d  #0000003e
        :pswitch_d  #0000003f
        :pswitch_d  #00000040
        :pswitch_d  #00000041
        :pswitch_d  #00000042
        :pswitch_d  #00000043
        :pswitch_d  #00000044
        :pswitch_d  #00000045
        :pswitch_d  #00000046
        :pswitch_d  #00000047
        :pswitch_d  #00000048
        :pswitch_d  #00000049
        :pswitch_d  #0000004a
        :pswitch_d  #0000004b
        :pswitch_d  #0000004c
        :pswitch_d  #0000004d
        :pswitch_d  #0000004e
        :pswitch_131  #0000004f
        :pswitch_137  #00000050
        :pswitch_131  #00000051
        :pswitch_137  #00000052
        :pswitch_131  #00000053
        :pswitch_131  #00000054
        :pswitch_131  #00000055
        :pswitch_131  #00000056
        :pswitch_13d  #00000057
        :pswitch_142  #00000058
        :pswitch_147  #00000059
        :pswitch_153  #0000005a
        :pswitch_166  #0000005b
        :pswitch_180  #0000005c
        :pswitch_196  #0000005d
        :pswitch_1b3  #0000005e
        :pswitch_1d7  #0000005f
        :pswitch_1e7  #00000060
        :pswitch_1ef  #00000061
        :pswitch_1fb  #00000062
        :pswitch_206  #00000063
        :pswitch_1e7  #00000064
        :pswitch_1ef  #00000065
        :pswitch_1fb  #00000066
        :pswitch_206  #00000067
        :pswitch_1e7  #00000068
        :pswitch_1ef  #00000069
        :pswitch_1fb  #0000006a
        :pswitch_206  #0000006b
        :pswitch_1e7  #0000006c
        :pswitch_1ef  #0000006d
        :pswitch_1fb  #0000006e
        :pswitch_206  #0000006f
        :pswitch_1e7  #00000070
        :pswitch_1ef  #00000071
        :pswitch_1fb  #00000072
        :pswitch_206  #00000073
        :pswitch_15  #00000074
        :pswitch_15  #00000075
        :pswitch_15  #00000076
        :pswitch_15  #00000077
        :pswitch_1e7  #00000078
        :pswitch_215  #00000079
        :pswitch_1e7  #0000007a
        :pswitch_215  #0000007b
        :pswitch_1e7  #0000007c
        :pswitch_215  #0000007d
        :pswitch_1e7  #0000007e
        :pswitch_1ef  #0000007f
        :pswitch_1e7  #00000080
        :pswitch_1ef  #00000081
        :pswitch_1e7  #00000082
        :pswitch_1ef  #00000083
        :pswitch_221  #00000084
        :pswitch_226  #00000085
        :pswitch_231  #00000086
        :pswitch_23c  #00000087
        :pswitch_1e7  #00000088
        :pswitch_1fb  #00000089
        :pswitch_b4  #0000008a
        :pswitch_24a  #0000008b
        :pswitch_226  #0000008c
        :pswitch_23c  #0000008d
        :pswitch_1e7  #0000008e
        :pswitch_9e  #0000008f
        :pswitch_1fb  #00000090
        :pswitch_15  #00000091
        :pswitch_15  #00000092
        :pswitch_15  #00000093
        :pswitch_252  #00000094
        :pswitch_1e7  #00000095
        :pswitch_1e7  #00000096
        :pswitch_252  #00000097
        :pswitch_252  #00000098
        :pswitch_13d  #00000099
        :pswitch_13d  #0000009a
        :pswitch_13d  #0000009b
        :pswitch_13d  #0000009c
        :pswitch_13d  #0000009d
        :pswitch_13d  #0000009e
        :pswitch_142  #0000009f
        :pswitch_142  #000000a0
        :pswitch_142  #000000a1
        :pswitch_142  #000000a2
        :pswitch_142  #000000a3
        :pswitch_142  #000000a4
        :pswitch_142  #000000a5
        :pswitch_142  #000000a6
        :pswitch_15  #000000a7
        :pswitch_25b  #000000a8
        :pswitch_25b  #000000a9
        :pswitch_13d  #000000aa
        :pswitch_13d  #000000ab
        :pswitch_13d  #000000ac
        :pswitch_142  #000000ad
        :pswitch_13d  #000000ae
        :pswitch_142  #000000af
        :pswitch_13d  #000000b0
        :pswitch_15  #000000b1
        :pswitch_263  #000000b2
        :pswitch_26a  #000000b3
        :pswitch_271  #000000b4
        :pswitch_27b  #000000b5
        :pswitch_285  #000000b6
        :pswitch_285  #000000b7
        :pswitch_285  #000000b8
        :pswitch_285  #000000b9
        :pswitch_2ab  #000000ba
        :pswitch_2b7  #000000bb
        :pswitch_2c5  #000000bc
        :pswitch_30b  #000000bd
        :pswitch_24a  #000000be
        :pswitch_13d  #000000bf
        :pswitch_33d  #000000c0
        :pswitch_24a  #000000c1
        :pswitch_13d  #000000c2
        :pswitch_13d  #000000c3
        :pswitch_d  #000000c4
        :pswitch_d  #000000c5
        :pswitch_13d  #000000c6
        :pswitch_13d  #000000c7
    .end packed-switch

    :pswitch_data_4f0
    .packed-switch 0x3
        :pswitch_4b  #00000003
        :pswitch_56  #00000004
        :pswitch_4f  #00000005
        :pswitch_5d  #00000006
        :pswitch_67  #00000007
        :pswitch_74  #00000008
        :pswitch_3e  #00000009
        :pswitch_3e  #0000000a
        :pswitch_3e  #0000000b
        :pswitch_3e  #0000000c
        :pswitch_3e  #0000000d
        :pswitch_3e  #0000000e
        :pswitch_3e  #0000000f
        :pswitch_81  #00000010
    .end packed-switch

    :pswitch_data_510
    .packed-switch 0x4
        :pswitch_2d3  #00000004
        :pswitch_2db  #00000005
        :pswitch_2fb  #00000006
        :pswitch_303  #00000007
        :pswitch_2e3  #00000008
        :pswitch_2eb  #00000009
        :pswitch_2f3  #0000000a
    .end packed-switch
.end method

.method a(Lorg/objectweb/asm/ClassWriter;I[Lorg/objectweb/asm/Type;I)V
    .registers 11

    const/high16 v5, 0x1000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v0, p4, [I

    iput-object v0, p0, Lorg/objectweb/asm/Frame;->c:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/objectweb/asm/Frame;->d:[I

    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_5d

    const/high16 v0, 0x80000

    and-int/2addr v0, p2

    if-nez v0, :cond_4b

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->c:[I

    const/high16 v3, 0x1700000

    iget-object v4, p1, Lorg/objectweb/asm/ClassWriter;->I:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, v0, v1

    move v0, v1

    :goto_23
    array-length v1, p3

    if-ge v0, v1, :cond_54

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/objectweb/asm/Frame;->b(Lorg/objectweb/asm/ClassWriter;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lorg/objectweb/asm/Frame;->c:[I

    add-int/lit8 v1, v2, 0x1

    aput v3, v4, v2

    const v2, 0x1000004

    if-eq v3, v2, :cond_40

    const v2, 0x1000003

    if-ne v3, v2, :cond_47

    :cond_40
    iget-object v3, p0, Lorg/objectweb/asm/Frame;->c:[I

    add-int/lit8 v2, v1, 0x1

    aput v5, v3, v1

    move v1, v2

    :cond_47
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_23

    :cond_4b
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->c:[I

    const v3, 0x1000006

    aput v3, v0, v1

    move v0, v1

    goto :goto_23

    :cond_54
    :goto_54
    if-ge v2, p4, :cond_60

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->c:[I

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_5d
    move v0, v1

    move v2, v1

    goto :goto_23

    :cond_60
    return-void
.end method

.method a(Lorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Frame;I)Z
    .registers 12

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/Frame;->c:[I

    array-length v4, v1

    iget-object v1, p0, Lorg/objectweb/asm/Frame;->d:[I

    array-length v5, v1

    iget-object v1, p2, Lorg/objectweb/asm/Frame;->c:[I

    if-nez v1, :cond_10

    new-array v0, v4, [I

    iput-object v0, p2, Lorg/objectweb/asm/Frame;->c:[I

    const/4 v0, 0x1

    :cond_10
    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_13
    if-ge v3, v4, :cond_75

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->e:[I

    if-eqz v0, :cond_70

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->e:[I

    array-length v0, v0

    if-ge v3, v0, :cond_70

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->e:[I

    aget v1, v0, v3

    if-nez v1, :cond_3b

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->c:[I

    aget v0, v0, v3

    :cond_28
    :goto_28
    iget-object v1, p0, Lorg/objectweb/asm/Frame;->i:[I

    if-eqz v1, :cond_30

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;I)I

    move-result v0

    :cond_30
    iget-object v1, p2, Lorg/objectweb/asm/Frame;->c:[I

    invoke-static {p1, v0, v1, v3}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;I[II)Z

    move-result v0

    or-int/2addr v2, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    :cond_3b
    const/high16 v0, -0x10000000

    and-int/2addr v0, v1

    const/high16 v6, 0xf000000

    and-int/2addr v6, v1

    const/high16 v7, 0x1000000

    if-eq v6, v7, :cond_124

    const/high16 v7, 0x2000000

    if-ne v6, v7, :cond_64

    iget-object v6, p0, Lorg/objectweb/asm/Frame;->c:[I

    const v7, 0x7fffff

    and-int/2addr v7, v1

    aget v6, v6, v7

    add-int/2addr v0, v6

    :goto_52
    const/high16 v6, 0x800000

    and-int/2addr v1, v6

    if-eqz v1, :cond_28

    const v1, 0x1000004

    if-eq v0, v1, :cond_61

    const v1, 0x1000003

    if-ne v0, v1, :cond_28

    :cond_61
    const/high16 v0, 0x1000000

    goto :goto_28

    :cond_64
    iget-object v6, p0, Lorg/objectweb/asm/Frame;->d:[I

    const v7, 0x7fffff

    and-int/2addr v7, v1

    sub-int v7, v5, v7

    aget v6, v6, v7

    add-int/2addr v0, v6

    goto :goto_52

    :cond_70
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->c:[I

    aget v0, v0, v3

    goto :goto_28

    :cond_75
    if-lez p3, :cond_9c

    const/4 v1, 0x0

    move v0, v2

    :goto_79
    if-ge v1, v4, :cond_89

    iget-object v2, p0, Lorg/objectweb/asm/Frame;->c:[I

    aget v2, v2, v1

    iget-object v3, p2, Lorg/objectweb/asm/Frame;->c:[I

    invoke-static {p1, v2, v3, v1}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;I[II)Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_89
    iget-object v1, p2, Lorg/objectweb/asm/Frame;->d:[I

    if-nez v1, :cond_93

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p2, Lorg/objectweb/asm/Frame;->d:[I

    const/4 v0, 0x1

    :cond_93
    iget-object v1, p2, Lorg/objectweb/asm/Frame;->d:[I

    const/4 v2, 0x0

    invoke-static {p1, p3, v1, v2}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;I[II)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_9b
    return v0

    :cond_9c
    iget-object v0, p0, Lorg/objectweb/asm/Frame;->d:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/objectweb/asm/Frame;->b:Lorg/objectweb/asm/Label;

    iget v1, v1, Lorg/objectweb/asm/Label;->f:I

    add-int v4, v0, v1

    iget-object v0, p2, Lorg/objectweb/asm/Frame;->d:[I

    if-nez v0, :cond_122

    iget v0, p0, Lorg/objectweb/asm/Frame;->g:I

    add-int/2addr v0, v4

    new-array v0, v0, [I

    iput-object v0, p2, Lorg/objectweb/asm/Frame;->d:[I

    const/4 v0, 0x1

    :goto_b1
    const/4 v2, 0x0

    move v1, v0

    :goto_b3
    if-ge v2, v4, :cond_cc

    iget-object v0, p0, Lorg/objectweb/asm/Frame;->d:[I

    aget v0, v0, v2

    iget-object v3, p0, Lorg/objectweb/asm/Frame;->i:[I

    if-eqz v3, :cond_c1

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;I)I

    move-result v0

    :cond_c1
    iget-object v3, p2, Lorg/objectweb/asm/Frame;->d:[I

    invoke-static {p1, v0, v3, v2}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;I[II)Z

    move-result v0

    or-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b3

    :cond_cc
    const/4 v2, 0x0

    move v0, v1

    :goto_ce
    iget v1, p0, Lorg/objectweb/asm/Frame;->g:I

    if-ge v2, v1, :cond_9b

    iget-object v1, p0, Lorg/objectweb/asm/Frame;->f:[I

    aget v1, v1, v2

    const/high16 v3, -0x10000000

    and-int/2addr v3, v1

    const/high16 v6, 0xf000000

    and-int/2addr v6, v1

    const/high16 v7, 0x1000000

    if-ne v6, v7, :cond_f5

    :goto_e0
    iget-object v3, p0, Lorg/objectweb/asm/Frame;->i:[I

    if-eqz v3, :cond_e8

    invoke-direct {p0, p1, v1}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;I)I

    move-result v1

    :cond_e8
    iget-object v3, p2, Lorg/objectweb/asm/Frame;->d:[I

    add-int v6, v4, v2

    invoke-static {p1, v1, v3, v6}, Lorg/objectweb/asm/Frame;->a(Lorg/objectweb/asm/ClassWriter;I[II)Z

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_ce

    :cond_f5
    const/high16 v7, 0x2000000

    if-ne v6, v7, :cond_114

    iget-object v6, p0, Lorg/objectweb/asm/Frame;->c:[I

    const v7, 0x7fffff

    and-int/2addr v7, v1

    aget v6, v6, v7

    add-int/2addr v3, v6

    :goto_102
    const/high16 v6, 0x800000

    and-int/2addr v1, v6

    if-eqz v1, :cond_120

    const v1, 0x1000004

    if-eq v3, v1, :cond_111

    const v1, 0x1000003

    if-ne v3, v1, :cond_120

    :cond_111
    const/high16 v1, 0x1000000

    goto :goto_e0

    :cond_114
    iget-object v6, p0, Lorg/objectweb/asm/Frame;->d:[I

    const v7, 0x7fffff

    and-int/2addr v7, v1

    sub-int v7, v5, v7

    aget v6, v6, v7

    add-int/2addr v3, v6

    goto :goto_102

    :cond_120
    move v1, v3

    goto :goto_e0

    :cond_122
    move v0, v2

    goto :goto_b1

    :cond_124
    move v0, v1

    goto/16 :goto_28
.end method
