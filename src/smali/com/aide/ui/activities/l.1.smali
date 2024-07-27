.class Lcom/aide/ui/activities/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/scm/ua$d;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/CommitActivity;->j6(Lcom/aide/ui/scm/ModifiedFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/ui/scm/ua$d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Lcom/aide/ui/scm/ModifiedFile;

.field final Hw:Lcom/aide/ui/activities/CommitActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/activities/l;

    const-wide v2, -0xad487b9f6de2b7L

    const-wide v4, -0xb1f596904e819ffL    # -9.766071906787473E254

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/CommitActivity;Lcom/aide/ui/scm/ModifiedFile;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/l;->Hw:Lcom/aide/ui/activities/CommitActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2e8374e43bcf4985L
    .end annotation

    const-wide v2, 0x192dd2c54996adc0L    # 2.14194709724688E-187

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x192dd2c54996adc0L    # 2.14194709724688E-187

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/l;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x429c7c4afdb0b200L
    .end annotation

    const-wide v2, -0x21007705ca54ccdL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x21007705ca54ccdL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/l;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/ui/activities/l;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2d5bc23b0c1d15efL
    .end annotation

    const-wide v4, -0x56a8db76c2001d80L    # -1.539699511366025E-109

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x56a8db76c2001d80L    # -1.539699511366025E-109

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/l;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/CommitActivity;->FH(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aide/ui/activities/l;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/CommitActivity;->Hw(Lcom/aide/ui/activities/CommitActivity;)Lcom/aide/ui/scm/ModifiedFile;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/aide/ui/activities/l;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-virtual {v0}, Lcom/aide/ui/activities/CommitActivity;->DW()Lcom/aide/ui/scm/DiffView;

    move-result-object v0

    invoke-static {p1}, Labcd/FileSystemUtils;->we(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    invoke-virtual {v1}, Lcom/aide/ui/scm/ModifiedFile;->VH()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    invoke-virtual {v1}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "Removed binary file"

    invoke-virtual {v0, v1}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v1, "Binary files differ"

    invoke-virtual {v0, v1}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/l;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    iget-object v1, v1, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    iget-object v2, v2, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/aide/ui/scm/DiffView;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
