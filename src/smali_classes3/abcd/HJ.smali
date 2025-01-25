.class public Labcd/HJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DW:Ljava/util/regex/Pattern;

.field private static final FH:Ljava/util/regex/Pattern;

.field private static final Hw:Ljava/util/regex/Pattern;

.field private static final Zo:Ljava/util/BitSet;

.field private static final j6:Ljava/util/regex/Pattern;

.field private static final v5:Ljava/util/regex/Pattern;


# instance fields
.field private EQ:Ljava/lang/String;

.field private J0:Ljava/lang/String;

.field private VH:Ljava/lang/String;

.field private gn:Ljava/lang/String;

.field private tp:Ljava/lang/String;

.field private u7:Ljava/lang/String;

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "^([a-z][a-z0-9+-]+)://(?:(?:([^/:@]+)(?::([^\\\\/]+))?@)?([^\\\\/:]+)(?::(\\d+))?((?:/~(?:[^\\\\/]+))?[\\\\/]))?(.+)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/HJ;->j6:Ljava/util/regex/Pattern;

    const-string v0, "^([\\\\/]?((?:[A-Za-z]:)?[\\\\/]?(?:(?:[^\\\\/]+[\\\\/])*[^\\\\/]+[\\\\/]?)))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/HJ;->DW:Ljava/util/regex/Pattern;

    const-string v0, "^(file):([\\\\/](?![\\\\/])((?:[A-Za-z]:)?[\\\\/]?(?:(?:[^\\\\/]+[\\\\/])*[^\\\\/]+[\\\\/]?)))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/HJ;->FH:Ljava/util/regex/Pattern;

    const-string v0, "^(?:([^/:@]+)(?::([^\\\\/]+))?@)?([^\\\\/:]+):((?:(?:/~(?:[^\\\\/]+))[\\\\/])?(?:(?:[^\\\\/]+[\\\\/])*[^\\\\/]+[\\\\/]?))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/HJ;->Hw:Ljava/util/regex/Pattern;

    const-string v0, "^(?:([^/:@]+)(?::([^\\\\/]+))?@)?([^\\\\/:]{2,}):([\\\\/](?:(?:[^\\\\/]+[\\\\/])*[^\\\\/]+[\\\\/]?))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/HJ;->v5:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Labcd/HJ;->Zo:Ljava/util/BitSet;

    const-string v0, "!*\'();:@&=+$,/?#[]"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_39
    if-lt v2, v1, :cond_3c

    return-void

    :cond_3c
    aget-byte v3, v0, v2

    sget-object v4, Labcd/HJ;->Zo:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_39
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/HJ;->we:I

    return-void
.end method

