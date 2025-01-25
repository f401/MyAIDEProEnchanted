.class La/g/a/f;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field final a:La/g/a/a;


# direct methods
.method private constructor <init>(La/g/a/a;)V
    .registers 2

    iput-object p1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/g/a/a;La/g/a/b;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/a/f;-><init>(La/g/a/a;)V

    return-void
.end method

.method private a(IBII)I
    .registers 8

    packed-switch p2, :pswitch_data_46

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a dup/swap opcode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x59
    invoke-direct {p0, p1, p3, p4}, La/g/a/f;->a(III)I

    move-result v0

    :goto_26
    return v0

    :pswitch_27  #0x5a
    invoke-direct {p0, p1, p3, p4}, La/g/a/f;->b(III)I

    move-result v0

    goto :goto_26

    :pswitch_2c  #0x5b
    invoke-direct {p0, p1, p3, p4}, La/g/a/f;->c(III)I

    move-result v0

    goto :goto_26

    :pswitch_31  #0x5c
    invoke-direct {p0, p1, p3, p4}, La/g/a/f;->d(III)I

    move-result v0

    goto :goto_26

    :pswitch_36  #0x5d
    invoke-direct {p0, p1, p3, p4}, La/g/a/f;->e(III)I

    move-result v0

    goto :goto_26

    :pswitch_3b  #0x5e
    invoke-direct {p0, p1, p3, p4}, La/g/a/f;->f(III)I

    move-result v0

    goto :goto_26

    :pswitch_40  #0x5f
    invoke-direct {p0, p1, p3, p4}, La/g/a/f;->g(III)I

    move-result v0

    goto :goto_26

    nop

    :pswitch_data_46
    .packed-switch 0x59
        :pswitch_22  #00000059
        :pswitch_27  #0000005a
        :pswitch_2c  #0000005b
        :pswitch_31  #0000005c
        :pswitch_36  #0000005d
        :pswitch_3b  #0000005e
        :pswitch_40  #0000005f
    .end packed-switch
.end method

.method private a(III)I
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, La/g/a/j;->b(II)Z

    move-result v1

    iget-object v2, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v2}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, La/g/a/j;->c(II)Z

    move-result v2

    iget-object v3, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v3}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, p1, v4}, La/g/a/j;->c(II)Z

    move-result v3

    if-eqz v2, :cond_28

    if-eqz v3, :cond_27

    const/16 v0, 0x59

    :cond_27
    :goto_27
    return v0

    :cond_28
    if-nez v3, :cond_27

    if-eqz v1, :cond_27

    const/16 v0, 0x57

    goto :goto_27
.end method

.method private a(La/b/d/c;)Z
    .registers 4

    iget-byte v0, p1, La/b/d/c;->c:B

    const/16 v1, 0x59

    if-lt v0, v1, :cond_e

    iget-byte v0, p1, La/b/d/c;->c:B

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private b(III)I
    .registers 13

    const/16 v2, 0x575f

    const/16 v0, 0x57

    const/4 v1, 0x0

    iget-object v3, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v3}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, La/g/a/j;->b(II)Z

    move-result v3

    iget-object v4, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v4}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v4

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, p1, v5}, La/g/a/j;->b(II)Z

    move-result v4

    iget-object v5, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v5}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v5

    invoke-virtual {v5, p1, p3}, La/g/a/j;->c(II)Z

    move-result v5

    iget-object v6, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v6}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v6

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {v6, p1, v7}, La/g/a/j;->c(II)Z

    move-result v6

    iget-object v7, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v7}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v7

    add-int/lit8 v8, p3, -0x2

    invoke-virtual {v7, p1, v8}, La/g/a/j;->c(II)Z

    move-result v7

    if-eqz v6, :cond_4f

    if-eqz v7, :cond_49

    if-eqz v5, :cond_46

    const/16 v0, 0x5a

    :cond_45
    :goto_45
    return v0

    :cond_46
    const/16 v0, 0x5f

    goto :goto_45

    :cond_49
    if-nez v5, :cond_4d

    if-nez v3, :cond_45

    :cond_4d
    move v0, v1

    goto :goto_45

    :cond_4f
    if-eqz v4, :cond_64

    if-eqz v7, :cond_5b

    if-eqz v5, :cond_59

    const v0, 0x59575f

    goto :goto_45

    :cond_59
    move v0, v2

    goto :goto_45

    :cond_5b
    if-eqz v5, :cond_5f

    move v0, v2

    goto :goto_45

    :cond_5f
    if-eqz v3, :cond_45

    const/16 v0, 0x58

    goto :goto_45

    :cond_64
    if-eqz v7, :cond_6b

    if-eqz v5, :cond_4d

    const/16 v0, 0x59

    goto :goto_45

    :cond_6b
    if-nez v5, :cond_4d

    if-eqz v3, :cond_4d

    goto :goto_45
