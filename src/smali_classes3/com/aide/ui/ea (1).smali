.class Lcom/aide/ui/ea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/fa;-><init>(Landroid/view/Menu;)V
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
.field final FH:Lcom/aide/ui/fa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x236d91e5a1e35049L  # -8.573249911377985E137

    const-wide v2, -0x73648e8d34b92a51L

    const-class v4, Lcom/aide/ui/ea;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/fa;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/ea;->FH:Lcom/aide/ui/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x8e1e1392c0d20bbL
    .end annotation

    const-wide v0, 0x1f52b711021f43c1L  # 8.519507876665265E-158

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/ea;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->we()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    const/4 v0, 0x1

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/ea;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
