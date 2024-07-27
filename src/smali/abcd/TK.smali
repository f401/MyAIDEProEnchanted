.class public final Labcd/TK;
.super Ljava/io/OutputStream;


# static fields
.field public static final j6:Labcd/TK;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/TK;

    invoke-direct {v0}, Labcd/TK;-><init>()V

    sput-object v0, Labcd/TK;->j6:Labcd/TK;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->writingNotPermitted:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
