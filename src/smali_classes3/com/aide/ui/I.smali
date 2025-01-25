.class Lcom/aide/ui/I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/AIDEEditorPager;->j6(Ljava/lang/String;)V
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
.field final FH:I

.field final Hw:Lcom/aide/ui/AIDEEditorPager;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x37115a8ad7afe0f1L  # -2.1357367179897575E43

    const-wide v2, 0x50be53201e106550L  # 8.989085158790116E80

    const-class v4, Lcom/aide/ui/I;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/AIDEEditorPager;I)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/I;->Hw:Lcom/aide/ui/AIDEEditorPager;

    iput p2, p0, Lcom/aide/ui/I;->FH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x136dc46ac5bd2ab8L
    .end annotation

    const-wide v0, -0x2e53a8bb8023be1cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/I;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/I;->Hw:Lcom/aide/ui/AIDEEditorPager;

    iget v3, p0, Lcom/aide/ui/I;->FH:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/I;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
