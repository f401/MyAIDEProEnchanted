.class public Lcom/aide/ui/browsers/FileBrowser$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/browsers/FileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
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
.field public FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x26c6b5ff3d4b05bbL
    .end annotation
.end field

.field public Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x22dd06990ecc0760L
    .end annotation
.end field

.field public VH:I
    .annotation runtime Labcd/ru;
        field = 0x279f396707043c01L
    .end annotation
.end field

.field public Zo:Labcd/Jl;
    .annotation runtime Labcd/ru;
        field = 0xd4a0c616ad3d2adL
    .end annotation
.end field

.field final gn:Lcom/aide/ui/browsers/FileBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x26caa10b254035b5L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/browsers/FileBrowser$b;

    const-wide v1, -0x1049a9384da6b827L  # -1.354753039094888E230

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/browsers/FileBrowser;Labcd/Jl;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x79bdd17b0ea318bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1f284c5a44822391L  # 1.3826343183991E-158

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/browsers/FileBrowser$b;->gn:Lcom/aide/ui/browsers/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/browsers/FileBrowser$b;->Zo:Labcd/Jl;

    invoke-interface {p2}, Labcd/Jl;->Zo()I

    move-result v0

    iput v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    invoke-interface {p2}, Labcd/Jl;->DW()I

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FileBrowser$b;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x1f284c5a44822391L  # 1.3826343183991E-158

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public constructor <init>(Lcom/aide/ui/browsers/FileBrowser;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x78e3b006266595c7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser$b;->j6:Z

    if-eqz v0, :cond_15

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x134e521857550ec1L  # -3.809099990894674E215

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    iput-object p1, p0, Lcom/aide/ui/browsers/FileBrowser$b;->gn:Lcom/aide/ui/browsers/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    if-eqz p4, :cond_29

    invoke-static {p2}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    goto :goto_46

    :cond_29
    invoke-virtual {p0}, Lcom/aide/ui/browsers/FileBrowser$b;->DW()Z

    move-result v0

    if-eqz v0, :cond_35

    const v0, 0x7f07004b

    iput v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    goto :goto_46

    :cond_35
    invoke-static {p3}, Lcom/aide/ui/browsers/FileBrowser;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const v0, 0x7f07004a

    iput v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    goto :goto_46

    :cond_41
    const v0, 0x7f070049

    iput v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_47

    :goto_46
    return-void

    :catchall_47
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FileBrowser$b;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, -0x134e521857550ec1L  # -3.809099990894674E215

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    throw v0
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x8e2a72539128310L
    .end annotation

    const-wide v0, 0x24ea925c0d6ce80L  # 1.46506475470178E-297

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser$b;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x287edc89c8c70aa0L
    .end annotation

    const-wide v0, -0x1e54923f7e24a64L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/FileBrowser$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    if-nez v2, :cond_18

    invoke-virtual {p0}, Lcom/aide/ui/browsers/FileBrowser$b;->DW()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FileBrowser$b;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method
