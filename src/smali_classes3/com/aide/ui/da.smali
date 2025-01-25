.class Lcom/aide/ui/da;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
.field final FH:Landroid/widget/SearchView;

.field final Hw:Lcom/aide/ui/fa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x236d91e5a1e35049L  # -8.573249911377985E137

    const-wide v2, -0x736416e5921abb24L  # -6.237235247997914E-248

    const-class v4, Lcom/aide/ui/da;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/fa;Landroid/widget/SearchView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/da;->Hw:Lcom/aide/ui/fa;

    iput-object p2, p0, Lcom/aide/ui/da;->FH:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x24788aa0b49808d1L
    .end annotation

    const-wide v0, -0x1044e2031adf2524L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/da;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/da;->FH:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_2b

    const/4 v3, 0x1

    if-nez v2, :cond_2a

    :try_start_15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v2, v3}, Lcom/aide/ui/AIDEEditorPager;->j6(IIII)V
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_28} :catch_29
    .catchall {:try_start_15 .. :try_end_28} :catchall_2b

    goto :goto_2a

    :catch_29
    move-exception p1

    :cond_2a
    :goto_2a
    return v3

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/da;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x70dbf715c980eff7L
    .end annotation

    const-wide v0, -0x4aff859b37581ac0L  # -2.150492435314492E-53

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/da;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/da;->FH:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/aide/ui/da;->Hw:Lcom/aide/ui/fa;

    invoke-static {v2}, Lcom/aide/ui/fa;->j6(Lcom/aide/ui/fa;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->collapseActionView()Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1f

    :cond_1d
    const/4 p1, 0x1

    return p1

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/da;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method
