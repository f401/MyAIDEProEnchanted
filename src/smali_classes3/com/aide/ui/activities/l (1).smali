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
        "Lcom/aide/ui/scm/ua$d<",
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
    .registers 5

    const-wide v0, -0xad487b9f6de2b7L

    const-wide v2, -0xb1f596904e819ffL  # -9.766071906787473E254

    const-class v4, Lcom/aide/ui/activities/l;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x192dd2c54996adc0L  # 2.14194709724688E-187

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/l;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x429c7c4afdb0b200L
    .end annotation

    const-wide v0, -0x21007705ca54ccdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/l;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/ui/activities/l;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2d5bc23b0c1d15efL
    .end annotation

    const-wide v0, -0x56a8db76c2001d80L  # -1.539699511366025E-109

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/l;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/CommitActivity;->FH(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/aide/ui/activities/l;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v2}, Lcom/aide/ui/activities/CommitActivity;->Hw(Lcom/aide/ui/activities/CommitActivity;)Lcom/aide/ui/scm/ModifiedFile;

    move-result-object v2

    if-eqz v2, :cond_54

    iget-object v3, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    if-ne v2, v3, :cond_54

    iget-object v2, p0, Lcom/aide/ui/activities/l;->Hw:Lcom/aide/ui/activities/CommitActivity;

    invoke-virtual {v2}, Lcom/aide/ui/activities/CommitActivity;->DW()Lcom/aide/ui/scm/DiffView;

    move-result-object v2

    invoke-static {p1}, Labcd/FileSystemUtils;->we(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    invoke-virtual {v3}, Lcom/aide/ui/scm/ModifiedFile;->VH()Z

    move-result v3

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    invoke-virtual {v3}, Lcom/aide/ui/scm/ModifiedFile;->v5()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_46

    :cond_40
    const-string v3, "Binary files differ"

    :goto_42
    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/DiffView;->setInformationalContent(Ljava/lang/String;)V

    goto :goto_54

    :cond_46
    :goto_46
    const-string v3, "Removed binary file"

    goto :goto_42

    :cond_49
    iget-object v3, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    iget-object v3, v3, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/activities/l;->FH:Lcom/aide/ui/scm/ModifiedFile;

    iget-object v4, v4, Lcom/aide/ui/scm/ModifiedFile;->FH:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/aide/ui/scm/DiffView;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_55

    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/l;->DW:Z

    if-eqz v3, :cond_5d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    goto :goto_5f

    :goto_5e
    throw v2

    :goto_5f
    goto :goto_5e
.end method