.end method

.method private c(III)I
    .registers 12

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La/g/a/j;->b(II)Z

    move-result v0

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, p1, v2}, La/g/a/j;->b(II)Z

    move-result v1

    iget-object v2, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v2}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v2

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {v2, p1, v3}, La/g/a/j;->b(II)Z

    move-result v2

    iget-object v3, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v3}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, La/g/a/j;->c(II)Z

    move-result v3

    iget-object v4, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v4}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v4

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v4, p1, v5}, La/g/a/j;->c(II)Z

    move-result v4

    iget-object v5, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v5}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v5

    add-int/lit8 v6, p3, -0x2

    invoke-virtual {v5, p1, v6}, La/g/a/j;->c(II)Z

    move-result v5

    iget-object v6, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v6}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v6

    add-int/lit8 v7, p3, -0x3

    invoke-virtual {v6, p1, v7}, La/g/a/j;->c(II)Z

    move-result v6

    if-eqz v4, :cond_93

    if-eqz v5, :cond_69

    if-eqz v6, :cond_5e

    if-eqz v3, :cond_5b

    const/16 v0, 0x5b

    :goto_5a
    return v0

    :cond_5b
    const/16 v0, 0x575b

    goto :goto_5a

    :cond_5e
    if-eqz v3, :cond_62

    const/4 v0, 0x0

    goto :goto_5a

    :cond_62
    if-eqz v0, :cond_67

    const/16 v0, 0x57

    goto :goto_5a

    :cond_67
    const/4 v0, 0x0

    goto :goto_5a

    :cond_69
    if-eqz v2, :cond_7e

    if-eqz v6, :cond_6f

    const/4 v0, -0x1

    goto :goto_5a

    :cond_6f
    if-eqz v3, :cond_75

    const v0, 0x57585d

    goto :goto_5a

    :cond_75
    if-eqz v0, :cond_7b

    const v0, 0x575f57

    goto :goto_5a

    :cond_7b
    const/16 v0, 0x575f

    goto :goto_5a

    :cond_7e
    if-eqz v6, :cond_88

    if-eqz v3, :cond_85

    const/16 v0, 0x5a

    goto :goto_5a

    :cond_85
    const/16 v0, 0x5f

    goto :goto_5a

    :cond_88
    if-eqz v3, :cond_8c

    const/4 v0, 0x0

    goto :goto_5a

    :cond_8c
    if-eqz v0, :cond_91

    const/16 v0, 0x57

    goto :goto_5a

    :cond_91
    const/4 v0, 0x0

    goto :goto_5a

    :cond_93
    if-eqz v1, :cond_e3

    if-eqz v5, :cond_af

    if-eqz v6, :cond_a2

    if-eqz v3, :cond_9f

    const v0, 0x5a575f

    goto :goto_5a

    :cond_9f
    const/16 v0, 0x585b

    goto :goto_5a

    :cond_a2
    if-eqz v3, :cond_a7

    const/16 v0, 0x575f

    goto :goto_5a

    :cond_a7
    if-eqz v0, :cond_ac

    const/16 v0, 0x58

    goto :goto_5a

    :cond_ac
    const/16 v0, 0x57

    goto :goto_5a

    :cond_af
    if-eqz v2, :cond_c9

    if-eqz v6, :cond_bb

    if-eqz v3, :cond_b7

    const/4 v0, -0x1

    goto :goto_5a

    :cond_b7
    const v0, 0x58575b

    goto :goto_5a

    :cond_bb
    if-eqz v3, :cond_c1

    const v0, 0x58575b

    goto :goto_5a

    :cond_c1
    if-eqz v0, :cond_c6

    const/16 v0, 0x5758

    goto :goto_5a

    :cond_c6
    const/16 v0, 0x58

    goto :goto_5a

    :cond_c9
    if-eqz v6, :cond_d4

    if-eqz v3, :cond_d1

    const v0, 0x59575f

    goto :goto_5a

    :cond_d1
    const/16 v0, 0x575f

    goto :goto_5a

    :cond_d4
    if-eqz v3, :cond_d9

    const/16 v0, 0x575f

    goto :goto_5a

    :cond_d9
    if-eqz v0, :cond_df

    const/16 v0, 0x58

    goto/16 :goto_5a

    :cond_df
    const/16 v0, 0x57

    goto/16 :goto_5a

    :cond_e3
    if-eqz v5, :cond_ff

    if-eqz v6, :cond_f1

    if-eqz v3, :cond_ed

    const/16 v0, 0x5a

    goto/16 :goto_5a

    :cond_ed
    const/16 v0, 0x5f

    goto/16 :goto_5a

    :cond_f1
    if-eqz v3, :cond_f6

    const/4 v0, 0x0

    goto/16 :goto_5a

    :cond_f6
    if-eqz v0, :cond_fc

    const/16 v0, 0x57

    goto/16 :goto_5a

    :cond_fc
    const/4 v0, 0x0

    goto/16 :goto_5a

    :cond_ff
    if-eqz v2, :cond_11e

    if-eqz v6, :cond_10e

    if-eqz v3, :cond_10a

    const v0, 0x59575f

    goto/16 :goto_5a

    :cond_10a
    const/16 v0, 0x575f

    goto/16 :goto_5a

    :cond_10e
    if-eqz v3, :cond_114

    const/16 v0, 0x575f

    goto/16 :goto_5a

    :cond_114
    if-eqz v0, :cond_11a

    const/16 v0, 0x58

    goto/16 :goto_5a

    :cond_11a
    const/16 v0, 0x57

    goto/16 :goto_5a

    :cond_11e
    if-eqz v6, :cond_129

    if-eqz v3, :cond_126

    const/16 v0, 0x59

    goto/16 :goto_5a

    :cond_126
    const/4 v0, 0x0

    goto/16 :goto_5a

    :cond_129
    if-eqz v3, :cond_12e

    const/4 v0, 0x0

    goto/16 :goto_5a

    :cond_12e
    if-eqz v0, :cond_134

    const/16 v0, 0x57

    goto/16 :goto_5a

    :cond_134
    const/4 v0, 0x0

    goto/16 :goto_5a
