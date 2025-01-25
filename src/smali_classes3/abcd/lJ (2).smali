.class public Labcd/lJ;
.super Labcd/sI;

# interfaces
.implements Labcd/SJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/lJ$a;
    }
.end annotation


# static fields
.field static final Mr:Labcd/DJ;


# instance fields
.field private final U2:Labcd/_H;

.field private final a8:Ljava/lang/String;

.field private final lg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/kJ;

    invoke-direct {v0}, Labcd/kJ;-><init>()V

    sput-object v0, Labcd/lJ;->Mr:Labcd/DJ;

    return-void
.end method

.method constructor <init>(Labcd/UE;Labcd/HJ;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Labcd/sI;-><init>(Labcd/UE;Labcd/HJ;)V

    new-instance p1, Labcd/_H;

    invoke-direct {p0}, Labcd/lJ;->aM()Ljava/util/Properties;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/_H;-><init>(Ljava/util/Properties;)V

    iput-object p1, p0, Labcd/lJ;->U2:Labcd/_H;

    invoke-virtual {p2}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/lJ;->a8:Ljava/lang/String;

    invoke-virtual {p2}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_25
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_35
    iput-object p1, p0, Labcd/lJ;->lg:Ljava/lang/String;

    return-void
.end method

.method static synthetic DW(Labcd/lJ;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Labcd/lJ;->a8:Ljava/lang/String;

    return-object p0
.end method

.method private aM()Ljava/util/Properties;
    .registers 4

    iget-object v0, p0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v2}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {v0}, Labcd/lJ;->j6(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    return-object v0

    :cond_24
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v2}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {v0}, Labcd/lJ;->j6(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    return-object v0

    :cond_44
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accesskey"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v1

    const-string v2, "secretkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6(Labcd/lJ;)Labcd/_H;
    .registers 1

    iget-object p0, p0, Labcd/lJ;->U2:Labcd/_H;

    return-object p0
.end method

.method private static j6(Ljava/io/File;)Ljava/util/Properties;
    .registers 6

    :try_start_0
    invoke-static {p0}, Labcd/_H;->j6(Ljava/io/File;)Ljava/util/Properties;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    new-instance v1, Labcd/jD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotReadFile:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Labcd/jD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public DW()V
    .registers 1

    return-void
.end method

.method public QX()Labcd/nI;
    .registers 4

    iget-object v0, p0, Labcd/lJ;->a8:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/lJ;->lg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/objects"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/lJ$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Labcd/lJ$a;-><init>(Labcd/lJ;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Labcd/OJ;

    invoke-direct {v0, p0, v2}, Labcd/OJ;-><init>(Labcd/SJ;Labcd/RJ;)V

    invoke-virtual {v2}, Labcd/lJ$a;->v5()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/aI;->j6(Ljava/util/Map;)V

    return-object v0
.end method

.method public XL()Labcd/LI;
    .registers 4

    iget-object v0, p0, Labcd/lJ;->a8:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/lJ;->lg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/objects"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/lJ$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Labcd/lJ$a;-><init>(Labcd/lJ;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Labcd/QJ;

    invoke-direct {v0, p0, v2}, Labcd/QJ;-><init>(Labcd/SJ;Labcd/RJ;)V

    invoke-virtual {v2}, Labcd/lJ$a;->v5()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/aI;->j6(Ljava/util/Map;)V

    return-object v0
.end method
