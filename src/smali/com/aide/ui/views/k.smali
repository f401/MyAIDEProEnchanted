.class Lcom/aide/ui/views/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditTextScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
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

.field final Hw:I

.field final v5:Lcom/aide/ui/views/CodeEditTextScrollView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/k;

    const-wide v2, 0x1531a05ac6f9b43cL

    const-wide v4, -0x1ed98f16851223b0L    # -9.85941466873221E159

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditTextScrollView;II)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/views/k;->v5:Lcom/aide/ui/views/CodeEditTextScrollView;

    iput p2, p0, Lcom/aide/ui/views/k;->FH:I

    iput p3, p0, Lcom/aide/ui/views/k;->Hw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x151cc76b39e17218L
    .end annotation

    const-wide v4, -0x1cadfba0fc5670a0L    # -2.7198305325071295E170

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1cadfba0fc5670a0L    # -2.7198305325071295E170

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/k;->v5:Lcom/aide/ui/views/CodeEditTextScrollView;

    iget-object v1, p0, Lcom/aide/ui/views/k;->v5:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/aide/ui/views/k;->FH:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/aide/ui/views/k;->v5:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget v1, p0, Lcom/aide/ui/views/k;->Hw:I

    iget-object v2, p0, Lcom/aide/ui/views/k;->v5:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
