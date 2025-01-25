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
    .registers 7

    iget-object v0, p0, Labcd/mH;->FH:Labcd/WG;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/WG;->j6(Z)V

    iget-object v0, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {v0, v1}, Labcd/WG;->DW(Z)V

    const/4 v0, 0x0

    :try_start_c
    iget-object v2, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {v2, p2}, Labcd/WG;->j6([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_65

    :try_start_11
    iget-object p2, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {p2}, Labcd/WG;->Zo()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_4b

    iget-object p2, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {p2}, Labcd/WG;->j6()Z

    move-result p2

    if-eqz p2, :cond_37

    iget-object p1, p0, Labcd/mH;->DW:Labcd/nH;

    invoke-static {p1}, Labcd/nH;->DW(Labcd/nH;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    iget-object p2, p0, Labcd/mH;->Hw:Labcd/nH$g;

    new-instance v0, Labcd/nH$g;

    iget-object v1, p0, Labcd/mH;->v5:Labcd/KK;

    iget-object v2, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {v2}, Labcd/WG;->DW()Labcd/LG;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/nH$g;-><init>(Labcd/KK;Labcd/LG;)V

    invoke-static {p1, p2, v0}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_37
    new-instance p2, Labcd/kD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unableToWrite:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/kD;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_4b
    move-exception p2

    iget-object p2, p0, Labcd/mH;->FH:Labcd/WG;

    invoke-virtual {p2}, Labcd/WG;->v5()V

    new-instance p2, Labcd/kD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->interruptedWriting:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/kD;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_65
    move-exception p2

    new-instance v2, Labcd/kD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->unableToWrite:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v3, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Labcd/kD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
