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
            "LgE$b<",
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
    .registers 7

    const-string v0, "/"

    invoke-direct {p0, p1, p2}, Labcd/sI;-><init>(Labcd/UE;Labcd/HJ;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/xJ;->BT:Z

    sget-object v2, Labcd/rI;->j6:Labcd/rI;

    iput-object v2, p0, Labcd/xJ;->vy:Labcd/rI;

    :try_start_c
    invoke-virtual {p2}, Labcd/HJ;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_26
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labcd/xJ;->rN:Ljava/net/URL;

    new-instance v2, Ljava/net/URL;

    const-string v3, "objects/"

    invoke-direct {v2, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v2, p0, Labcd/xJ;->er:Ljava/net/URL;
    :try_end_36
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_36} :catch_4b

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object p1

    sget-object p2, Labcd/xJ;->lg:Labcd/gE$b;

    invoke-virtual {p1, p2}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/xJ$b;

    iput-object p1, p0, Labcd/xJ;->yS:Labcd/xJ$b;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p1

    iput-object p1, p0, Labcd/xJ;->gW:Ljava/net/ProxySelector;

    return-void

    :catch_4b
    move-exception p1

    new-instance v0, Labcd/jD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidURL:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Labcd/jD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
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
    .registers 1

    iget-object p0, p0, Labcd/xJ;->rN:Ljava/net/URL;

    return-object p0
.end method

.method private FH(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/xJ;->rN:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    const-string v3, "info/refs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Labcd/xJ;->BT:Z

    if-eqz v3, :cond_3d

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_30

    const/16 v3, 0x3f

    goto :goto_32

    :cond_30
    const/16 v3, 0x26

    :goto_32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_46} :catch_13e

    const/4 v2, 0x1

    :goto_47
    :try_start_47
    invoke-virtual {p0, v3}, Labcd/xJ;->j6(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iget-boolean v5, p0, Labcd/xJ;->BT:Z
    :try_end_4d
    .catch Labcd/jD; {:try_start_47 .. :try_end_4d} :catch_13c
    .catch Labcd/yD; {:try_start_47 .. :try_end_4d} :catch_13a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4d} :catch_123

    const-string v6, "Accept"

    if-eqz v5, :cond_7a

    :try_start_51
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "application/x-"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-advertisement"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", */*"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_76
    invoke-virtual {v4, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    :cond_7a
    const-string v5, "*/*"

    goto :goto_76

    :goto_7d
    invoke-static {v4}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_122

    const/16 v6, 0x191

    if-eq v5, v6, :cond_de

    const/16 v2, 0x193

    if-eq v5, v2, :cond_c8

    const/16 v2, 0x194

    if-eq v5, v2, :cond_b2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labcd/yD;

    iget-object v4, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-direct {v3, v4, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v3

    :cond_b2
    new-instance v2, Labcd/hD;

    iget-object v4, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->uriNotFound:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Labcd/hD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v2

    :cond_c8
    new-instance v2, Labcd/yD;

    iget-object v3, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->serviceNotPermitted:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v2

    :cond_de
    invoke-static {v4}, Labcd/rI;->DW(Ljava/net/HttpURLConnection;)Labcd/rI;

    move-result-object v4

    iput-object v4, p0, Labcd/xJ;->vy:Labcd/rI;

    sget-object v5, Labcd/rI;->j6:Labcd/rI;

    if-eq v4, v5, :cond_10a

    if-lt v1, v2, :cond_fc

    iget-object v4, p0, Labcd/xJ;->vy:Labcd/rI;

    iget-object v5, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p0}, Labcd/jJ;->FH()Labcd/kI;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Labcd/rI;->j6(Labcd/HJ;Labcd/kI;)Z

    move-result v4

    if-eqz v4, :cond_fc

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_47

    :cond_fc
    new-instance v2, Labcd/yD;

    iget-object v3, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->notAuthorized:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v2

    :cond_10a
    new-instance v2, Labcd/yD;

    iget-object v3, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->authenticationNotSupported:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Labcd/jJ;->Zo:Labcd/HJ;

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v2
    :try_end_122
    .catch Labcd/jD; {:try_start_51 .. :try_end_122} :catch_13c
    .catch Labcd/yD; {:try_start_51 .. :try_end_122} :catch_13a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_122} :catch_123

    :cond_122
    return-object v4

    :catch_123
    move-exception v2

    new-instance v3, Labcd/yD;

    iget-object v4, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->cannotOpenService:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v5, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_13a
    move-exception p1

    throw p1

    :catch_13c
    move-exception p1

    throw p1

    :catch_13e
    move-exception p1

    new-instance v2, Labcd/jD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->invalidURL:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/jJ;->Zo:Labcd/HJ;

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Labcd/jD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_156

    :goto_155
    throw v2

    :goto_156
    goto :goto_155