.end method

.method private d(III)I
    .registers 15

    const/16 v3, 0x575f

    const/16 v2, 0x57

    const/4 v0, 0x0

    const/16 v1, 0x59

    iget-object v4, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v4}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, La/g/a/j;->b(II)Z

    move-result v4

    iget-object v5, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v5}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v5

    add-int/lit8 v6, p2, -0x1

    invoke-virtual {v5, p1, v6}, La/g/a/j;->b(II)Z

    move-result v5

    iget-object v6, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v6}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v6

    invoke-virtual {v6, p1, p3}, La/g/a/j;->c(II)Z

    move-result v6

    iget-object v7, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v7}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v7

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {v7, p1, v8}, La/g/a/j;->c(II)Z

    move-result v7

    iget-object v8, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v8}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v8

    add-int/lit8 v9, p3, -0x2

    invoke-virtual {v8, p1, v9}, La/g/a/j;->c(II)Z

    move-result v8

    iget-object v9, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v9}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v9

    add-int/lit8 v10, p3, -0x3

    invoke-virtual {v9, p1, v10}, La/g/a/j;->c(II)Z

    move-result v9

    if-eqz v9, :cond_70

    if-eqz v8, :cond_5d

    if-eqz v7, :cond_59

    if-eqz v6, :cond_56

    const/16 v0, 0x5c

    :cond_55
    :goto_55
    return v0

    :cond_56
    const/16 v0, 0x5a5f

    goto :goto_55

    :cond_59
    if-eqz v6, :cond_55

    :cond_5b
    move v0, v1

    goto :goto_55

    :cond_5d
    if-eqz v7, :cond_6a

    if-eqz v6, :cond_65

    const v0, 0x5f5a5f

    goto :goto_55

    :cond_65
    if-eqz v4, :cond_5b

    const/16 v0, 0x5957

    goto :goto_55

    :cond_6a
    if-nez v6, :cond_55

    if-eqz v4, :cond_55

    move v0, v2

    goto :goto_55

    :cond_70
    if-eqz v8, :cond_8a

    if-eqz v7, :cond_7c

    if-eqz v6, :cond_79

    const/16 v0, 0x5a

    goto :goto_55

    :cond_79
    const/16 v0, 0x5f

    goto :goto_55

    :cond_7c
    if-eqz v5, :cond_86

    if-eqz v6, :cond_84

    const v0, 0x59575f

    goto :goto_55

    :cond_84
    move v0, v3

    goto :goto_55

    :cond_86
    if-eqz v6, :cond_55

    move v0, v2

    goto :goto_55

    :cond_8a
    if-eqz v7, :cond_92

    if-nez v6, :cond_55

    if-eqz v4, :cond_55

    move v0, v2

    goto :goto_55

    :cond_92
    if-eqz v5, :cond_9f

    if-eqz v6, :cond_98

    move v0, v3

    goto :goto_55

    :cond_98
    if-eqz v4, :cond_9d

    const/16 v0, 0x58

    goto :goto_55

    :cond_9d
    move v0, v2

    goto :goto_55

    :cond_9f
    if-nez v6, :cond_55

    if-eqz v4, :cond_55

    move v0, v2

    goto :goto_55
