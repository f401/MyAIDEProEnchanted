.class public Labcd/hL;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Labcd/hL;->j6(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 2

    :try_start_0
    new-instance v0, Labcd/jL;

    invoke-direct {v0}, Labcd/jL;-><init>()V

    invoke-virtual {v0, p0}, Labcd/jL;->j6(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const-string v0, "null"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_24

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Labcd/hL;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_3e

    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_3d

    :cond_38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    :goto_3d
    return-object v0

    :cond_3e
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_58

    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {v1}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_57

    :cond_52
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_57
    :goto_57
    return-object v0

    :cond_58
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_61
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6a
    instance-of v0, p0, Labcd/eL;

    if-eqz v0, :cond_75

    check-cast p0, Labcd/eL;

    invoke-interface {p0}, Labcd/eL;->j6()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_75
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_80

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Labcd/fL;->j6(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_80
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_8b

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Labcd/dL;->j6(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0, v0}, Labcd/hL;->j6(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static j6(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_72

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6f

    const/16 v3, 0x22

    if-eq v2, v3, :cond_6c

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_69

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_66

    packed-switch v2, :pswitch_data_7c

    if-ltz v2, :cond_33

    const/16 v3, 0x1f

    if-le v2, v3, :cond_43

    goto :goto_33

    :pswitch_2a  #0xa
    const-string v2, "\\n"

    goto :goto_74

    :pswitch_2d  #0x9
    const-string v2, "\\t"

    goto :goto_74

    :pswitch_30  #0x8
    const-string v2, "\\b"

    goto :goto_74

    :cond_33
    :goto_33
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_3b

    const/16 v3, 0x9f

    if-le v2, v3, :cond_43

    :cond_3b
    const/16 v3, 0x2000

    if-lt v2, v3, :cond_62

    const/16 v3, 0x20ff

    if-gt v2, v3, :cond_62

    :cond_43
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\u"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_4d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_5d

    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_5d
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_74

    :cond_62
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_77

    :cond_66
    const-string v2, "\\\\"

    goto :goto_74

    :cond_69
    const-string v2, "\\/"

    goto :goto_74

    :cond_6c
    const-string v2, "\\\""

    goto :goto_74

    :cond_6f
    const-string v2, "\\r"

    goto :goto_74

    :cond_72
    const-string v2, "\\f"

    :goto_74
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x8
        :pswitch_30  #00000008
        :pswitch_2d  #00000009
        :pswitch_2a  #0000000a
    .end packed-switch
.end method
