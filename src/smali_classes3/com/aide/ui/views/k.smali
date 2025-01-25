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
    .registers 5

    const-wide v0, 0x1531a05ac6f9b43cL

    const-wide v2, -0x1ed98f16851223b0L  # -9.85941466873221E159

    const-class v4, Lcom/aide/ui/views/k;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x151cc76b39e17218L
    .end annotation

    const-wide v0, -0x1cadfba0fc5670a0L  # -2.7198305325071295E170

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/k;->v5:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/aide/ui/views/k;->FH:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v2, p0, Lcom/aide/ui/views/k;->v5:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    iget v3, p0, Lcom/aide/ui/views/k;->Hw:I

    iget-object v4, p0, Lcom/aide/ui/views/k;->v5:Lcom/aide/ui/views/CodeEditTextScrollView;

    invoke-static {v4}, Lcom/aide/ui/views/CodeEditTextScrollView;->DW(Lcom/aide/ui/views/CodeEditTextScrollView;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/k;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method