.end method

.method private e(III)I
    .registers 14

    const v2, 0x57585d

    const/16 v0, 0x58

    const/4 v1, 0x0

    iget-object v3, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v3}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, p1, p2, v4}, La/g/a/j;->a(III)Z

    move-result v3

    iget-object v4, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v4}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v4

    add-int/lit8 v5, p2, -0x2

    invoke-virtual {v4, p1, v5}, La/g/a/j;->b(II)Z

    move-result v4

    iget-object v5, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v5}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v5

    add-int/lit8 v6, p3, -0x1

    invoke-virtual {v5, p1, p3, v6}, La/g/a/j;->b(III)Z

    move-result v5

    iget-object v6, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v6}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v6

    add-int/lit8 v7, p3, -0x2

    invoke-virtual {v6, p1, v7}, La/g/a/j;->c(II)Z

    move-result v6

    iget-object v7, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v7}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v7

    add-int/lit8 v8, p3, -0x3

    add-int/lit8 v9, p3, -0x4

    invoke-virtual {v7, p1, v8, v9}, La/g/a/j;->b(III)Z

    move-result v7

    if-eqz v6, :cond_56

    if-eqz v7, :cond_50

    if-eqz v5, :cond_4d

    const/16 v0, 0x5d

    :cond_4c
    :goto_4c
    return v0

    :cond_4d
    const/16 v0, 0x585d

    goto :goto_4c

    :cond_50
    if-nez v5, :cond_54

    if-nez v3, :cond_4c

    :cond_54
    move v0, v1

    goto :goto_4c

    :cond_56
    if-eqz v4, :cond_6c

    if-eqz v7, :cond_60

    if-eqz v5, :cond_5e

    const/4 v0, -0x1

    goto :goto_4c

    :cond_5e
    move v0, v2

    goto :goto_4c

    :cond_60
    if-eqz v5, :cond_64

    move v0, v2

    goto :goto_4c

    :cond_64
    if-eqz v3, :cond_69

    const/16 v0, 0x5758

    goto :goto_4c

    :cond_69
    const/16 v0, 0x57

    goto :goto_4c

    :cond_6c
    if-eqz v7, :cond_73

    if-eqz v5, :cond_54

    const/16 v0, 0x5c

    goto :goto_4c

    :cond_73
    if-nez v5, :cond_54

    if-eqz v3, :cond_54

    goto :goto_4c