.method private constructor <init>(Labcd/HJ;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/HJ;->we:I

    iget-object v0, p1, Labcd/HJ;->VH:Ljava/lang/String;

    iput-object v0, p0, Labcd/HJ;->VH:Ljava/lang/String;

    iget-object v0, p1, Labcd/HJ;->u7:Ljava/lang/String;

    iput-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    iget-object v0, p1, Labcd/HJ;->gn:Ljava/lang/String;

    iput-object v0, p0, Labcd/HJ;->gn:Ljava/lang/String;

    iget-object v0, p1, Labcd/HJ;->tp:Ljava/lang/String;

    iput-object v0, p0, Labcd/HJ;->tp:Ljava/lang/String;

    iget-object v0, p1, Labcd/HJ;->EQ:Ljava/lang/String;

    iput-object v0, p0, Labcd/HJ;->EQ:Ljava/lang/String;

    iget v0, p1, Labcd/HJ;->we:I

    iput v0, p0, Labcd/HJ;->we:I

    iget-object p1, p1, Labcd/HJ;->J0:Ljava/lang/String;

    iput-object p1, p0, Labcd/HJ;->J0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/HJ;->we:I

    invoke-static {p1}, Labcd/NK;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e9

    sget-object v0, Labcd/HJ;->FH:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_33

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HJ;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    :goto_24
    iget-object v0, p0, Labcd/HJ;->VH:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Labcd/HJ;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HJ;->u7:Ljava/lang/String;

    invoke-static {p1}, Labcd/HJ;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_30
    iput-object p1, p0, Labcd/HJ;->gn:Ljava/lang/String;

    return-void

    :cond_33
    sget-object v0, Labcd/HJ;->j6:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eqz v1, :cond_99

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HJ;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/HJ;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HJ;->tp:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/HJ;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HJ;->EQ:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/HJ;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HJ;->J0:Ljava/lang/String;

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_76

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Labcd/HJ;->we:I

    :cond_76
    new-instance p1, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/HJ;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/HJ;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_99
    sget-object v0, Labcd/HJ;->Hw:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_bf

    :goto_a5
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HJ;->tp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HJ;->EQ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HJ;->J0:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    :goto_bb
    iput-object p1, p0, Labcd/HJ;->u7:Ljava/lang/String;

    goto/16 :goto_30

    :cond_bf
    sget-object v0, Labcd/HJ;->v5:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_cc

    goto :goto_a5

    :cond_cc
    sget-object v0, Labcd/HJ;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_dd

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_bb

    :cond_dd
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotParseGitURIish:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_e9
    new-instance p1, Ljava/net/URISyntaxException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->cannotParseGitURIish:Ljava/lang/String;

    const-string v1, "The uri was empty or null"

    invoke-direct {p1, v1, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f8

    :goto_f7
    throw p1

    :goto_f8
    goto :goto_f7
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/HJ;->we:I

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->VH:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->gn:Ljava/lang/String;

    :try_start_12
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/net/URISyntaxException; {:try_start_12 .. :try_end_1c} :catch_4c

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2c

    move-object v2, v0

    goto :goto_31

    :cond_2c
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_31
    iput-object v2, p0, Labcd/HJ;->tp:Ljava/lang/String;

    if-gez v1, :cond_37

    const/4 v0, 0x0

    goto :goto_3d

    :cond_37
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    iput-object v0, p0, Labcd/HJ;->EQ:Ljava/lang/String;

    :cond_3f
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Labcd/HJ;->we:I

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HJ;->J0:Ljava/lang/String;

    return-void

    :catch_4c
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method private static VH(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_d

    return-object p0

    :cond_d
    :try_start_d
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_13} :catch_57

    array-length v2, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_19
    array-length v6, v1

    if-lt v4, v6, :cond_21

    invoke-static {v2, v3, v5}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    aget-byte v6, v1, v4

    if-ne v6, v0, :cond_4f

    add-int/lit8 v6, v4, 0x2

    array-length v7, v1

    if-ge v6, v7, :cond_43

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v1, v4

    invoke-static {v4}, Labcd/IK;->j6(B)I

    move-result v4

    aget-byte v7, v1, v6

    invoke-static {v7}, Labcd/IK;->j6(B)I

    move-result v7

    add-int/lit8 v8, v5, 0x1

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    move v4, v6

    move v5, v8

    goto :goto_54

    :cond_43
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotParseGitURIish:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4f
    add-int/lit8 v7, v5, 0x1

    aput-byte v6, v2, v5

    move v5, v7

    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :catch_57
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5f

    :goto_5e
    throw v0

    :goto_5f
    goto :goto_5e
.end method

.method private Zo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    return-object p1
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v0, v1, :cond_3f

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_3f

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_2a

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_3a

    :cond_2a
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_3f

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_3f

    :cond_3a
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3f
    if-eqz p2, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, v2, :cond_59

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v3, :cond_59

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x7e

    if-ne p2, v0, :cond_59

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_59
    return-object p1
.end method

.method private static j6(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_d
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_13} :catch_61

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    array-length v3, p0

    if-lt v2, v3, :cond_22

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length p1, p0

    invoke-static {p0, v1, p1}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    const/16 v5, 0x25

    if-le v3, v4, :cond_3e

    if-eqz p2, :cond_32

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_3e

    :cond_32
    if-eq v3, v5, :cond_3e

    if-eqz p1, :cond_5b

    sget-object v4, Labcd/HJ;->Zo:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_5b

    :cond_3e
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v3, "%02x"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v3

    aget-byte v5, v3, v1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    aget-byte v3, v3, v4

    :cond_5b
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :catch_61
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_69

    :goto_68
    throw p1

    :goto_69
    goto :goto_68
.end method

.method private j6(ZZZ)Ljava/lang/String;
    .registers 7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2, p3}, Labcd/HJ;->j6(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, p3}, Labcd/HJ;->j6(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_74

    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_53

    const/16 p1, 0x40

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_53
    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, p3}, Labcd/HJ;->j6(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_74

    invoke-virtual {p0}, Labcd/HJ;->v5()I

    move-result p1

    if-lez p1, :cond_74

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/HJ;->v5()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_74
    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b8

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_92

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9b

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9b

    :cond_92
    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9b
    :goto_9b
    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b1

    if-eqz p3, :cond_ac

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, p3}, Labcd/HJ;->j6(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_b5

    :cond_ac
    invoke-virtual {p0}, Labcd/HJ;->Zo()Ljava/lang/String;

    move-result-object p1

    goto :goto_b5

    :cond_b1
    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    :goto_b5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b8
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/HJ;
    .registers 3

    new-instance v0, Labcd/HJ;

    invoke-direct {v0, p0}, Labcd/HJ;-><init>(Labcd/HJ;)V

    iput-object p1, v0, Labcd/HJ;->EQ:Ljava/lang/String;

    return-object v0
.end method

.method public DW()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    iget-object v2, p0, Labcd/HJ;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    sget-object v1, Labcd/HJ;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_30

    :cond_2d
    const-string v1, "/"

    goto :goto_45

    :cond_30
    :goto_30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[\\"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "/]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_45
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_71

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, ".git"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v0, v1

    goto :goto_70

    :cond_5f
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_70
    :goto_70
    return-object v1

    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public FH(Ljava/lang/String;)Labcd/HJ;
    .registers 3

    new-instance v0, Labcd/HJ;

    invoke-direct {v0, p0}, Labcd/HJ;-><init>(Labcd/HJ;)V

    iput-object p1, v0, Labcd/HJ;->gn:Ljava/lang/String;

    iput-object p1, v0, Labcd/HJ;->u7:Ljava/lang/String;

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/HJ;->EQ:Ljava/lang/String;

    return-object v0
.end method

.method public Hw(Ljava/lang/String;)Labcd/HJ;
    .registers 3

    new-instance v0, Labcd/HJ;

    invoke-direct {v0, p0}, Labcd/HJ;-><init>(Labcd/HJ;)V

    iput-object p1, v0, Labcd/HJ;->VH:Ljava/lang/String;

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/HJ;->gn:Ljava/lang/String;

    return-object v0
.end method

.method public VH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/HJ;->VH:Ljava/lang/String;

    return-object v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Labcd/HJ;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/HJ;

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Labcd/HJ;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Labcd/HJ;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    return v1

    :cond_26
    invoke-virtual {p0}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Labcd/HJ;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    return v1

    :cond_35
    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Labcd/HJ;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    return v1

    :cond_44
    invoke-virtual {p0}, Labcd/HJ;->v5()I

    move-result v0

    invoke-virtual {p1}, Labcd/HJ;->v5()I

    move-result v2

    if-eq v0, v2, :cond_4f

    return v1

    :cond_4f
    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Labcd/HJ;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5e

    return v1

    :cond_5e
    const/4 p1, 0x1

    return p1
.end method

.method public gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/HJ;->tp:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_10
    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_21
    invoke-virtual {p0}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_32
    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_43
    invoke-virtual {p0}, Labcd/HJ;->v5()I

    move-result v0

    if-lez v0, :cond_50

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Labcd/HJ;->v5()I

    move-result v0

    add-int/2addr v1, v0

    :cond_50
    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_61
    return v1
.end method

.method public j6(I)Labcd/HJ;
    .registers 3

    new-instance v0, Labcd/HJ;

    invoke-direct {v0, p0}, Labcd/HJ;-><init>(Labcd/HJ;)V

    if-lez p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 p1, -0x1

    :goto_9
    iput p1, v0, Labcd/HJ;->we:I

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Labcd/HJ;
    .registers 3

    new-instance v0, Labcd/HJ;

    invoke-direct {v0, p0}, Labcd/HJ;-><init>(Labcd/HJ;)V

    iput-object p1, v0, Labcd/HJ;->J0:Ljava/lang/String;

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/HJ;->J0:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Labcd/HJ;->j6(ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u7()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Labcd/HJ;->j6(ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/HJ;->we:I

    return v0
.end method

.method public v5(Ljava/lang/String;)Labcd/HJ;
    .registers 3

    new-instance v0, Labcd/HJ;

    invoke-direct {v0, p0}, Labcd/HJ;-><init>(Labcd/HJ;)V

    iput-object p1, v0, Labcd/HJ;->tp:Ljava/lang/String;

    return-object v0
.end method
