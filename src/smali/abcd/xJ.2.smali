.class public Labcd/xJ;
.super Labcd/sI;

# interfaces
.implements Labcd/SJ;
.implements Labcd/BI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/xJ$a;,
        Labcd/xJ$b;,
        Labcd/xJ$c;,
        Labcd/xJ$d;,
        Labcd/xJ$d$a;,
        Labcd/xJ$d$b;,
        Labcd/xJ$e;,
        Labcd/xJ$f;
    }
.end annotation


# static fields
.field private static final Mr:Ljava/lang/String;

.field static final U2:Labcd/DJ;

.field static final a8:Labcd/DJ;

.field private static final lg:Labcd/gE$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LgE$b",
            "<",
            "Labcd/xJ$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BT:Z

.field private final er:Ljava/net/URL;

.field private final gW:Ljava/net/ProxySelector;

.field private final rN:Ljava/net/URL;

.field private vy:Labcd/rI;

.field private final yS:Labcd/xJ$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Labcd/xJ;->aM()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/xJ;->Mr:Ljava/lang/String;

    new-instance v0, Labcd/uJ;

    invoke-direct {v0}, Labcd/uJ;-><init>()V

    sput-object v0, Labcd/xJ;->U2:Labcd/DJ;

    new-instance v0, Labcd/vJ;

    invoke-direct {v0}, Labcd/vJ;-><init>()V

    sput-object v0, Labcd/xJ;->a8:Labcd/DJ;

    new-instance v0, Labcd/wJ;

    invoke-direct {v0}, Labcd/wJ;-><init>()V

    sput-object v0, Labcd/xJ;->lg:Labcd/gE$b;

    return-void
.end method

.method constructor <init>(Labcd/UE;Labcd/HJ;)V
    .registers 8

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Labcd/sI;-><init>(Labcd/UE;Labcd/HJ;)V

    iput-boolean v3, p0, Labcd/xJ;->BT:Z

    sget-object v0, Labcd/rI;->j6:Labcd/rI;

    iput-object v0, p0, Labcd/xJ;->vy:Labcd/rI;

    :try_start_0
    invoke-virtual {p2}, Labcd/HJ;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Labcd/xJ;->rN:Ljava/net/URL;

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Labcd/xJ;->rN:Ljava/net/URL;

    const-string v2, "objects/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/xJ;->er:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/xJ;->lg:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/xJ$b;

    iput-object v0, p0, Labcd/xJ;->yS:Labcd/xJ$b;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Labcd/xJ;->gW:Ljava/net/ProxySelector;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Labcd/jD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidURL:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/jD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private DW(Ljava/io/InputStream;)Ljava/io/BufferedReader;
    .registers 5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method static synthetic DW(Labcd/xJ;)Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Labcd/xJ;->rN:Ljava/net/URL;

    return-object v0
.end method

