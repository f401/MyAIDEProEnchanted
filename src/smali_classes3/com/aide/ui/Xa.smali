.class Lcom/aide/ui/Xa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/Za;-><init>(Landroid/view/Menu;)V
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
.field private FH:J
    .annotation runtime Labcd/ru;
        field = 0x3c4a89686945f195L
    .end annotation
.end field

.field final Hw:Landroid/widget/SearchView;

.field final v5:Lcom/aide/ui/Za;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x221c34086f4546d0L

    const-wide v2, -0x159ba2a1b97d64b7L  # -3.19246034723511E204

    const-class v4, Lcom/aide/ui/Xa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/Za;Landroid/widget/SearchView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/Xa;->v5:Lcom/aide/ui/Za;

    iput-object p2, p0, Lcom/aide/ui/Xa;->Hw:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4507ffc703d3826dL
    .end annotation

    const-wide v0, 0x1300ddccca3a94fcL  # 3.822396085767074E-217

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Xa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Xa;->Hw:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2, v3, v3, p1}, Lcom/aide/ui/AIDEEditorPager;->j6(IILjava/lang/String;)Z
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    :cond_2a
    return v3

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Xa;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x54cddec3fa800d69L
    .end annotation

    const-wide v0, -0x1916526d82323e78L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Xa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Xa;->Hw:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_66

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/aide/ui/Xa;->FH:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x64

    cmp-long v2, v6, v8

    if-lez v2, :cond_66

    iput-wide v4, p0, Lcom/aide/ui/Xa;->FH:J

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v4

    iget v5, v2, Labcd/Tl;->Hw:I

    iget v2, v2, Labcd/Tl;->v5:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6}, Lcom/aide/ui/AIDEEditorPager;->j6(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const v4, 0x7f0d0666

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v3, v4}, Lcom/aide/ui/AIDEEditorPager;->j6(IILjava/lang/String;)Z
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_67

    :cond_66
    return v3

    :catchall_67
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Xa;->DW:Z

    if-eqz v3, :cond_6f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    throw v2
.end method
