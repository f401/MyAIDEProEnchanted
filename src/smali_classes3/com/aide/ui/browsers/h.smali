.class Lcom/aide/ui/browsers/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/CustomKeysListView$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/browsers/FileBrowser;->VH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Lcom/aide/ui/browsers/FileBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x4e254192869da105L  # 2.865322281020565E68

    const-wide v2, 0xd84da590efa7b91L

    const-class v4, Lcom/aide/ui/browsers/h;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/browsers/FileBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/browsers/h;->FH:Lcom/aide/ui/browsers/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xf0ec784b4da856dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/h;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x514502cbfe4e9950L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->j3()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/browsers/h;->FH:Lcom/aide/ui/browsers/FileBrowser;

    invoke-static {v1}, Lcom/aide/ui/browsers/FileBrowser;->j6(Lcom/aide/ui/browsers/FileBrowser;)Lcom/aide/common/KeyStrokeDetector$a;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return p1

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/h;->DW:Z

    if-eqz v1, :cond_39

    const-wide v2, -0x514502cbfe4e9950L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x303ec99a0c252f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/h;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1478c71787dbd84dL  # -9.543159313933245E209

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->j3()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/browsers/h;->FH:Lcom/aide/ui/browsers/FileBrowser;

    invoke-static {v1}, Lcom/aide/ui/browsers/FileBrowser;->j6(Lcom/aide/ui/browsers/FileBrowser;)Lcom/aide/common/KeyStrokeDetector$a;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/aide/common/KeyStrokeDetector;->DW(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return p1

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/h;->DW:Z

    if-eqz v1, :cond_39

    const-wide v2, -0x1478c71787dbd84dL  # -9.543159313933245E209

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method