.end method

.method private static aM()Ljava/lang/String;
    .registers 3

    const-class v0, Labcd/xJ;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, "unknown"

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JGit/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/io/InputStream;)Labcd/nI;
    .registers 9

    new-instance v0, Labcd/xJ$c;

    iget-object v1, p0, Labcd/xJ;->er:Ljava/net/URL;

    invoke-direct {v0, p0, v1}, Labcd/xJ$c;-><init>(Labcd/xJ;Ljava/net/URL;)V

    invoke-direct {p0, p1}, Labcd/xJ;->DW(Ljava/io/InputStream;)Ljava/io/BufferedReader;

    move-result-object p1

    :try_start_b
    invoke-virtual {v0, p1}, Labcd/xJ$c;->j6(Ljava/io/BufferedReader;)Ljava/util/Map;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_ba

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    const-string p1, "HEAD"

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Labcd/xJ;->rN:Ljava/net/URL;

    invoke-direct {v2, v3, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Labcd/xJ;->j6(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-static {v2}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_56

    const/16 p1, 0x194

    if-ne v3, p1, :cond_33

    goto/16 :goto_b1

    :cond_33
    new-instance p1, Labcd/yD;

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotReadHEAD:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p1

    :cond_56
    invoke-virtual {p0, v2}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/xJ;->DW(Ljava/io/InputStream;)Ljava/io/BufferedReader;

    move-result-object v2

    :try_start_5e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8e

    const-string v4, "ref: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/ME;

    if-nez v4, :cond_81

    new-instance v4, Labcd/BE$c;

    sget-object v5, Labcd/ME$a;->j6:Labcd/ME$a;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    :cond_81
    new-instance v3, Labcd/kF;

    invoke-direct {v3, p1, v4}, Labcd/kF;-><init>(Ljava/lang/String;Labcd/ME;)V

    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a8

    :cond_8e
    if-eqz v3, :cond_a8

    invoke-static {v3}, Labcd/yE;->DW(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a8

    new-instance v4, Labcd/BE$c;

    sget-object v5, Labcd/ME$a;->v5:Labcd/ME$a;

    invoke-static {v3}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v3

    invoke-direct {v4, v5, p1, v3}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-interface {v4}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a8
    .catchall {:try_start_5e .. :try_end_a8} :catchall_ac

    :cond_a8
    :goto_a8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_b1

    :catchall_ac
    move-exception p1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw p1

    :cond_b1
    :goto_b1
    new-instance p1, Labcd/OJ;

    invoke-direct {p1, p0, v0}, Labcd/OJ;-><init>(Labcd/SJ;Labcd/RJ;)V

    invoke-virtual {p1, v1}, Labcd/aI;->j6(Ljava/util/Map;)V

    return-object p1

    :catchall_ba
    move-exception v0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    throw v0
.end method

.method static synthetic j6(Labcd/xJ;)Labcd/xJ$b;
    .registers 1

    iget-object p0, p0, Labcd/xJ;->yS:Labcd/xJ$b;

    return-object p0
.end method

.method private j6(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    const/4 v0, 0x4

    aget-byte v0, v1, v0

    const/16 v3, 0x23

    const/4 v4, 0x1

    if-ne v0, v3, :cond_5e

    new-instance v0, Labcd/DI;

    new-instance v3, Labcd/cL;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/io/InputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    aput-object v7, v6, v2

    aput-object p1, v6, v4

    invoke-direct {v3, v6}, Labcd/cL;-><init>([Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Labcd/DI;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "# service="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    :cond_3d
    invoke-virtual {v0}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Labcd/DI;->j6:Ljava/lang/String;

    if-ne p1, p2, :cond_3d

    return-void

    :cond_46
    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->expectedGot:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v4

    invoke-static {v3, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :cond_5e
    new-instance p1, Labcd/yD;

    iget-object p2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->expectedPktLineWithService:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Labcd/IK;->j6([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    goto :goto_79

    :goto_78
    throw p1

    :goto_79
    goto :goto_78
.end method

.method private j6(Ljava/net/URLConnection;)V
    .registers 7

    new-instance v0, Labcd/xJ$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/xJ$a;-><init>(Labcd/xJ$a;)V

    :try_start_6
    const-string v2, "SSL"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1e
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_1e} :catch_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2a
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-advertisement"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public DW()V
    .registers 1

    return-void
.end method

.method public QX()Labcd/nI;
    .registers 5

    const-string v0, "git-upload-pack"

    :try_start_2
    invoke-direct {p0, v0}, Labcd/xJ;->FH(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_a
    .catch Labcd/jD; {:try_start_2 .. :try_end_a} :catch_3a
    .catch Labcd/yD; {:try_start_2 .. :try_end_a} :catch_38
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_29

    :try_start_a
    invoke-direct {p0, v1, v0}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, v2, v0}, Labcd/xJ;->j6(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Labcd/xJ$e;

    invoke-direct {v0, p0, v2}, Labcd/xJ$e;-><init>(Labcd/xJ;Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_24

    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Labcd/jD; {:try_start_18 .. :try_end_1b} :catch_3a
    .catch Labcd/yD; {:try_start_18 .. :try_end_1b} :catch_38
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_29

    return-object v0

    :cond_1c
    :try_start_1c
    invoke-direct {p0, v2}, Labcd/xJ;->j6(Ljava/io/InputStream;)Labcd/nI;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_24

    :try_start_20
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_24
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_29
    .catch Labcd/jD; {:try_start_20 .. :try_end_29} :catch_3a
    .catch Labcd/yD; {:try_start_20 .. :try_end_29} :catch_38
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_29

    :catch_29
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->errorReadingInfoRefs:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_38
    move-exception v0

    throw v0

    :catch_3a
    move-exception v0

    throw v0
.end method

.method public XL()Labcd/LI;
    .registers 5

    const-string v0, "git-receive-pack"

    :try_start_2
    invoke-direct {p0, v0}, Labcd/xJ;->FH(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_a
    .catch Labcd/jD; {:try_start_2 .. :try_end_a} :catch_4e
    .catch Labcd/yD; {:try_start_2 .. :try_end_a} :catch_4c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_3d

    :try_start_a
    invoke-direct {p0, v1, v0}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, v2, v0}, Labcd/xJ;->j6(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Labcd/xJ$f;

    invoke-direct {v0, p0, v2}, Labcd/xJ$f;-><init>(Labcd/xJ;Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_38

    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Labcd/jD; {:try_start_18 .. :try_end_1b} :catch_4e
    .catch Labcd/yD; {:try_start_18 .. :try_end_1b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_3d

    return-object v0

    :cond_1c
    :try_start_1c
    iget-boolean v0, p0, Labcd/xJ;->BT:Z

    if-nez v0, :cond_2c

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->smartHTTPPushDisabled:Ljava/lang/String;

    new-instance v1, Labcd/jD;

    invoke-direct {v1, v0}, Labcd/jD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->remoteDoesNotSupportSmartHTTPPush:Ljava/lang/String;

    new-instance v1, Labcd/jD;

    invoke-direct {v1, v0}, Labcd/jD;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    :try_start_39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3d
    .catch Labcd/jD; {:try_start_39 .. :try_end_3d} :catch_4e
    .catch Labcd/yD; {:try_start_39 .. :try_end_3d} :catch_4c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->errorReadingInfoRefs:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4c
    move-exception v0

    throw v0

    :catch_4e
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

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Labcd/yD;

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    return-object p2
.end method

.method final j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "gzip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p1

    :cond_18
    return-object v0
.end method

.method final j6(Ljava/lang/String;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 5

    iget-object v0, p0, Labcd/xJ;->gW:Ljava/net/ProxySelector;

    invoke-static {v0, p2}, Labcd/AK;->j6(Ljava/net/ProxySelector;Ljava/net/URL;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Labcd/xJ;->yS:Labcd/xJ$b;

    iget-boolean v1, v1, Labcd/xJ$b;->DW:Z

    if-nez v1, :cond_21

    const-string v1, "https"

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-direct {p0, v0}, Labcd/xJ;->j6(Ljava/net/URLConnection;)V

    :cond_21
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string p1, "Accept-Encoding"

    const-string p2, "gzip"

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Pragma"

    const-string p2, "no-cache"

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "User-Agent"

    sget-object p2, Labcd/xJ;->Mr:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Labcd/xJ;->vy:Labcd/rI;

    invoke-virtual {p1, v0}, Labcd/rI;->j6(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method final j6(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3

    const-string v0, "GET"

    invoke-virtual {p0, v0, p1}, Labcd/xJ;->j6(Ljava/lang/String;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method
