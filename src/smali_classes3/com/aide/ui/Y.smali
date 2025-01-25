.class Lcom/aide/ui/Y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/Z;->j6(Z)V
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
.field private FH:Landroid/view/Menu;
    .annotation runtime Labcd/ru;
        field = 0x12a852bbe6f43680L
    .end annotation
.end field

.field final Hw:Lcom/aide/ui/Z;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x818ea629444fba9L

    const-wide v2, 0x6601e2dbc1471cfL

    const-class v4, Lcom/aide/ui/Y;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Y;->Hw:Lcom/aide/ui/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x28fbbf57dc3e6677L
    .end annotation

    invoke-static {p1, p2}, Lcom/s1243808733/aide/MainListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)V

    :try_start_3
    sget-boolean v0, Lcom/aide/ui/Y;->j6:Z

    if-eqz v0, :cond_f

    const-wide v0, 0xf718e7d2d3bbb59L  # 2.760855875822108E-234

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    iget-object v0, p0, Lcom/aide/ui/Y;->Hw:Lcom/aide/ui/Z;

    invoke-static {v0, p2}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    :cond_1a
    const/4 p1, 0x1

    return p1

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Y;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, 0xf718e7d2d3bbb59L  # 2.760855875822108E-234

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x19b20d10e445450cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Y;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x6122549325c0de4L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p2, p0, Lcom/aide/ui/Y;->FH:Landroid/view/Menu;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateActionMode - mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " menu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " menu id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/ui/Y;->Hw:Lcom/aide/ui/Z;

    invoke-static {v1}, Lcom/aide/ui/Z;->FH(Lcom/aide/ui/Z;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/Y;->Hw:Lcom/aide/ui/Z;

    invoke-static {v1}, Lcom/aide/ui/Z;->FH(Lcom/aide/ui/Z;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/aide/ui/Y;->Hw:Lcom/aide/ui/Z;

    invoke-static {v0, p2}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;Landroid/view/Menu;)Z

    invoke-static {p1, p2}, Lcom/s1243808733/aide/MainListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4f

    const/4 p1, 0x1

    return p1

    :catchall_4f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Y;->DW:Z

    if-eqz v1, :cond_60

    const-wide v2, -0x6122549325c0de4L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    throw v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x132da4459601a17L
    .end annotation

    const-wide v0, 0x169f0a76345459fdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Y;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroyActionMode - mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " menu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/ui/Y;->FH:Landroid/view/Menu;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " menu id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/ui/Y;->Hw:Lcom/aide/ui/Z;

    invoke-static {v3}, Lcom/aide/ui/Z;->FH(Lcom/aide/ui/Z;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/Y;->FH:Landroid/view/Menu;

    iget-object v3, p0, Lcom/aide/ui/Y;->Hw:Lcom/aide/ui/Z;

    invoke-static {v3, v2}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/aide/ui/Y;->Hw:Lcom/aide/ui/Z;

    invoke-static {v2}, Lcom/aide/ui/Z;->DW(Lcom/aide/ui/Z;)Lcom/aide/ui/MainActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/MainActivity;->v5(Z)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->we()V
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_56

    return-void

    :catchall_56
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Y;->DW:Z

    if-eqz v3, :cond_5e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    throw v2
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x7d91e3073b45249L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Y;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x99e8899525cd9a3L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepareActionMode - mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " menu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " menu id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aide/ui/Y;->Hw:Lcom/aide/ui/Z;

    invoke-static {v1}, Lcom/aide/ui/Z;->FH(Lcom/aide/ui/Z;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/Y;->Hw:Lcom/aide/ui/Z;

    invoke-static {v0, p2}, Lcom/aide/ui/Z;->j6(Lcom/aide/ui/Z;Landroid/view/Menu;)Z
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3d

    const/4 p1, 0x1

    return p1

    :catchall_3d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Y;->DW:Z

    if-eqz v1, :cond_4e

    const-wide v2, -0x99e8899525cd9a3L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method