.method private FH(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 10

    const/16 v3, 0x2f

    const/4 v7, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/xJ;->rN:Ljava/net/URL;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "info/refs"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Labcd/xJ;->BT:Z

    if-eqz v0, :cond_1

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0x3f

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "service="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3

    move v0, v1

    :goto_1
    :try_start_1
    invoke-virtual {p0, v3}, Labcd/xJ;->j6(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    iget-boolean v4, p0, Labcd/xJ;->BT:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "application/x-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-advertisement"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", */*"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Accept"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {v2}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_9

    const/16 v5, 0x191

    if-eq v4, v5, :cond_6

    const/16 v0, 0x193

    if-eq v4, v0, :cond_5

    const/16 v0, 0x194

    if-eq v4, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Labcd/yD;

    iget-object v3, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-direct {v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Labcd/jD; {:try_start_1 .. :try_end_1} :catch_0
    .catch Labcd/yD; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    const/16 v0, 0x26

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v4, "Accept"

    const-string v5, "*/*"

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Labcd/jD; {:try_start_2 .. :try_end_2} :catch_0
    .catch Labcd/yD; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    throw v0

    :cond_4
    :try_start_3
    new-instance v0, Labcd/hD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->uriNotFound:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Labcd/hD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Labcd/jD; {:try_start_3 .. :try_end_3} :catch_0
    .catch Labcd/yD; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    new-instance v2, Labcd/yD;

    iget-object v3, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotOpenService:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {v4, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    :try_start_4
    new-instance v0, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->serviceNotPermitted:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v2}, Labcd/rI;->DW(Ljava/net/HttpURLConnection;)Labcd/rI;

    move-result-object v2

    iput-object v2, p0, Labcd/xJ;->vy:Labcd/rI;

    iget-object v2, p0, Labcd/xJ;->vy:Labcd/rI;

    sget-object v4, Labcd/rI;->j6:Labcd/rI;

    if-eq v2, v4, :cond_8

    if-lt v1, v0, :cond_7

    iget-object v2, p0, Labcd/xJ;->vy:Labcd/rI;

    iget-object v4, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p0}, Labcd/jJ;->FH()Labcd/kI;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Labcd/rI;->j6(Labcd/HJ;Labcd/kI;)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    new-instance v0, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->notAuthorized:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->authenticationNotSupported:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Labcd/jJ;->Zo:Labcd/HJ;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Labcd/jD; {:try_start_4 .. :try_end_4} :catch_0
    .catch Labcd/yD; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_3
    move-exception v0

    new-instance v2, Labcd/jD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->invalidURL:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/jJ;->Zo:Labcd/HJ;

    aput-object v4, v1, v7

    invoke-static {v3, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/jD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_9
    return-object v2
.end method

.method private static aM()Ljava/lang/String;
    .registers 3

    const-class v0, Labcd/xJ;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JGit/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private j6(Ljava/io/InputStream;)Labcd/nI;
    .registers 9

    new-instance v1, Labcd/xJ$c;

    iget-object v0, p0, Labcd/xJ;->er:Ljava/net/URL;

    invoke-direct {v1, p0, v0}, Labcd/xJ$c;-><init>(Labcd/xJ;Ljava/net/URL;)V

    invoke-direct {p0, p1}, Labcd/xJ;->DW(Ljava/io/InputStream;)Ljava/io/BufferedReader;

    move-result-object v0

    :try_start_0
    invoke-virtual {v1, v0}, Labcd/xJ$c;->j6(Ljava/io/BufferedReader;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const-string v0, "HEAD"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Labcd/xJ;->rN:Ljava/net/URL;

    const-string v4, "HEAD"

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Labcd/xJ;->j6(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-static {v0}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Labcd/OJ;

    invoke-direct {v0, p0, v1}, Labcd/OJ;-><init>(Labcd/SJ;Labcd/RJ;)V

    invoke-virtual {v0, v2}, Labcd/aI;->j6(Ljava/util/Map;)V

    return-object v0

    :cond_1
    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotReadHEAD:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0, v0}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/xJ;->DW(Ljava/io/InputStream;)Ljava/io/BufferedReader;

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v4, "ref: "

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-nez v0, :cond_3

    new-instance v0, Labcd/BE$c;

    sget-object v5, Labcd/ME$a;->j6:Labcd/ME$a;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v4, v6}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    :cond_3
    new-instance v4, Labcd/kF;

    const-string v5, "HEAD"

    invoke-direct {v4, v5, v0}, Labcd/kF;-><init>(Ljava/lang/String;Labcd/ME;)V

    invoke-interface {v4}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_4

    :try_start_2
    invoke-static {v0}, Labcd/yE;->DW(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Labcd/BE$c;

    sget-object v5, Labcd/ME$a;->v5:Labcd/ME$a;

    const-string v6, "HEAD"

    invoke-static {v0}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-interface {v4}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method static synthetic j6(Labcd/xJ;)Labcd/xJ$b;
    .registers 2

    iget-object v0, p0, Labcd/xJ;->yS:Labcd/xJ$b;

    return-object v0
.end method

.method private j6(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {p1, v0, v6, v1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    new-instance v1, Labcd/DI;

    new-instance v2, Labcd/cL;

    new-array v3, v5, [Ljava/io/InputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-direct {v2, v3}, Labcd/cL;-><init>([Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Labcd/DI;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "# service="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Labcd/DI;->j6:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    return-void

    :cond_1
    new-instance v1, Labcd/yD;

    iget-object v3, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->expectedGot:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->expectedPktLineWithService:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Labcd/IK;->j6([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v1
.end method

.method private j6(Ljava/net/URLConnection;)V
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Labcd/xJ$a;

    invoke-direct {v0, v1}, Labcd/xJ$a;-><init>(Labcd/xJ$a;)V

    :try_start_0
    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private j6(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-advertisement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public DW()V
    .registers 1

    return-void
.end method

.method public QX()Labcd/nI;
    .registers 5

    :try_start_0
    const-string v0, "git-upload-pack"

    invoke-direct {p0, v0}, Labcd/xJ;->FH(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_0
    .catch Labcd/jD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labcd/yD; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    const-string v2, "git-upload-pack"

    invoke-direct {p0, v0, v2}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "git-upload-pack"

    invoke-direct {p0, v1, v0}, Labcd/xJ;->j6(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Labcd/xJ$e;

    invoke-direct {v0, p0, v1}, Labcd/xJ$e;-><init>(Labcd/xJ;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Labcd/jD; {:try_start_2 .. :try_end_2} :catch_0
    .catch Labcd/yD; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-object v0

    :cond_0
    :try_start_3
    invoke-direct {p0, v1}, Labcd/xJ;->j6(Ljava/io/InputStream;)Labcd/nI;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Labcd/jD; {:try_start_4 .. :try_end_4} :catch_0
    .catch Labcd/yD; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_5
    .catch Labcd/jD; {:try_start_5 .. :try_end_5} :catch_0
    .catch Labcd/yD; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->errorReadingInfoRefs:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public XL()Labcd/LI;
    .registers 5

    :try_start_0
    const-string v0, "git-receive-pack"

    invoke-direct {p0, v0}, Labcd/xJ;->FH(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_0
    .catch Labcd/jD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labcd/yD; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    const-string v2, "git-receive-pack"

    invoke-direct {p0, v0, v2}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "git-receive-pack"

    invoke-direct {p0, v1, v0}, Labcd/xJ;->j6(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Labcd/xJ$f;

    invoke-direct {v0, p0, v1}, Labcd/xJ$f;-><init>(Labcd/xJ;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Labcd/jD; {:try_start_2 .. :try_end_2} :catch_0
    .catch Labcd/yD; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :cond_0
    :try_start_3
    iget-boolean v0, p0, Labcd/xJ;->BT:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->smartHTTPPushDisabled:Ljava/lang/String;

    new-instance v2, Labcd/jD;

    invoke-direct {v2, v0}, Labcd/jD;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4
    .catch Labcd/jD; {:try_start_4 .. :try_end_4} :catch_0
    .catch Labcd/yD; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_5
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->remoteDoesNotSupportSmartHTTPPush:Ljava/lang/String;

    new-instance v2, Labcd/jD;

    invoke-direct {v2, v0}, Labcd/jD;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->errorReadingInfoRefs:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    throw v0
.end method

.method j6(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;
    .registers 6

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->expectedReceivedContentType:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    return-object v1
.end method

.method final j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v0, "gzip"

    const-string v2, "Content-Encoding"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method final j6(Ljava/lang/String;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 6

    iget-object v0, p0, Labcd/xJ;->gW:Ljava/net/ProxySelector;

    invoke-static {v0, p2}, Labcd/AK;->j6(Ljava/net/ProxySelector;Ljava/net/URL;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Labcd/xJ;->yS:Labcd/xJ$b;

    iget-boolean v1, v1, Labcd/xJ$b;->DW:Z

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Labcd/xJ;->j6(Ljava/net/URLConnection;)V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Pragma"

    const-string v2, "no-cache"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "User-Agent"

    sget-object v2, Labcd/xJ;->Mr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Labcd/xJ;->vy:Labcd/rI;

    invoke-virtual {v1, v0}, Labcd/rI;->j6(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method final j6(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3

    const-string v0, "GET"

    invoke-virtual {p0, v0, p1}, Labcd/xJ;->j6(Ljava/lang/String;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
