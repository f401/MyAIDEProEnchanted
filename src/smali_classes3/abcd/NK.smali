.class public final Labcd/NK;
.super Ljava/lang/Object;


# static fields
.field private static final j6:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x5b

    new-array v0, v0, [C

    sput-object v0, Labcd/NK;->j6:[C

    const/4 v0, 0x0

    :goto_7
    sget-object v1, Labcd/NK;->j6:[C

    array-length v2, v1

    if-lt v0, v2, :cond_20

    const/16 v0, 0x41

    :goto_e
    const/16 v1, 0x5a

    if-le v0, v1, :cond_13

    return-void

    :cond_13
    sget-object v1, Labcd/NK;->j6:[C

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_e

    :cond_20
    aput-char v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_7
.end method

.method public static DW(Ljava/lang/String;)Z
    .registers 5

    if-eqz p0, :cond_23

    invoke-static {p0}, Labcd/NK;->FH(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notABoolean:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->expectedBooleanStringValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static FH(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "yes"

    invoke-static {v1, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "true"

    invoke-static {v1, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "1"

    invoke-static {v1, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "on"

    invoke-static {v1, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_4a

    :cond_25
    const-string v1, "no"

    invoke-static {v1, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "false"

    invoke-static {v1, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "0"

    invoke-static {v1, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "off"

    invoke-static {v1, p0}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_46

    goto :goto_47

    :cond_46
    return-object v0

    :cond_47
    :goto_47
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4a
    :goto_4a
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_15

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Labcd/NK;->j6(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static j6(C)C
    .registers 2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_8

    sget-object v0, Labcd/NK;->j6:[C

    aget-char p0, v0, p0

    :cond_8
    return p0
.end method

.method public static j6(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1, p1}, Labcd/NK;->j6(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_2c

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_2c
    if-eq v2, v1, :cond_31

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method public static j6(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_18

    return v0

    :cond_18
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Labcd/NK;->j6(C)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Labcd/NK;->j6(C)C

    move-result v4

    if-eq v2, v4, :cond_2b

    return v3

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method
