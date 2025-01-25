.class Lcom/aide/ui/browsers/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/browsers/FileBrowser;->Zo()V
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
.field final FH:Landroid/widget/ImageView;

.field final Hw:Lcom/aide/ui/browsers/FileBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x4e254192869da105L  # 2.865322281020565E68

    const-wide v2, 0xd8506a8674d9a00L

    const-class v4, Lcom/aide/ui/browsers/k;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/browsers/FileBrowser;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/browsers/k;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    iput-object p2, p0, Lcom/aide/ui/browsers/k;->FH:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x4112f1172f6c160L
    .end annotation

    const-wide v0, 0x56ed37d6fe80L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Labcd/mk;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/browsers/k;->Hw:Lcom/aide/ui/browsers/FileBrowser;

    iget-object v3, p0, Lcom/aide/ui/browsers/k;->FH:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/aide/ui/browsers/FileBrowser;->j6(Lcom/aide/ui/browsers/FileBrowser;Landroid/view/View;Z)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/k;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method
