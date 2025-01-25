.class Lcom/caverock/androidsvg/IntegerParser;
.super Ljava/lang/Object;


# instance fields
.field private pos:I

.field private value:J


# direct methods
.method constructor <init>(JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    iput p3, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return-void
.end method

.method static parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .registers 13

    const/16 v9, 0xa

    const/16 v8, 0x10

    const/4 v0, 0x0

    const/4 v1, 0x0

    int-to-long v2, v1

    if-lt p1, p2, :cond_c

    check-cast v0, Lcom/caverock/androidsvg/IntegerParser;

    :goto_b
    return-object v0

    :cond_c
    move v1, p1

    :goto_d
    if-lt v1, p2, :cond_14

    :cond_f
    if-ne v1, p1, :cond_57

    check-cast v0, Lcom/caverock/androidsvg/IntegerParser;

    goto :goto_b

    :cond_14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_32

    const/16 v5, 0x39

    if-gt v4, v5, :cond_32

    int-to-long v6, v8

    mul-long/2addr v2, v6

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    :goto_26
    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-lez v4, :cond_54

    check-cast v0, Lcom/caverock/androidsvg/IntegerParser;

    goto :goto_b

    :cond_32
    const/16 v5, 0x41

    if-lt v4, v5, :cond_43

    const/16 v5, 0x46

    if-gt v4, v5, :cond_43

    int-to-long v6, v8

    mul-long/2addr v2, v6

    add-int/lit8 v4, v4, -0x41

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-long v4, v9

    add-long/2addr v2, v4

    goto :goto_26

    :cond_43
    const/16 v5, 0x61

    if-lt v4, v5, :cond_f

    const/16 v5, 0x66

    if-gt v4, v5, :cond_f

    int-to-long v6, v8

    mul-long/2addr v2, v6

    add-int/lit8 v4, v4, -0x61

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-long v4, v9

    add-long/2addr v2, v4

    goto :goto_26

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_57
    new-instance v0, Lcom/caverock/androidsvg/IntegerParser;

    invoke-direct {v0, v2, v3, v1}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    goto :goto_b
.end method

.method static parseInt(Ljava/lang/String;IIZ)Lcom/caverock/androidsvg/IntegerParser;
    .registers 13

    const/16 v8, 0xa

    const/4 v1, 0x0

    const/4 v0, 0x0

    int-to-long v2, v1

    if-lt p1, p2, :cond_a

    check-cast v0, Lcom/caverock/androidsvg/IntegerParser;

    :goto_9
    return-object v0

    :cond_a
    if-eqz p3, :cond_13

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_58

    :cond_13
    :goto_13
    :pswitch_13  #0x2c
    move v4, p1

    :goto_14
    if-lt v4, p2, :cond_1f

    :cond_16
    if-ne v4, p1, :cond_51

    check-cast v0, Lcom/caverock/androidsvg/IntegerParser;

    goto :goto_9

    :pswitch_1b  #0x2d
    const/4 v1, 0x1

    :pswitch_1c  #0x2b
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_1f
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_16

    const/16 v6, 0x39

    if-gt v5, v6, :cond_16

    if-eqz v1, :cond_3d

    int-to-long v6, v8

    mul-long/2addr v2, v6

    add-int/lit8 v5, v5, -0x30

    int-to-long v6, v5

    sub-long/2addr v2, v6

    const/high16 v5, -0x80000000

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-gez v5, :cond_4e

    check-cast v0, Lcom/caverock/androidsvg/IntegerParser;

    goto :goto_9

    :cond_3d
    int-to-long v6, v8

    mul-long/2addr v2, v6

    add-int/lit8 v5, v5, -0x30

    int-to-long v6, v5

    add-long/2addr v2, v6

    const v5, 0x7fffffff

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-lez v5, :cond_4e

    check-cast v0, Lcom/caverock/androidsvg/IntegerParser;

    goto :goto_9

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_51
    new-instance v0, Lcom/caverock/androidsvg/IntegerParser;

    invoke-direct {v0, v2, v3, v4}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    goto :goto_9

    nop

    :pswitch_data_58
    .packed-switch 0x2b
        :pswitch_1c  #0000002b
        :pswitch_13  #0000002c
        :pswitch_1b  #0000002d
    .end packed-switch
.end method


# virtual methods
.method getEndPos()I
    .registers 2

    iget v0, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return v0
.end method

.method public value()I
    .registers 3

    iget-wide v0, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    long-to-int v0, v0

    return v0
.end method