.end method

.method private f(III)I
    .registers 13

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, p1, p2, v1}, La/g/a/j;->a(III)Z

    move-result v0

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {v1, p1, v2}, La/g/a/j;->b(II)Z

    move-result v1

    iget-object v2, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v2}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v2

    add-int/lit8 v3, p2, -0x3

    invoke-virtual {v2, p1, v3}, La/g/a/j;->b(II)Z

    move-result v2

    iget-object v3, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v3}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, p1, p3, v4}, La/g/a/j;->b(III)Z

    move-result v3

    iget-object v4, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v4}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v4

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {v4, p1, v5}, La/g/a/j;->c(II)Z

    move-result v4

    iget-object v5, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v5}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v5

    add-int/lit8 v6, p3, -0x3

    invoke-virtual {v5, p1, v6}, La/g/a/j;->c(II)Z

    move-result v5

    iget-object v6, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v6}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v6

    add-int/lit8 v7, p3, -0x4

    add-int/lit8 v8, p3, -0x5

    invoke-virtual {v6, p1, v7, v8}, La/g/a/j;->b(III)Z

    move-result v6

    if-eqz v4, :cond_9d

    if-eqz v5, :cond_6f

    if-eqz v6, :cond_64

    if-eqz v3, :cond_61

    const/16 v0, 0x5e

    :goto_60
    return v0

    :cond_61
    const/16 v0, 0x585e

    goto :goto_60

    :cond_64
    if-eqz v3, :cond_68

    const/4 v0, 0x0

    goto :goto_60

    :cond_68
    if-eqz v0, :cond_6d

    const/16 v0, 0x58

    goto :goto_60

    :cond_6d
    const/4 v0, 0x0

    goto :goto_60

    :cond_6f
    if-eqz v2, :cond_88

    if-eqz v6, :cond_7b

    if-eqz v3, :cond_77

    const/4 v0, -0x1

    goto :goto_60

    :cond_77
    const v0, 0x575f5e

    goto :goto_60

    :cond_7b
    if-eqz v3, :cond_7f

    const/4 v0, -0x1

    goto :goto_60

    :cond_7f
    if-eqz v0, :cond_85

    const v0, 0x575f58

    goto :goto_60

    :cond_85
    const/16 v0, 0x575f

    goto :goto_60

    :cond_88
    if-eqz v6, :cond_92

    if-eqz v3, :cond_8f

    const/16 v0, 0x5d

    goto :goto_60

    :cond_8f
    const/16 v0, 0x585d

    goto :goto_60

    :cond_92
    if-eqz v3, :cond_96

    const/4 v0, 0x0

    goto :goto_60

    :cond_96
    if-eqz v0, :cond_9b

    const/16 v0, 0x58

    goto :goto_60

    :cond_9b
    const/4 v0, 0x0

    goto :goto_60

    :cond_9d
    if-eqz v1, :cond_ee

    if-eqz v5, :cond_b9

    if-eqz v6, :cond_ab

    if-eqz v3, :cond_a7

    const/4 v0, -0x1

    goto :goto_60

    :cond_a7
    const v0, 0x57585e

    goto :goto_60

    :cond_ab
    if-eqz v3, :cond_b1

    const v0, 0x57585d

    goto :goto_60

    :cond_b1
    if-eqz v0, :cond_b6

    const/16 v0, 0x5758

    goto :goto_60

    :cond_b6
    const/16 v0, 0x57

    goto :goto_60

    :cond_b9
    if-eqz v2, :cond_d3

    if-eqz v6, :cond_c5

    if-eqz v3, :cond_c1

    const/4 v0, -0x1

    goto :goto_60

    :cond_c1
    const v0, 0x58585e

    goto :goto_60

    :cond_c5
    if-eqz v3, :cond_cb

    const v0, 0x58585e

    goto :goto_60

    :cond_cb
    if-eqz v0, :cond_d0

    const/16 v0, 0x5858

    goto :goto_60

    :cond_d0
    const/16 v0, 0x58

    goto :goto_60

    :cond_d3
    if-eqz v6, :cond_dd

    if-eqz v3, :cond_d9

    const/4 v0, -0x1

    goto :goto_60

    :cond_d9
    const v0, 0x57585d

    goto :goto_60

    :cond_dd
    if-eqz v3, :cond_e4

    const v0, 0x57585d

    goto/16 :goto_60

    :cond_e4
    if-eqz v0, :cond_ea

    const/16 v0, 0x5758

    goto/16 :goto_60

    :cond_ea
    const/16 v0, 0x57

    goto/16 :goto_60

    :cond_ee
    if-eqz v5, :cond_10a

    if-eqz v6, :cond_fc

    if-eqz v3, :cond_f8

    const/16 v0, 0x5d

    goto/16 :goto_60

    :cond_f8
    const/16 v0, 0x585d

    goto/16 :goto_60

    :cond_fc
    if-eqz v3, :cond_101

    const/4 v0, 0x0

    goto/16 :goto_60

    :cond_101
    if-eqz v0, :cond_107

    const/16 v0, 0x58

    goto/16 :goto_60

    :cond_107
    const/4 v0, 0x0

    goto/16 :goto_60

    :cond_10a
    if-eqz v2, :cond_129

    if-eqz v6, :cond_118

    if-eqz v3, :cond_113

    const/4 v0, -0x1

    goto/16 :goto_60

    :cond_113
    const v0, 0x57585d

    goto/16 :goto_60

    :cond_118
    if-eqz v3, :cond_11f

    const v0, 0x57585d

    goto/16 :goto_60

    :cond_11f
    if-eqz v0, :cond_125

    const/16 v0, 0x5758

    goto/16 :goto_60

    :cond_125
    const/16 v0, 0x57

    goto/16 :goto_60

    :cond_129
    if-eqz v6, :cond_134

    if-eqz v3, :cond_131

    const/16 v0, 0x5c

    goto/16 :goto_60

    :cond_131
    const/4 v0, 0x0

    goto/16 :goto_60

    :cond_134
    if-eqz v3, :cond_139

    const/4 v0, 0x0

    goto/16 :goto_60

    :cond_139
    if-eqz v0, :cond_13f

    const/16 v0, 0x58

    goto/16 :goto_60

    :cond_13f
    const/4 v0, 0x0

    goto/16 :goto_60
