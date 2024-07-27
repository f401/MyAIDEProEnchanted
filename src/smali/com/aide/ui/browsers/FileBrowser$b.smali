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
    .registers 4

    const-wide v2, -0x1049a9384da6b827L    # -1.354753039094888E230

    const-class v0, Lcom/aide/ui/browsers/FileBrowser$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/browsers/FileBrowser;Labcd/Jl;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x79bdd17b0ea318bL
    .end annotation

    const-wide v2, 0x1f284c5a44822391L    # 1.3826343183991E-158

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f284c5a44822391L    # 1.3826343183991E-158

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/browsers/FileBrowser$b;->gn:Lcom/aide/ui/browsers/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/browsers/FileBrowser$b;->Zo:Labcd/Jl;

    invoke-interface {p2}, Labcd/Jl;->Zo()I

    move-result v0

    iput v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    invoke-interface {p2}, Labcd/Jl;->DW()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser$b;->DW:Z

    if-eqz v0, :cond_2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/browsers/FileBrowser;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x78e3b006266595c7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x134e521857550ec1L    # -3.809099990894674E215

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/browsers/FileBrowser$b;->gn:Lcom/aide/ui/browsers/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    iget-boolean v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/browsers/FileBrowser$b;->DW()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f07004b

    iput v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser$b;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, -0x134e521857550ec1L    # -3.809099990894674E215

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-static {p3}, Lcom/aide/ui/browsers/FileBrowser;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f07004a

    iput v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    goto :goto_0

    :cond_4
    const v0, 0x7f070049

    iput v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x8e2a72539128310L
    .end annotation

    const-wide v2, 0x24ea925c0d6ce80L    # 1.46506475470178E-297

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x24ea925c0d6ce80L    # 1.46506475470178E-297

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FileBrowser$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x287edc89c8c70aa0L
    .end annotation

    const-wide v2, -0x1e54923f7e24a64L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FileBrowser$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e54923f7e24a64L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/browsers/FileBrowser$b;->DW()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FileBrowser$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
