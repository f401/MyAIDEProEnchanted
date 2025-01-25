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
    .registers 5

    const-wide v0, -0x1b7def450e608340L

    const-wide v2, 0xf9d902226b53c97L

    const-class v4, Lcom/aide/ui/ra;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x14cb2d2c808897d0L
    .end annotation

    const-wide v0, 0x6b686900697acdc5L  # 2.5078275844516918E209

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/ra;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/ra;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    sget v3, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/browsers/BrowserPager;->DW(IZ)V

    iget-object v2, p0, Lcom/aide/ui/ra;->FH:Lcom/aide/ui/MainActivity;

    sget v3, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    invoke-static {v2, v3}, Lcom/aide/ui/MainActivity;->j6(Lcom/aide/ui/MainActivity;I)V

    iget-object v2, p0, Lcom/aide/ui/ra;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/aide/ui/views/SplitView;->openSplit(Z)V

    iget-object v2, p0, Lcom/aide/ui/ra;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->EQ()V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/ra;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method
