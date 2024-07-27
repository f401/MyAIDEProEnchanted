.class Labcd/oJ;
.super Labcd/jJ;

# interfaces
.implements Labcd/mJ;


# static fields
.field static final Mr:Labcd/DJ;


# instance fields
.field private final U2:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/nJ;

    invoke-direct {v0}, Labcd/nJ;-><init>()V

    sput-object v0, Labcd/oJ;->Mr:Labcd/DJ;

    return-void
.end method

.method constructor <init>(Labcd/UE;Labcd/HJ;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/jJ;-><init>(Labcd/UE;Labcd/HJ;)V

    iput-object p3, p0, Labcd/oJ;->U2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 1

    return-void
.end method

.method public QX()Labcd/nI;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Labcd/oJ;->U2:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Labcd/hI;

    invoke-direct {v1, p0, v0}, Labcd/hI;-><init>(Labcd/jJ;Ljava/io/InputStream;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->notFound:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
.end method

.method public XL()Labcd/LI;
    .registers 3

    new-instance v0, Labcd/jD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->pushIsNotSupportedForBundleTransport:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/jD;-><init>(Ljava/lang/String;)V

    throw v0
.end method
