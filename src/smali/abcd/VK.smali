.class public final Labcd/VK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/VK$a;,
        Labcd/VK$b;,
        Labcd/VK$c;
    }
.end annotation


# instance fields
.field private final DW:Labcd/VK$b;

.field final FH:Labcd/VK$c;

.field private final j6:Labcd/VK$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/VK$a;

    invoke-direct {v0}, Labcd/VK$a;-><init>()V

    iput-object v0, p0, Labcd/VK;->j6:Labcd/VK$a;

    new-instance v0, Labcd/VK$c;

    iget-object v1, p0, Labcd/VK;->j6:Labcd/VK$a;

    invoke-direct {v0, v1}, Labcd/VK$c;-><init>(Labcd/VK$a;)V

    iput-object v0, p0, Labcd/VK;->FH:Labcd/VK$c;

    new-instance v0, Labcd/VK$b;

    iget-object v1, p0, Labcd/VK;->j6:Labcd/VK$a;

    invoke-direct {v0, p1, v1}, Labcd/VK$b;-><init>(Ljava/lang/String;Labcd/VK$a;)V

    iput-object v0, p0, Labcd/VK;->DW:Labcd/VK$b;

    iget-object v0, p0, Labcd/VK;->DW:Labcd/VK$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget-object v0, p0, Labcd/VK;->j6:Labcd/VK$a;

    invoke-virtual {v0}, Labcd/VK$a;->DW()V

    :try_start_0
    iget-object v0, p0, Labcd/VK;->DW:Labcd/VK$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public j6()V
    .registers 2

    iget-object v0, p0, Labcd/VK;->j6:Labcd/VK$a;

    invoke-virtual {v0}, Labcd/VK$a;->j6()V

    return-void
.end method

.method public j6(I)V
    .registers 7

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-object v0, p0, Labcd/VK;->j6:Labcd/VK$a;

    invoke-virtual {v0, p1}, Labcd/VK$a;->j6(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidTimeout:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