.end method

.method private g(III)I
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, La/g/a/j;->b(II)Z

    move-result v1

    iget-object v2, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v2}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, p1, v3}, La/g/a/j;->b(II)Z

    move-result v2

    iget-object v3, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v3}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, La/g/a/j;->c(II)Z

    move-result v3

    iget-object v4, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v4}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v4

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v4, p1, v5}, La/g/a/j;->c(II)Z

    move-result v4

    if-eqz v3, :cond_39

    if-eqz v4, :cond_34

    const/16 v0, 0x5f

    :cond_33
    :goto_33
    return v0

    :cond_34
    if-eqz v1, :cond_33

    const/16 v0, 0x57

    goto :goto_33

    :cond_39
    if-eqz v2, :cond_33

    const/16 v0, 0x575f

    goto :goto_33
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 9

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    invoke-virtual {v0, p4}, La/g/a/j;->b(I)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p5, p1}, La/b/d/a;->a(La/b/c;)I

    move-result v0

    if-lez v0, :cond_40

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v1

    invoke-virtual {v1, p4}, La/g/a/j;->d(I)La/d/j;

    move-result-object v1

    invoke-virtual {v1}, La/d/j;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p4, v1}, La/g/a/j;->b(II)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, La/b/d/a;

    const/16 v1, -0x59

    iget v2, p5, La/b/d/a;->a:I

    invoke-direct {v0, v1, v2}, La/b/d/a;-><init>(BI)V

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->b(La/g/a/a;)La/b/c/v;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, La/b/c/v;->b(ILa/b/d/c;)V

    :cond_40
    :goto_40
    return-void

    :cond_41
    invoke-virtual/range {p0 .. p5}, La/g/a/f;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V

    goto :goto_40
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 16

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    invoke-virtual {v0, p4}, La/g/a/j;->b(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-virtual {p5, p1}, La/b/d/c;->a(La/b/c;)I

    move-result v5

    if-lez v5, :cond_94

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    invoke-virtual {v0, p4}, La/g/a/j;->d(I)La/d/j;

    move-result-object v6

    invoke-virtual {v6}, La/d/j;->b()I

    move-result v7

    sub-int v4, v7, v5

    move v0, v2

    move v1, v2

    :goto_26
    if-ge v4, v7, :cond_4a

    iget-object v8, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v8}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v8

    invoke-virtual {v8, p4, v4}, La/g/a/j;->a(II)Z

    move-result v8

    iget-object v9, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v9}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v9

    invoke-virtual {v9, p4, v4}, La/g/a/j;->b(II)Z

    move-result v9

    if-eqz v8, :cond_45

    if-eqz v9, :cond_42

    add-int/lit8 v0, v0, 0x1

    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_45
    if-nez v9, :cond_42

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_4a
    if-lez v0, :cond_51

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0, p4, v2, v3, v5}, La/g/a/a;->a(La/g/a/a;IZZI)V

    :cond_51
    if-lez v1, :cond_94

    invoke-virtual {v6, v2}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v4

    invoke-virtual {v4}, La/d/a/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_89

    const/4 v0, 0x2

    :goto_5e
    if-le v1, v0, :cond_8b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported stack size increment ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    move v0, v3

    goto :goto_5e

    :cond_8b
    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-virtual {v4}, La/d/a/bd;->j()I

    move-result v1

    invoke-static {v0, p4, v2, v3, v1}, La/g/a/a;->b(La/g/a/a;IZZI)V

    :cond_94
    invoke-virtual {p5, p1}, La/b/d/c;->b(La/b/c;)I

    move-result v0

    if-lez v0, :cond_c5

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v1

    invoke-virtual {v1, p4}, La/g/a/j;->e(I)La/d/j;

    move-result-object v1

    invoke-virtual {v1}, La/d/j;->b()I

    move-result v3

    sub-int v1, v3, v0

    move v0, v2

    :goto_ab
    if-ge v1, v3, :cond_be

    iget-object v4, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v4}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v4

    invoke-virtual {v4, p4, v1}, La/g/a/j;->c(II)Z

    move-result v4

    if-nez v4, :cond_bb

    add-int/lit8 v0, v0, 0x1

    :cond_bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    :cond_be
    if-lez v0, :cond_c5

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1, p4, v2, v2, v0}, La/g/a/a;->a(La/g/a/a;IZZI)V

    :cond_c5
    :goto_c5
    return-void

    :cond_c6
    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    invoke-virtual {v0, p4}, La/g/a/j;->c(I)Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-virtual {p5, p1}, La/b/d/c;->a(La/b/c;)I

    move-result v0

    if-lez v0, :cond_103

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v1

    invoke-virtual {v1, p4}, La/g/a/j;->d(I)La/d/j;

    move-result-object v1

    invoke-virtual {v1}, La/d/j;->b()I

    move-result v4

    sub-int v1, v4, v0

    move v0, v2

    :goto_e9
    if-ge v1, v4, :cond_fc

    iget-object v5, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v5}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v5

    invoke-virtual {v5, p4, v1}, La/g/a/j;->b(II)Z

    move-result v5

    if-eqz v5, :cond_f9

    add-int/lit8 v0, v0, 0x1

    :cond_f9
    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    :cond_fc
    if-lez v0, :cond_103

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1, p4, v3, v2, v0}, La/g/a/a;->a(La/g/a/a;IZZI)V

    :cond_103
    invoke-virtual {p5, p1}, La/b/d/c;->b(La/b/c;)I

    move-result v0

    if-lez v0, :cond_c5

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v1

    invoke-virtual {v1, p4}, La/g/a/j;->e(I)La/d/j;

    move-result-object v4

    invoke-virtual {v4}, La/d/j;->b()I

    move-result v5

    sub-int v1, v5, v0

    move v0, v2

    :goto_11a
    if-ge v1, v5, :cond_12d

    iget-object v6, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v6}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v6

    invoke-virtual {v6, p4, v1}, La/g/a/j;->c(II)Z

    move-result v6

    if-eqz v6, :cond_12a

    add-int/lit8 v0, v0, 0x1

    :cond_12a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11a

    :cond_12d
    if-lez v0, :cond_c5

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-virtual {v4, v2}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/bd;->j()I

    move-result v1

    invoke-static {v0, p4, v3, v2, v1}, La/g/a/a;->b(La/g/a/a;IZZI)V

    goto :goto_c5
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 13

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    invoke-virtual {v0, p4}, La/g/a/j;->b(I)Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-direct {p0, p5}, La/g/a/f;->a(La/b/d/c;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    invoke-virtual {v0, p4}, La/g/a/j;->d(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0}, La/d/j;->b()I

    move-result v0

    iget-object v2, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v2}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v2

    invoke-virtual {v2, p4}, La/g/a/j;->e(I)La/d/j;

    move-result-object v2

    invoke-virtual {v2}, La/d/j;->b()I

    move-result v2

    iget-byte v4, p5, La/b/d/h;->c:B

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, p4, v4, v0, v2}, La/g/a/f;->a(IBII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6b

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, La/b/d/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instruction at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    and-int/lit16 v2, v0, -0x100

    if-nez v2, :cond_ac

    int-to-byte v0, v0

    if-nez v0, :cond_91

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->b(La/g/a/a;)La/b/c/v;

    move-result-object v0

    invoke-virtual {v0, p4}, La/b/c/v;->c(I)V

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->c(La/g/a/a;)La/b/d/a/d;

    move-result-object v0

    if-eqz v0, :cond_90

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->c(La/g/a/a;)La/b/d/a/d;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    move v4, p4

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, La/b/d/a/d;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V

    :cond_90
    :goto_90
    return-void

    :cond_91
    if-ne v0, v4, :cond_9d

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->b(La/g/a/a;)La/b/c/v;

    move-result-object v0

    invoke-virtual {v0, p4}, La/b/c/v;->d(I)V

    goto :goto_90

    :cond_9d
    new-instance v1, La/b/d/h;

    invoke-direct {v1, v0}, La/b/d/h;-><init>(B)V

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->b(La/g/a/a;)La/b/c/v;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, La/b/c/v;->b(ILa/b/d/c;)V

    goto :goto_90

    :cond_ac
    new-array v1, v6, [La/b/d/c;

    move v2, v3

    :goto_af
    if-eqz v0, :cond_be

    new-instance v4, La/b/d/h;

    int-to-byte v5, v0

    invoke-direct {v4, v5}, La/b/d/h;-><init>(B)V

    aput-object v4, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_af

    :cond_be
    if-ge v2, v6, :cond_d3

    new-array v0, v2, [La/b/d/c;

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_c5
    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->b(La/g/a/a;)La/b/c/v;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, La/b/c/v;->c(I[La/b/d/c;)V

    goto :goto_90

    :cond_cf
    invoke-virtual/range {p0 .. p5}, La/g/a/f;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V

    goto :goto_90

    :cond_d3
    move-object v0, v1

    goto :goto_c5
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/i;)V
    .registers 9

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    invoke-virtual {v0, p4}, La/g/a/j;->b(I)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p5, p1}, La/b/d/i;->a(La/b/c;)I

    move-result v0

    if-lez v0, :cond_40

    iget-object v0, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v1

    invoke-virtual {v1, p4}, La/g/a/j;->d(I)La/d/j;

    move-result-object v1

    invoke-virtual {v1}, La/d/j;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p4, v1}, La/g/a/j;->b(II)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, La/b/d/a;

    const/16 v1, -0x59

    iget v2, p5, La/b/d/i;->b:I

    invoke-direct {v0, v1, v2}, La/b/d/a;-><init>(BI)V

    iget-object v1, p0, La/g/a/f;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->b(La/g/a/a;)La/b/c/v;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, La/b/c/v;->b(ILa/b/d/c;)V

    :cond_40
    :goto_40
    return-void

    :cond_41
    invoke-virtual/range {p0 .. p5}, La/g/a/f;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V

    goto :goto_40
.end method
