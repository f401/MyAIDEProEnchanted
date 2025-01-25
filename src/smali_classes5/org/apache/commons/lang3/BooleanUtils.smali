.class public Lorg/apache/commons/lang3/BooleanUtils;
.super Ljava/lang/Object;
.source "BooleanUtils.java"


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final NO:Ljava/lang/String; = "no"

.field public static final OFF:Ljava/lang/String; = "off"

.field public static final ON:Ljava/lang/String; = "on"

.field public static final TRUE:Ljava/lang/String; = "true"

.field public static final YES:Ljava/lang/String; = "yes"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    return-void
.end method

.method public static varargs and([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    .line 123
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v0

    .line 126
    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->and([Z)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_11

    .line 127
    :catch_15
    move-exception v0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array must not contain any null elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs and([Z)Z
    .registers 5

    const/4 v0, 0x0

    .line 93
    const-string v1, "array"

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    array-length v2, p0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_12

    aget-boolean v3, p0, v1

    .line 95
    if-nez v3, :cond_f

    .line 99
    :goto_e
    return v0

    .line 94
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 99
    :cond_12
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public static booleanValues()[Ljava/lang/Boolean;
    .registers 3

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static compare(ZZ)I
    .registers 3

    .line 152
    if-ne p0, p1, :cond_4

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public static isFalse(Ljava/lang/Boolean;)Z
    .registers 2

    .line 173
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNotFalse(Ljava/lang/Boolean;)Z
    .registers 2

    .line 191
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->isFalse(Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotTrue(Ljava/lang/Boolean;)Z
    .registers 2

    .line 209
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .registers 2

    .line 227
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static negate(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 248
    if-nez p0, :cond_4

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static varargs or([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    .line 302
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v0

    .line 305
    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->or([Z)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_11

    .line 306
    :catch_15
    move-exception v0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array must not contain any null elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs or([Z)Z
    .registers 5

    const/4 v0, 0x0

    .line 272
    const-string v1, "array"

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    array-length v2, p0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_f

    aget-boolean v3, p0, v1

    .line 274
    if-eqz v3, :cond_10

    .line 275
    const/4 v0, 0x1

    .line 278
    :cond_f
    return v0

    .line 273
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public static primitiveValues()[Z
    .registers 1

    .line 317
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method public static toBoolean(I)Z
    .registers 2

    .line 352
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static toBoolean(III)Z
    .registers 5

    .line 377
    if-ne p0, p1, :cond_4

    .line 378
    const/4 v0, 0x1

    .line 381
    :goto_3
    return v0

    .line 380
    :cond_4
    if-ne p0, p2, :cond_8

    .line 381
    const/4 v0, 0x0

    goto :goto_3

    .line 383
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/Boolean;)Z
    .registers 2

    .line 334
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static toBoolean(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 404
    if-nez p0, :cond_b

    .line 405
    if-nez p1, :cond_7

    .line 414
    :cond_6
    :goto_6
    return v0

    .line 408
    :cond_7
    if-nez p2, :cond_19

    move v0, v1

    .line 409
    goto :goto_6

    .line 411
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 413
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    .line 414
    goto :goto_6

    .line 416
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .registers 3

    .line 449
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static toBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    if-ne p0, p1, :cond_5

    .line 475
    :cond_4
    :goto_4
    return v0

    .line 469
    :cond_5
    if-ne p0, p2, :cond_9

    move v0, v1

    .line 470
    goto :goto_4

    .line 471
    :cond_9
    if-eqz p0, :cond_19

    .line 472
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 474
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    .line 475
    goto :goto_4

    .line 478
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanDefaultIfNull(Ljava/lang/Boolean;Z)Z
    .registers 2

    .line 498
    if-nez p0, :cond_3

    .line 501
    :goto_2
    return p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2
.end method

.method public static toBooleanObject(I)Ljava/lang/Boolean;
    .registers 2

    .line 519
    if-nez p0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public static toBooleanObject(IIII)Ljava/lang/Boolean;
    .registers 6

    .line 548
    if-ne p0, p1, :cond_5

    .line 549
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 555
    :goto_4
    return-object v0

    .line 551
    :cond_5
    if-ne p0, p2, :cond_a

    .line 552
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 554
    :cond_a
    if-ne p0, p3, :cond_e

    .line 555
    const/4 v0, 0x0

    goto :goto_4

    .line 557
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 2

    .line 580
    if-nez p0, :cond_4

    .line 581
    const/4 v0, 0x0

    .line 583
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static toBooleanObject(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    .line 612
    if-nez p0, :cond_17

    .line 613
    if-nez p1, :cond_8

    .line 614
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 627
    :cond_7
    :goto_7
    return-object v0

    .line 616
    :cond_8
    if-nez p2, :cond_d

    .line 617
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 619
    :cond_d
    if-eqz p3, :cond_7

    .line 629
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 623
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    .line 624
    :cond_20
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 625
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 626
    :cond_29
    invoke-virtual {p0, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7
.end method

.method public static toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8

    const/4 v3, 0x2

    const/16 v6, 0x66

    const/16 v5, 0x46

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 676
    const-string v0, "true"

    if-ne p0, v0, :cond_e

    .line 677
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 758
    :goto_d
    return-object v0

    .line 679
    :cond_e
    if-nez p0, :cond_12

    .line 680
    const/4 v0, 0x0

    goto :goto_d

    .line 682
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_128

    .line 758
    :cond_19
    const/4 v0, 0x0

    goto :goto_d

    .line 740
    :pswitch_1b  #0x5
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 741
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 742
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 743
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 744
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 745
    if-eq v0, v6, :cond_35

    if-ne v0, v5, :cond_19

    :cond_35
    const/16 v0, 0x61

    if-eq v1, v0, :cond_3d

    const/16 v0, 0x41

    if-ne v1, v0, :cond_19

    :cond_3d
    const/16 v0, 0x6c

    if-eq v2, v0, :cond_45

    const/16 v0, 0x4c

    if-ne v2, v0, :cond_19

    :cond_45
    const/16 v0, 0x73

    if-eq v3, v0, :cond_4d

    const/16 v0, 0x53

    if-ne v3, v0, :cond_19

    :cond_4d
    const/16 v0, 0x65

    if-eq v4, v0, :cond_55

    const/16 v0, 0x45

    if-ne v4, v0, :cond_19

    .line 750
    :cond_55
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    .line 727
    :pswitch_58  #0x4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 728
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 729
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 730
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 731
    const/16 v4, 0x74

    if-eq v0, v4, :cond_71

    const/16 v4, 0x54

    if-ne v0, v4, :cond_19

    :cond_71
    const/16 v0, 0x72

    if-eq v1, v0, :cond_79

    const/16 v0, 0x52

    if-ne v1, v0, :cond_19

    :cond_79
    const/16 v0, 0x75

    if-eq v2, v0, :cond_81

    const/16 v0, 0x55

    if-ne v2, v0, :cond_19

    :cond_81
    const/16 v0, 0x65

    if-eq v3, v0, :cond_89

    const/16 v0, 0x45

    if-ne v3, v0, :cond_19

    .line 735
    :cond_89
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    .line 711
    :pswitch_8c  #0x3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 712
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 713
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 714
    const/16 v3, 0x79

    if-eq v0, v3, :cond_a0

    const/16 v3, 0x59

    if-ne v0, v3, :cond_b4

    :cond_a0
    const/16 v3, 0x65

    if-eq v1, v3, :cond_a8

    const/16 v3, 0x45

    if-ne v1, v3, :cond_b4

    :cond_a8
    const/16 v3, 0x73

    if-eq v2, v3, :cond_b0

    const/16 v3, 0x53

    if-ne v2, v3, :cond_b4

    .line 717
    :cond_b0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 719
    :cond_b4
    const/16 v3, 0x6f

    if-eq v0, v3, :cond_bc

    const/16 v3, 0x4f

    if-ne v0, v3, :cond_19

    :cond_bc
    if-eq v1, v6, :cond_c0

    if-ne v1, v5, :cond_19

    :cond_c0
    if-eq v2, v6, :cond_c4

    if-ne v2, v5, :cond_19

    .line 722
    :cond_c4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 698
    :pswitch_c8  #0x2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 699
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 700
    const/16 v2, 0x6f

    if-eq v0, v2, :cond_d8

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_e4

    :cond_d8
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_e0

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_e4

    .line 702
    :cond_e0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 704
    :cond_e4
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_ec

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_19

    :cond_ec
    const/16 v0, 0x6f

    if-eq v1, v0, :cond_f4

    const/16 v0, 0x4f

    if-ne v1, v0, :cond_19

    .line 706
    :cond_f4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 684
    :pswitch_f8  #0x1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 685
    const/16 v1, 0x79

    if-eq v0, v1, :cond_110

    const/16 v1, 0x59

    if-eq v0, v1, :cond_110

    const/16 v1, 0x74

    if-eq v0, v1, :cond_110

    const/16 v1, 0x54

    if-eq v0, v1, :cond_110

    const/16 v1, 0x31

    if-ne v0, v1, :cond_114

    .line 688
    :cond_110
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 690
    :cond_114
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_124

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_124

    if-eq v0, v6, :cond_124

    if-eq v0, v5, :cond_124

    const/16 v1, 0x30

    if-ne v0, v1, :cond_19

    .line 693
    :cond_124
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 682
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_f8  #00000001
        :pswitch_c8  #00000002
        :pswitch_8c  #00000003
        :pswitch_58  #00000004
        :pswitch_1b  #00000005
    .end packed-switch
.end method

.method public static toBooleanObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    .line 788
    if-nez p0, :cond_17

    .line 789
    if-nez p1, :cond_8

    .line 790
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 803
    :cond_7
    :goto_7
    return-object v0

    .line 792
    :cond_8
    if-nez p2, :cond_d

    .line 793
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 795
    :cond_d
    if-eqz p3, :cond_7

    .line 806
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 799
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    .line 800
    :cond_20
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 801
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 802
    :cond_29
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7
.end method

.method public static toInteger(Ljava/lang/Boolean;III)I
    .registers 5

    .line 858
    if-nez p0, :cond_3

    .line 861
    :goto_2
    return p3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    move p3, p1

    goto :goto_2

    :cond_b
    move p1, p2

    goto :goto_9
.end method

.method public static toInteger(Z)I
    .registers 1

    .line 822
    return p0
.end method

.method public static toInteger(ZII)I
    .registers 3

    .line 839
    if-eqz p0, :cond_3

    :goto_2
    return p1

    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 2

    .line 912
    if-nez p0, :cond_4

    .line 913
    const/4 v0, 0x0

    .line 915
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_3

    :cond_d
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    goto :goto_3
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5

    .line 934
    if-nez p0, :cond_3

    .line 937
    :goto_2
    return-object p3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    move-object p3, p1

    goto :goto_2

    :cond_b
    move-object p1, p2

    goto :goto_9
.end method

.method public static toIntegerObject(Z)Ljava/lang/Integer;
    .registers 2

    .line 877
    if-eqz p0, :cond_5

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    goto :goto_4
.end method

.method public static toIntegerObject(ZLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 894
    if-eqz p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    move-object p1, p2

    goto :goto_2
.end method

.method public static toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 973
    if-nez p0, :cond_3

    .line 976
    :goto_2
    return-object p3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    move-object p3, p1

    goto :goto_2

    :cond_b
    move-object p1, p2

    goto :goto_9
.end method

.method public static toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 954
    if-eqz p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    move-object p1, p2

    goto :goto_2
.end method

.method public static toStringOnOff(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4

    .line 1009
    const-string v0, "on"

    const-string v1, "off"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringOnOff(Z)Ljava/lang/String;
    .registers 3

    .line 992
    const-string v0, "on"

    const-string v1, "off"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4

    .line 1042
    const-string v0, "true"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Z)Ljava/lang/String;
    .registers 3

    .line 1025
    const-string v0, "true"

    const-string v1, "false"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4

    .line 1075
    const-string v0, "yes"

    const-string v1, "no"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Z)Ljava/lang/String;
    .registers 3

    .line 1058
    const-string v0, "yes"

    const-string v1, "no"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs xor([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    .line 1120
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1122
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v0

    .line 1123
    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->xor([Z)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_11

    .line 1124
    :catch_15
    move-exception v0

    .line 1125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array must not contain any null elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs xor([Z)Z
    .registers 5

    const/4 v1, 0x0

    .line 1093
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1096
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_9
    if-ge v2, v3, :cond_12

    aget-boolean v1, p0, v2

    .line 1097
    xor-int/2addr v0, v1

    .line 1096
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    .line 1100
    :cond_12
    return v0
.end method
