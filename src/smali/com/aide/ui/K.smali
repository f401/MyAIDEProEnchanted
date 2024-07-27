.class Lcom/aide/ui/K;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/AIDEEditorPager;->onMeasure(II)V
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
.field final FH:Lcom/aide/ui/AIDEEditorPager;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/K;

    const-wide v2, -0x37115a8ad7afe0f1L    # -2.1357367179897575E43

    const-wide v4, 0x50bf50596b7fa7acL    # 9.282298331035287E80

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/AIDEEditorPager;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xe7e1d85a305dd08L
    .end annotation

    const-wide v2, 0x38f9944566c01530L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/K;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x38f9944566c01530L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditorPager;->v5(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/AIDEEditorPager$b;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditorPager;->Hw(Lcom/aide/ui/AIDEEditorPager;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/aide/ui/AIDEEditorPager$b;->DW(Z)V

    iget-object v0, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditorPager;->Zo(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditorPager;->Zo(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditorPager;->Hw(Lcom/aide/ui/AIDEEditorPager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/AIDEEditor;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/K;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
