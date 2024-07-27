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

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-byte v3, v1, v0

    sget-object v4, Labcd/HJ;->Zo:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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

    iget-object v0, p1, Labcd/HJ;->J0:Ljava/lang/String;

    iput-object v0, p0, Labcd/HJ;->J0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/HJ;->we:I

    invoke-static {p1}, Labcd/NK;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Labcd/HJ;->FH:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->VH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/HJ;->VH:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Labcd/HJ;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    iget-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    invoke-static {v0}, Labcd/HJ;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->gn:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Labcd/HJ;->j6:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->VH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/HJ;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->tp:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/HJ;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->EQ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/HJ;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->J0:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Labcd/HJ;->we:I

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/HJ;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/HJ;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/HJ;->VH:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Labcd/HJ;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    iget-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    invoke-static {v0}, Labcd/HJ;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->gn:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Labcd/HJ;->Hw:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->tp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->EQ:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->J0:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    iget-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    iput-object v0, p0, Labcd/HJ;->gn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Labcd/HJ;->v5:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->tp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->EQ:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/HJ;->J0:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    iget-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    iput-object v0, p0, Labcd/HJ;->gn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Labcd/HJ;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    iget-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;

    iput-object v0, p0, Labcd/HJ;->gn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotParseGitURIish:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "The uri was empty or null"

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotParseGitURIish:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
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

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->u7:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Labcd/HJ;->tp:Ljava/lang/String;

    if-gez v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Labcd/HJ;->EQ:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Labcd/HJ;->we:I

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/HJ;->J0:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static VH(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v8, 0x25

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    array-length v0, v5

    new-array v6, v0, [B

    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, v5

    if-lt v2, v3, :cond_2

    invoke-static {v6, v1, v0}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    aget-byte v4, v5, v2

    if-ne v4, v8, :cond_4

    add-int/lit8 v3, v2, 0x2

    array-length v4, v5

    if-ge v3, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v5, v2

    invoke-static {v2}, Labcd/IK;->j6(B)I

    move-result v4

    aget-byte v2, v5, v3

    invoke-static {v2}, Labcd/IK;->j6(B)I

    move-result v7

    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v6, v0

    move v0, v2

    move v4, v3

    :goto_2
    add-int/lit8 v2, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotParseGitURIish:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v3, v0, 0x1

    aput-byte v4, v6, v0

    move v0, v3

    move v4, v2

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private Zo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v5, 0x2f

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_3

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 12

    const/16 v8, 0x25

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x20

    if-le v4, v5, :cond_3

    if-eqz p2, :cond_2

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_3

    :cond_2
    if-eq v4, v8, :cond_3

    if-eqz p1, :cond_4

    sget-object v5, Labcd/HJ;->Zo:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v5, "%02x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v4

    aget-byte v5, v4, v1

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    aget-byte v4, v4, v7

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(ZZZ)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, p3}, Labcd/HJ;->j6(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, p3}, Labcd/HJ;->j6(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, p3}, Labcd/HJ;->j6(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Labcd/HJ;->v5()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/HJ;->v5()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, p3}, Labcd/HJ;->j6(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Labcd/HJ;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
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
    .registers 4

    const-string v0, ""

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    iget-object v2, p0, Labcd/HJ;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Labcd/HJ;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[\\"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "/]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    array-length v1, v0

    if-eqz v1, :cond_3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    const-string v2, ".git"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    :goto_1
    return-object v0

    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ".git"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_1
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

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/HJ;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/HJ;

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/HJ;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/HJ;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/HJ;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/HJ;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/HJ;->v5()I

    move-result v1

    invoke-virtual {p1}, Labcd/HJ;->v5()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/HJ;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/HJ;->tp:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Labcd/HJ;->v5()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Labcd/HJ;->v5()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public j6(I)Labcd/HJ;
    .registers 3

    new-instance v0, Labcd/HJ;

    invoke-direct {v0, p0}, Labcd/HJ;-><init>(Labcd/HJ;)V

    if-lez p1, :cond_0

    :goto_0
    iput p1, v0, Labcd/HJ;->we:I

    return-object v0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0
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

    const/4 v1, 0x0

    const/4 v0, 0x1

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
