.class public La/b/f/i;
.super Ljava/lang/Object;


# direct methods
.method public static A(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, La/b/f/q;

    invoke-direct {v1, p0}, La/b/f/q;-><init>(Ljava/lang/String;)V

    :cond_a
    :goto_a
    invoke-virtual {v1}, La/b/f/q;->d()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v1}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/b/f/i;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, La/b/f/q;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static B(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, La/b/f/i;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const-string v0, ""

    goto :goto_11
.end method

.method public static C(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)I
    .registers 3

    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_10
    const v0, 0x2d0003

    :goto_13
    return v0

    :cond_14
    const-string v0, "1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/high16 v0, 0x2e0000

    goto :goto_13

    :cond_1f
    const-string v0, "1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/high16 v0, 0x2f0000

    goto :goto_13

    :cond_2a
    const-string v0, "1.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/high16 v0, 0x300000

    goto :goto_13

    :cond_35
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "1.5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_45
    const/high16 v0, 0x310000

    goto :goto_13

    :cond_48
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "1.6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_58
    const/high16 v0, 0x320000

    goto :goto_13

    :cond_5b
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "1.7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_6b
    const/high16 v0, 0x330000

    goto :goto_13

    :cond_6e
    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "1.8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_7e
    const/high16 v0, 0x340000

    goto :goto_13

    :cond_81
    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "1.9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    :cond_91
    const/high16 v0, 0x350000

    goto :goto_13

    :cond_94
    const-string v0, "10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const/high16 v0, 0x360000

    goto/16 :goto_13

    :cond_a0
    const/4 v0, 0x0

    goto/16 :goto_13
.end method

.method public static a(Ljava/lang/String;Z)I
    .registers 5

    const/4 v1, 0x1

    if-eqz p1, :cond_12

    const/4 v2, 0x0

    move v0, v1

    :goto_5
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_24

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_5

    :cond_12
    move v0, v1

    move v2, v1

    goto :goto_5

    :sswitch_15
    move v0, v1

    goto :goto_5

    :sswitch_17
    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x3b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :sswitch_22
    return v2

    nop

    :sswitch_data_24
    .sparse-switch
        0x29 -> :sswitch_22
        0x4c -> :sswitch_17
        0x5b -> :sswitch_15
    .end sparse-switch
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, La/b/f/i;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, La/b/f/i;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, La/b/f/i;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_17

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    const/16 v0, 0x4c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, La/b/f/i;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p2, p3}, La/b/f/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, La/b/f/i;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "<init>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, La/b/f/i;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, La/b/f/i;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_23
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0}, La/b/f/i;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .registers 4

    const v0, -0x35014542  # -8346975.0f

    if-eq p0, v0, :cond_28

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid magic number ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    return-void
.end method

