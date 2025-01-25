.class Lcom/aide/ui/browsers/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/browsers/BrowserPager$a;->DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V
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

.field final Hw:Lcom/aide/ui/browsers/BrowserPager$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x39c16a0246c35b0L

    const-wide v2, -0x1b127f1fd1a557dfL  # -1.4944446247719292E178

    const-class v4, Lcom/aide/ui/browsers/c;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/browsers/BrowserPager$a;I)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/browsers/c;->Hw:Lcom/aide/ui/browsers/BrowserPager$a;

    iput p2, p0, Lcom/aide/ui/browsers/c;->FH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf75c57bd9c7e10cL
    .end annotation

    const-wide v0, -0x35a554ddfd3d4e70L  # -1.559041538329059E50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/browsers/c;->Hw:Lcom/aide/ui/browsers/BrowserPager$a;

    iget-object v2, v2, Lcom/aide/ui/browsers/BrowserPager$a;->Zo:Lcom/aide/ui/browsers/BrowserPager;

    invoke-static {v2}, Lcom/aide/ui/browsers/BrowserPager;->j6(Lcom/aide/ui/browsers/BrowserPager;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/aide/ui/browsers/c;->FH:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/browsers/a;

    invoke-interface {v2}, Lcom/aide/ui/browsers/a;->j6()V

    iget-object v3, p0, Lcom/aide/ui/browsers/c;->Hw:Lcom/aide/ui/browsers/BrowserPager$a;

    iget-object v3, v3, Lcom/aide/ui/browsers/BrowserPager$a;->Zo:Lcom/aide/ui/browsers/BrowserPager;

    invoke-static {v3}, Lcom/aide/ui/browsers/BrowserPager;->DW(Lcom/aide/ui/browsers/BrowserPager;)Lcom/aide/ui/MainActivity;

    move-result-object v3

    iget v4, p0, Lcom/aide/ui/browsers/c;->FH:I

    invoke-virtual {v3, v4}, Lcom/aide/ui/MainActivity;->j6(I)V

    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-interface {v2}, Lcom/aide/ui/browsers/a;->DW()V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    :cond_35
    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/c;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method
