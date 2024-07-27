.class Lcom/aide/ui/ra;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/MainActivity;->Xa()V
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
.field final FH:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/ra;

    const-wide v2, -0x1b7def450e608340L

    const-wide v4, 0xf9d902226b53c97L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/ra;->FH:Lcom/aide/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x14cb2d2c808897d0L
    .end annotation

    const-wide v4, 0x6b686900697acdc5L    # 2.5078275844516918E209

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ra;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6b686900697acdc5L    # 2.5078275844516918E209

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/ra;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    sget v1, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/browsers/BrowserPager;->DW(IZ)V

    iget-object v0, p0, Lcom/aide/ui/ra;->FH:Lcom/aide/ui/MainActivity;

    sget v1, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    invoke-static {v0, v1}, Lcom/aide/ui/MainActivity;->j6(Lcom/aide/ui/MainActivity;I)V

    iget-object v0, p0, Lcom/aide/ui/ra;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/SplitView;->openSplit(Z)V

    iget-object v0, p0, Lcom/aide/ui/ra;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->EQ()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ra;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
