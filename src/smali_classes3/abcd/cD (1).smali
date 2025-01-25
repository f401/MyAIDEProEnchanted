.class public Labcd/cD;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/cD$a;,
        Labcd/cD$b;,
        Labcd/cD$c;
    }
.end annotation


# instance fields
.field private j6:Labcd/yE;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Labcd/YD;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, p1}, Labcd/cD;->j6(Labcd/YD;)V

    return-void
.end method


# virtual methods
.method protected DW()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/cD;->j6()Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Labcd/cD;->j6()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->unknownObject:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->largeObjectException:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/cD;->DW()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/cD;->j6:Labcd/yE;

    return-object v0
.end method

.method public j6(Labcd/YD;)V
    .registers 3

    iget-object v0, p0, Labcd/cD;->j6:Labcd/yE;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    iput-object p1, p0, Labcd/cD;->j6:Labcd/yE;

    :cond_a
    return-void
.end method
