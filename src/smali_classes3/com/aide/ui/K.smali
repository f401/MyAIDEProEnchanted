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
    .registers 5

    const-wide v0, -0x37115a8ad7afe0f1L  # -2.1357367179897575E43

    const-wide v2, 0x50bf50596b7fa7acL  # 9.282298331035287E80

    const-class v4, Lcom/aide/ui/K;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x38f9944566c01530L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/K;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditorPager;->v5(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/AIDEEditorPager$b;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v3}, Lcom/aide/ui/AIDEEditorPager;->Hw(Lcom/aide/ui/AIDEEditorPager;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/aide/ui/AIDEEditorPager$b;->DW(Z)V

    iget-object v2, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditorPager;->Zo(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditorPager;->Zo(Lcom/aide/ui/AIDEEditorPager;)Lcom/aide/ui/AIDEEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/K;->FH:Lcom/aide/ui/AIDEEditorPager;

    invoke-static {v3}, Lcom/aide/ui/AIDEEditorPager;->Hw(Lcom/aide/ui/AIDEEditorPager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/AIDEEditor;->j6(Z)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    :cond_38
    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/K;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
.end method
