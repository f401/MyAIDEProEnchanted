.class public Labcd/pN;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Labcd/pN;->j6(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    instance-of v1, p0, Labcd/EL;

    const-string v2, ""

    if-eqz v1, :cond_11

    check-cast p0, Labcd/EL;

    :goto_d
    invoke-static {v2, p1, p0, v0}, Labcd/pN;->j6(Ljava/lang/String;ZLabcd/EL;Ljava/lang/StringBuffer;)V

    goto :goto_1c

    :cond_11
    instance-of v1, p0, Labcd/qL;

    if-eqz v1, :cond_21

    check-cast p0, Labcd/qL;

    invoke-interface {p0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p0

    goto :goto_d

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown object type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;ZLabcd/EL;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    check-cast p3, Labcd/aM;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3}, Labcd/aM;->Zo()Z

    move-result v1

    const-string v2, " ApplicationSpecific["

    if-eqz v1, :cond_6e

    const/16 v1, 0x10

    :try_start_11
    invoke-virtual {p3, v1}, Labcd/aM;->j6(I)Labcd/EL;

    move-result-object v1

    invoke-static {v1}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Labcd/aM;->u7()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object p0

    :goto_42
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-nez p3, :cond_49

    goto :goto_69

    :cond_49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, "    "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Labcd/EL;

    invoke-static {p3, p2, p4, v0}, Labcd/pN;->j6(Ljava/lang/String;ZLabcd/EL;Ljava/lang/StringBuffer;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_64} :catch_65

    goto :goto_42

    :catch_65
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_69
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Labcd/aM;->u7()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] ("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/String;

    invoke-virtual {p3}, Labcd/aM;->tp()[B

    move-result-object p1

    invoke-static {p1}, Labcd/VP;->j6([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 9

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "    "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_21
    array-length v4, p1

    if-lt v3, v4, :cond_29

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    array-length v4, p1

    sub-int/2addr v4, v3

    const/16 v5, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-le v4, v5, :cond_4c

    new-instance v4, Ljava/lang/String;

    invoke-static {p1, v3, v5}, Labcd/VP;->j6([BII)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, v3, v5}, Labcd/pN;->j6([BII)Ljava/lang/String;

    move-result-object v4

    :goto_45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_68

    :cond_4c
    new-instance v4, Ljava/lang/String;

    array-length v6, p1

    sub-int/2addr v6, v3

    invoke-static {p1, v3, v6}, Labcd/VP;->j6([BII)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v4, p1

    sub-int/2addr v4, v3

    :goto_5c
    if-ne v4, v5, :cond_6b

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, v3, v4}, Labcd/pN;->j6([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_45

    :goto_68
    add-int/lit8 v3, v3, 0x20

    goto :goto_21

    :cond_6b
    const-string v6, "  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5c
.end method

.method private static j6([BII)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, p1

    :goto_6
    add-int v2, p1, p2

    if-ne v1, v2, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    aget-byte v2, p0, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1d

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_1d

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method static j6(Ljava/lang/String;ZLabcd/EL;Ljava/lang/StringBuffer;)V
    .registers 10

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p2, Labcd/FL;

    const-string v2, "NULL"

    const-string v3, "    "

    if-eqz v1, :cond_71

    move-object v1, p2

    check-cast v1, Labcd/FL;

    invoke-virtual {v1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of p0, p2, Labcd/UL;

    if-eqz p0, :cond_32

    const-string p0, "BER Sequence"

    :goto_2e
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3c

    :cond_32
    instance-of p0, p2, Labcd/tM;

    if-eqz p0, :cond_39

    const-string p0, "DER Sequence"

    goto :goto_2e

    :cond_39
    const-string p0, "Sequence"

    goto :goto_2e

    :goto_3c
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-nez p0, :cond_47

    goto/16 :goto_40a

    :cond_47
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6a

    new-instance p2, Labcd/mM;

    invoke-direct {p2}, Labcd/mM;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    goto :goto_6a

    :cond_59
    instance-of p2, p0, Labcd/EL;

    if-eqz p2, :cond_60

    check-cast p0, Labcd/EL;

    goto :goto_66

    :cond_60
    check-cast p0, Labcd/qL;

    invoke-interface {p0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p0

    :goto_66
    invoke-static {v4, p1, p0, p3}, Labcd/pN;->j6(Ljava/lang/String;ZLabcd/EL;Ljava/lang/StringBuffer;)V

    goto :goto_3f

    :cond_6a
    :goto_6a
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3c

    :cond_71
    instance-of v1, p2, Labcd/yM;

    if-eqz v1, :cond_d0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of p0, p2, Labcd/YL;

    if-eqz p0, :cond_8f

    const-string p0, "BER Tagged ["

    goto :goto_91

    :cond_8f
    const-string p0, "Tagged ["

    :goto_91
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast p2, Labcd/yM;

    invoke-virtual {p2}, Labcd/LL;->tp()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x5d

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Labcd/LL;->we()Z

    move-result p0

    if-nez p0, :cond_b1

    const-string p0, " IMPLICIT "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Labcd/LL;->EQ()Z

    move-result p0

    if-eqz p0, :cond_c7

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "EMPTY"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_40a

    :cond_c7
    invoke-virtual {p2}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p0

    invoke-static {v1, p1, p0, p3}, Labcd/pN;->j6(Ljava/lang/String;ZLabcd/EL;Ljava/lang/StringBuffer;)V

    goto/16 :goto_40a

    :cond_d0
    instance-of v1, p2, Labcd/WL;

    if-eqz v1, :cond_11b

    check-cast p2, Labcd/HL;

    invoke-virtual {p2}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "BER Set"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_f2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_f5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-nez p0, :cond_fd

    goto/16 :goto_40a

    :cond_fd
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_10a

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f2

    :cond_10a
    instance-of p2, p0, Labcd/EL;

    if-eqz p2, :cond_111

    check-cast p0, Labcd/EL;

    goto :goto_117

    :cond_111
    check-cast p0, Labcd/qL;

    invoke-interface {p0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p0

    :goto_117
    invoke-static {v4, p1, p0, p3}, Labcd/pN;->j6(Ljava/lang/String;ZLabcd/EL;Ljava/lang/StringBuffer;)V

    goto :goto_f5

    :cond_11b
    instance-of v1, p2, Labcd/vM;

    if-eqz v1, :cond_166

    check-cast p2, Labcd/HL;

    invoke-virtual {p2}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "DER Set"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_13d
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_140
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-nez p0, :cond_148

    goto/16 :goto_40a

    :cond_148
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_155

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13d

    :cond_155
    instance-of p2, p0, Labcd/EL;

    if-eqz p2, :cond_15c

    check-cast p0, Labcd/EL;

    goto :goto_162

    :cond_15c
    check-cast p0, Labcd/qL;

    invoke-interface {p0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p0

    :goto_162
    invoke-static {v4, p1, p0, p3}, Labcd/pN;->j6(Ljava/lang/String;ZLabcd/EL;Ljava/lang/StringBuffer;)V

    goto :goto_140

    :cond_166
    instance-of v1, p2, Labcd/zL;

    const-string v2, ")"

    if-eqz v1, :cond_192

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "ObjectIdentifier("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/zL;

    invoke-virtual {p2}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_183
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_186
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_18d
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_40a

    :cond_192
    instance-of v1, p2, Labcd/dM;

    if-eqz v1, :cond_1ae

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "Boolean("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/dM;

    invoke-virtual {p2}, Labcd/dM;->u7()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_183

    :cond_1ae
    instance-of v1, p2, Labcd/wL;

    if-eqz v1, :cond_1ca

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "Integer("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/wL;

    invoke-virtual {p2}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object p0

    :goto_1c6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_183

    :cond_1ca
    instance-of v1, p2, Labcd/pM;

    const-string v4, "] "

    const-string v5, "["

    if-eqz v1, :cond_202

    check-cast p2, Labcd/AL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "DER Octet String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/AL;->u7()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_c2

    invoke-virtual {p2}, Labcd/AL;->u7()[B

    move-result-object p1

    invoke-static {p0, p1}, Labcd/pN;->j6(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    goto :goto_18d

    :cond_202
    instance-of v1, p2, Labcd/cM;

    if-eqz v1, :cond_243

    check-cast p2, Labcd/cM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "DER Bit String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/cM;->u7()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/cM;->tp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_c2

    invoke-virtual {p2}, Labcd/cM;->u7()[B

    move-result-object p1

    invoke-static {p0, p1}, Labcd/pN;->j6(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_18d

    :cond_243
    instance-of v1, p2, Labcd/kM;

    const-string v4, ") "

    if-eqz v1, :cond_265

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "IA5String("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/kM;

    invoke-virtual {p2}, Labcd/kM;->getString()Ljava/lang/String;

    move-result-object p0

    :goto_25d
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_186

    :cond_265
    instance-of v1, p2, Labcd/AM;

    if-eqz v1, :cond_27e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "UTF8String("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/AM;

    invoke-virtual {p2}, Labcd/AM;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_25d

    :cond_27e
    instance-of v1, p2, Labcd/sM;

    if-eqz v1, :cond_297

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "PrintableString("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/sM;

    invoke-virtual {p2}, Labcd/sM;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_25d

    :cond_297
    instance-of v1, p2, Labcd/CM;

    if-eqz v1, :cond_2b0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "VisibleString("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/CM;

    invoke-virtual {p2}, Labcd/CM;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_25d

    :cond_2b0
    instance-of v1, p2, Labcd/bM;

    if-eqz v1, :cond_2c9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "BMPString("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/bM;

    invoke-virtual {p2}, Labcd/bM;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_25d

    :cond_2c9
    instance-of v1, p2, Labcd/xM;

    if-eqz v1, :cond_2e3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "T61String("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/xM;

    invoke-virtual {p2}, Labcd/xM;->getString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_25d

    :cond_2e3
    instance-of v1, p2, Labcd/zM;

    if-eqz v1, :cond_2fd

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "UTCTime("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/zM;

    invoke-virtual {p2}, Labcd/zM;->we()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_25d

    :cond_2fd
    instance-of v1, p2, Labcd/jM;

    if-eqz v1, :cond_317

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "GeneralizedTime("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Labcd/jM;

    invoke-virtual {p2}, Labcd/jM;->tp()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_25d

    :cond_317
    instance-of v1, p2, Labcd/OL;

    if-eqz v1, :cond_323

    const-string v1, "BER"

    :goto_31d
    invoke-static {v1, p0, p1, p2, v0}, Labcd/pN;->j6(Ljava/lang/String;Ljava/lang/String;ZLabcd/EL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_18d

    :cond_323
    instance-of v1, p2, Labcd/aM;

    if-eqz v1, :cond_32a

    const-string v1, "DER"

    goto :goto_31d

    :cond_32a
    instance-of v1, p2, Labcd/eM;

    if-eqz v1, :cond_344

    check-cast p2, Labcd/eM;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "DER Enumerated("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/eM;->u7()Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_1c6

    :cond_344
    instance-of v1, p2, Labcd/fM;

    if-eqz v1, :cond_3f8

    check-cast p2, Labcd/fM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "External "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Labcd/fM;->tp()Labcd/zL;

    move-result-object v1

    if-eqz v1, :cond_39b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Direct Reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/fM;->tp()Labcd/zL;

    move-result-object v2

    invoke-virtual {v2}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_39b
    invoke-virtual {p2}, Labcd/fM;->J0()Labcd/wL;

    move-result-object v1

    if-eqz v1, :cond_3c4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Indirect Reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/fM;->J0()Labcd/wL;

    move-result-object v2

    invoke-virtual {v2}, Labcd/lM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3c4
    invoke-virtual {p2}, Labcd/fM;->u7()Labcd/EL;

    move-result-object v1

    if-eqz v1, :cond_3d1

    invoke-virtual {p2}, Labcd/fM;->u7()Labcd/EL;

    move-result-object v1

    invoke-static {p0, p1, v1, p3}, Labcd/pN;->j6(Ljava/lang/String;ZLabcd/EL;Ljava/lang/StringBuffer;)V

    :cond_3d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/fM;->EQ()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Labcd/fM;->we()Labcd/EL;

    move-result-object p2

    :try_start_3f4
    invoke-static {p0, p1, p2, p3}, Labcd/pN;->j6(Ljava/lang/String;ZLabcd/EL;Ljava/lang/StringBuffer;)V
    :try_end_3f7
    .catchall {:try_start_3f4 .. :try_end_3f7} :catchall_40b

    goto :goto_40a

    :cond_3f8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_186

    :goto_40a
    return-void

    :catchall_40b
    move-exception p0

    goto :goto_40e

    :goto_40d
    throw p0

    :goto_40e
    goto :goto_40d
.end method