.method public static a(C)Z
    .registers 2

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_20

    const/16 v0, 0x42

    if-eq p0, v0, :cond_20

    const/16 v0, 0x43

    if-eq p0, v0, :cond_20

    const/16 v0, 0x53

    if-eq p0, v0, :cond_20

    const/16 v0, 0x49

    if-eq p0, v0, :cond_20

    const/16 v0, 0x46

    if-eq p0, v0, :cond_20

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_20

    const/16 v0, 0x44

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static b(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static b(Ljava/lang/String;I)I
    .registers 3

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {p0, v0}, La/b/f/i;->a(Ljava/lang/String;Z)I

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static b(Ljava/lang/String;Z)I
    .registers 7

    const/16 v4, 0x3b

    const/4 v1, 0x1

    if-eqz p1, :cond_14

    const/4 v2, 0x0

    move v0, v1

    :cond_7
    :goto_7
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_7

    :cond_14
    move v0, v1

    move v2, v1

    goto :goto_7

    :sswitch_17
    add-int/lit8 v2, v2, 0x2

    move v0, v1

    goto :goto_7

    :sswitch_1b
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :sswitch_24
    add-int/lit8 v2, v2, 0x1

    :goto_26
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_32

    move v1, v0

    goto :goto_26

    :cond_32
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_7

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :sswitch_3d
    return v2

    :sswitch_data_3e
    .sparse-switch
        0x29 -> :sswitch_3d
        0x44 -> :sswitch_17
        0x4a -> :sswitch_17
        0x4c -> :sswitch_1b
        0x5b -> :sswitch_24
    .end sparse-switch
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x20

    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_30

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "private"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_30
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_41

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "protected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_41
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_52

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_52
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_63

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "final"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_63
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_70

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_70
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_86

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "interface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_81
    :goto_81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_86
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_98

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "enum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_81

    :cond_98
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_aa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "abstract"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_81

    :cond_aa
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_bc

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "synthetic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_81

    :cond_bc
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_81

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "module"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_81
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)I
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static c(Ljava/lang/String;I)I
    .registers 3

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {p0, v0}, La/b/f/i;->b(Ljava/lang/String;Z)I

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static c(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x20

    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_30

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "private"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_30
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_41

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "protected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_41
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_52

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_52
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_63

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "final"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_63
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_74

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "volatile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_74
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_85

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "transient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_85
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_96

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "synthetic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_96
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_24

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :sswitch_5
    const-string v0, "1.0"

    goto :goto_4

    :sswitch_8
    const-string v0, "1.2"

    goto :goto_4

    :sswitch_b
    const-string v0, "1.3"

    goto :goto_4

    :sswitch_e
    const-string v0, "1.4"

    goto :goto_4

    :sswitch_11
    const-string v0, "1.5"

    goto :goto_4

    :sswitch_14
    const-string v0, "1.6"

    goto :goto_4

    :sswitch_17
    const-string v0, "1.7"

    goto :goto_4

    :sswitch_1a
    const-string v0, "1.8"

    goto :goto_4

    :sswitch_1d
    const-string v0, "1.9"

    goto :goto_4

    :sswitch_20
    const-string v0, "10"

    goto :goto_4

    nop

    :sswitch_data_24
    .sparse-switch
        0x2d0003 -> :sswitch_5
        0x2e0000 -> :sswitch_8
        0x2f0000 -> :sswitch_b
        0x300000 -> :sswitch_e
        0x310000 -> :sswitch_11
        0x320000 -> :sswitch_14
        0x330000 -> :sswitch_17
        0x340000 -> :sswitch_1a
        0x350000 -> :sswitch_1d
        0x360000 -> :sswitch_20
    .end sparse-switch
.end method

.method public static d(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x20

    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_30

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "private"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_30
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_41

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "protected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_41
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_52

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_52
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_63

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "final"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_63
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_74

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "synchronized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_74
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_85

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "bridge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_85
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_96

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "varargs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_96
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_a7

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "native"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a7
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_b8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "abstract"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b8
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_c9

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "strictfp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c9
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_da

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "synthetic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_da
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "[]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0
.end method

.method public static e(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x20

    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "final"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_30

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "synthetic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_30
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_43

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "mandated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)V
    .registers 4

    const v0, 0x2d0003

    if-lt p0, v0, :cond_9

    const/high16 v0, 0x360000

    if-le p0, v0, :cond_5d

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported version number ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, La/b/f/i;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, La/b/f/i;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] (maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Java "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    return-void
.end method

.method public static f(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, La/b/f/i;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x20

    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_30

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "synthetic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_30
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_43

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "mandated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_11

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public static g(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return v0
.end method

.method public static g(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, La/b/f/i;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x20

    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "transitive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_30

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_30
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_41

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "synthetic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_41
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_54

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "mandated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static h(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, La/b/f/i;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x20

    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "synthetic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_32

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "mandated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "java/lang/Object"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "java/lang/Cloneable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "java/io/Serializable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static i(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, La/b/f/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x20

    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "synthetic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_32

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "mandated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, La/b/f/i;->a(C)Z

    move-result v0

    return v0
.end method

.method public static j(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, La/b/f/i;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_12

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static k(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, La/b/f/i;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, La/b/f/i;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, La/b/f/i;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(I)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, La/b/f/i;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0}, La/b/f/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0}, La/b/f/i;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, La/b/f/i;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_18
    return-object p0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, La/b/f/i;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, La/b/f/i;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_12
    invoke-static {p0}, La/b/f/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static q(Ljava/lang/String;)C
    .registers 4

    const-string v0, "java/lang/Void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x56

    :goto_a
    return v0

    :cond_b
    const-string v0, "java/lang/Boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x5a

    goto :goto_a

    :cond_16
    const-string v0, "java/lang/Byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x42

    goto :goto_a

    :cond_21
    const-string v0, "java/lang/Character"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x43

    goto :goto_a

    :cond_2c
    const-string v0, "java/lang/Short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x53

    goto :goto_a

    :cond_37
    const-string v0, "java/lang/Integer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 v0, 0x49

    goto :goto_a

    :cond_42
    const-string v0, "java/lang/Long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/16 v0, 0x4a

    goto :goto_a

    :cond_4d
    const-string v0, "java/lang/Float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/16 v0, 0x46

    goto :goto_a

    :cond_58
    const-string v0, "java/lang/Double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    const/16 v0, 0x44

    goto :goto_a

    :cond_63
    const-string v0, "java/lang/reflect/Array"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const/16 v0, 0x5b

    goto :goto_a

    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected primitive class name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "<clinit>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "<init>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, La/b/f/i;->a(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static u(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, La/b/f/i;->b(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_1a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_14

    const/16 v3, 0x44

    if-ne v2, v3, :cond_16

    :cond_14
    const/4 v0, 0x2

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/16 v3, 0x56

    if-eq v2, v3, :cond_15

    :cond_1a
    move v0, v1

    goto :goto_15
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p0}, La/b/f/i;->x(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "[]"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_17
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/16 v0, 0x56

    :goto_21
    if-eqz v0, :cond_a8

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :goto_27
    move-object v2, v0

    :goto_28
    if-ge v1, v3, :cond_c7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_41
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/16 v0, 0x5a

    goto :goto_21

    :cond_4c
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/16 v0, 0x42

    goto :goto_21

    :cond_57
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const/16 v0, 0x43

    goto :goto_21

    :cond_62
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/16 v0, 0x53

    goto :goto_21

    :cond_6d
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const/16 v0, 0x49

    goto :goto_21

    :cond_78
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    const/16 v0, 0x46

    goto :goto_21

    :cond_83
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const/16 v0, 0x4a

    goto :goto_21

    :cond_8e
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const/16 v0, 0x44

    goto :goto_21

    :cond_99
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const/16 v0, 0x25

    goto/16 :goto_21

    :cond_a5
    move v0, v1

    goto/16 :goto_21

    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, La/b/f/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27

    :cond_c7
    return-object v2
.end method

.method public static x(Ljava/lang/String;)I
    .registers 6

    const/4 v2, 0x0

    const-string v0, "[]"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v2

    :goto_d
    const-string v4, "[]"

    invoke-virtual {p0, v0, v4, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_19

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v3

    goto :goto_d

    :cond_19
    return v1
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0}, La/b/f/i;->g(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_b
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x56

    if-ne v0, v3, :cond_36

    const-string v0, "void"

    :goto_15
    if-nez v0, :cond_8b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_3d

    const-string v0, "boolean"

    goto :goto_15

    :cond_3d
    const/16 v3, 0x42

    if-ne v0, v3, :cond_44

    const-string v0, "byte"

    goto :goto_15

    :cond_44
    const/16 v3, 0x43

    if-ne v0, v3, :cond_4b

    const-string v0, "char"

    goto :goto_15

    :cond_4b
    const/16 v3, 0x53

    if-ne v0, v3, :cond_52

    const-string v0, "short"

    goto :goto_15

    :cond_52
    const/16 v3, 0x49

    if-ne v0, v3, :cond_59

    const-string v0, "int"

    goto :goto_15

    :cond_59
    const/16 v3, 0x46

    if-ne v0, v3, :cond_60

    const-string v0, "float"

    goto :goto_15

    :cond_60
    const/16 v3, 0x4a

    if-ne v0, v3, :cond_67

    const-string v0, "long"

    goto :goto_15

    :cond_67
    const/16 v3, 0x44

    if-ne v0, v3, :cond_6e

    const-string v0, "double"

    goto :goto_15

    :cond_6e
    const/16 v3, 0x25

    if-ne v0, v3, :cond_75

    const-string v0, "%"

    goto :goto_15

    :cond_75
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_89

    const/4 v0, 0x1

    const/16 v3, 0x3b

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_89
    const/4 v0, 0x0

    goto :goto_15

    :cond_8b
    :goto_8b
    if-ge v1, v2, :cond_a3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    :cond_a3
    return-object v0
.end method

.method public static z(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
