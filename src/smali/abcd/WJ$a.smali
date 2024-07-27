.class public Labcd/WJ$a;
.super Labcd/_J$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/WJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final FH:Ljava/io/File;

.field private final Hw:Labcd/rE;

.field private Zo:J

.field private v5:J


# direct methods
.method constructor <init>(Ljava/io/File;Labcd/pK;)V
    .registers 5

    invoke-direct {p0}, Labcd/_J$a;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Labcd/WJ$a;->v5:J

    iput-object p1, p0, Labcd/WJ$a;->FH:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, ".git"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Labcd/rE;->v5:Labcd/rE;

    iput-object v0, p0, Labcd/WJ$a;->Hw:Labcd/rE;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    iput-object v0, p0, Labcd/WJ$a;->Hw:Labcd/rE;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/WJ$a;->FH:Ljava/io/File;

    invoke-virtual {p2, v0}, Labcd/pK;->j6(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Labcd/rE;->Hw:Labcd/rE;

    iput-object v0, p0, Labcd/WJ$a;->Hw:Labcd/rE;

    goto :goto_0

    :cond_2
    sget-object v0, Labcd/rE;->FH:Labcd/rE;

    iput-object v0, p0, Labcd/WJ$a;->Hw:Labcd/rE;

    goto :goto_0
.end method


# virtual methods
.method public DW()J
    .registers 5

    iget-wide v0, p0, Labcd/WJ$a;->v5:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Labcd/WJ$a;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/WJ$a;->v5:J

    :cond_0
    iget-wide v0, p0, Labcd/WJ$a;->v5:J

    return-wide v0
.end method

.method public FH()Labcd/rE;
    .registers 2

    iget-object v0, p0, Labcd/WJ$a;->Hw:Labcd/rE;

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/WJ$a;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()J
    .registers 5

    iget-wide v0, p0, Labcd/WJ$a;->Zo:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/WJ$a;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/WJ$a;->Zo:J

    :cond_0
    iget-wide v0, p0, Labcd/WJ$a;->Zo:J

    return-wide v0
.end method

.method public v5()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Labcd/WJ$a;->FH:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
