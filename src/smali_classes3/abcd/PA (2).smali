.class Labcd/PA;
.super Labcd/PC$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/QA;->Hw()Labcd/QA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/QA;

.field private final FH:Labcd/yE;

.field private final Hw:Labcd/rE;

.field private final Zo:Labcd/IE;

.field private final v5:Ljava/io/File;


# direct methods
.method constructor <init>(Labcd/QA;Ljava/lang/String;Labcd/yE;Labcd/rE;Ljava/io/File;Labcd/IE;)V
    .registers 7

    iput-object p1, p0, Labcd/PA;->DW:Labcd/QA;

    iput-object p3, p0, Labcd/PA;->FH:Labcd/yE;

    iput-object p4, p0, Labcd/PA;->Hw:Labcd/rE;

    iput-object p5, p0, Labcd/PA;->v5:Ljava/io/File;

    iput-object p6, p0, Labcd/PA;->Zo:Labcd/IE;

    invoke-direct {p0, p2}, Labcd/PC$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public j6(Labcd/QC;)V
    .registers 7

    iget-object v0, p0, Labcd/PA;->FH:Labcd/yE;

    invoke-virtual {p1, v0}, Labcd/QC;->j6(Labcd/YD;)V

    iget-object v0, p0, Labcd/PA;->Hw:Labcd/rE;

    invoke-virtual {p1, v0}, Labcd/QC;->j6(Labcd/rE;)V

    :try_start_a
    iget-object v0, p0, Labcd/PA;->DW:Labcd/QA;

    iget-object v0, v0, Labcd/dB;->j6:Labcd/UE;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Labcd/PA;->v5:Ljava/io/File;

    invoke-virtual {p1}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/PA;->Zo:Labcd/IE;

    invoke-static {v0, v1, p1, v2}, Labcd/NC;->j6(Labcd/UE;Ljava/io/File;Labcd/QC;Labcd/IE;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->checkoutConflictWithFile:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
