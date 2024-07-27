.class Labcd/mH;
.super Labcd/SE;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/nH;->j6(Labcd/WG;Labcd/KK;Labcd/nH$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/nH;

.field private final FH:Labcd/WG;

.field private final Hw:Labcd/nH$g;

.field private final v5:Labcd/KK;


# direct methods
.method constructor <init>(Labcd/nH;Labcd/KK;Labcd/WG;Labcd/nH$g;Labcd/KK;)V
    .registers 6

    iput-object p1, p0, Labcd/mH;->DW:Labcd/nH;

    iput-object p3, p0, Labcd/mH;->FH:Labcd/WG;

    iput-object p4, p0, Labcd/mH;->Hw:Labcd/nH$g;

    iput-object p5, p0, Labcd/mH;->v5:Labcd/KK;

    invoke-direct {p0, p2}, Labcd/SE;-><init>(Labcd/KK;)V

    return-void
.end method


# virtual methods
.method protected j6(Ljava/lang/String;[B)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {v0, v3}, Labcd/WG;->j6(Z)V

    iget-object v0, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {v0, v3}, Labcd/WG;->DW(Z)V

    :try_start_0
    iget-object v0, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {v0, p2}, Labcd/WG;->j6([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->Zo()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/mH;->DW:Labcd/nH;

    invoke-static {v0}, Labcd/nH;->DW(Labcd/nH;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Labcd/mH;->Hw:Labcd/nH$g;

    new-instance v2, Labcd/nH$g;

    iget-object v3, p0, Labcd/mH;->v5:Labcd/KK;

    iget-object v4, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {v4}, Labcd/WG;->DW()Labcd/LG;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Labcd/nH$g;-><init>(Labcd/KK;Labcd/LG;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Labcd/kD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unableToWrite:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/kD;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->v5()V

    new-instance v0, Labcd/kD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->interruptedWriting:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/kD;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Labcd/kD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unableToWrite:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/kD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
