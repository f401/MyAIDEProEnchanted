.class public Labcd/mK;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/regex/Pattern;

.field private static final FH:Ljava/util/regex/Pattern;

.field private static final j6:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^(Bug|Issue)[a-zA-Z0-9-]*:.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/mK;->j6:Ljava/util/regex/Pattern;

    const-string v0, "(^[a-zA-Z0-9-]+:(?!//).*$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/mK;->DW:Ljava/util/regex/Pattern;

    const-string v0, "^[ \\[].*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/mK;->FH:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static j6(Labcd/yE;Labcd/yE;Labcd/KE;Labcd/KE;Ljava/lang/String;)Labcd/yE;
    .registers 7

    invoke-static {p4}, Labcd/mK;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tree "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_33

    const-string v1, "parent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string p1, "author "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "committer "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Labcd/EE$a;

    invoke-direct {p0}, Labcd/EE$a;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Labcd/EE;->j6(I[B)Labcd/yE;

    move-result-object p0

    return-object p0
.end method

.method static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "(?i)(?m)^Signed-off-by:.*$\n?"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(?m)^#.*$\n?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(?m)\n\n\n+"

    const-string v2, "\\\n"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\n*$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(?s)\ndiff --git.*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/String;Labcd/yE;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Labcd/mK;->j6(Ljava/lang/String;Labcd/yE;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/String;Labcd/yE;Z)Ljava/lang/String;
    .registers 9

    const-string v0, "Change-Id:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_46

    if-eqz p2, :cond_45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0xa

    :goto_10
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_42

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x28

    if-ne v0, v1, :cond_25

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2b

    :cond_25
    add-int/lit8 v0, p2, 0x29

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "I"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/YD;->VH()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    :cond_42
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_45
    :goto_45
    return-object p0

    :cond_46
    const-string p2, "\n"

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_50
    if-gt v2, v3, :cond_53

    goto :goto_86

    :cond_53
    sget-object v4, Labcd/mK;->DW:Ljava/util/regex/Pattern;

    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_63

    move v1, v2

    goto :goto_82

    :cond_63
    array-length v4, p0

    if-eq v1, v4, :cond_6f

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6f

    goto :goto_86

    :cond_6f
    array-length v4, p0

    if-eq v1, v4, :cond_85

    sget-object v1, Labcd/mK;->FH:Ljava/util/regex/Pattern;

    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_85

    add-int/lit8 v1, v2, 0x1

    :goto_82
    add-int/lit8 v2, v2, -0x1

    goto :goto_50

    :cond_85
    array-length v1, p0

    :goto_86
    move v2, v1

    :goto_87
    array-length v3, p0

    if-lt v2, v3, :cond_8b

    goto :goto_9c

    :cond_8b
    sget-object v3, Labcd/mK;->j6:Ljava/util/regex/Pattern;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9c

    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    :cond_9c
    :goto_9c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_a2
    if-lt v4, v2, :cond_d1

    array-length v5, p0

    if-ne v2, v5, :cond_ac

    if-ne v2, v1, :cond_ac

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ac
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " I"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_be
    array-length p1, p0

    if-lt v4, p1, :cond_c6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c6
    aget-object p1, p0, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_be

    :cond_d1
    aget-object v5, p0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a2
.end method
