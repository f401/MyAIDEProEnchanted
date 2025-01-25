.class public Lcom/aide/uidesigner/ProxyMarginLayoutParams;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static $ON_ENTER_TOGGLE:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static $ON_THROW_TOGGLE:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private params:Landroid/view/ViewGroup$MarginLayoutParams;
    .annotation runtime Labcd/ru;
        field = 0x11db60e940661a80L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/ProxyMarginLayoutParams;

    const-wide v1, -0x3c788634d78dab61L  # -2.11450813703951328E17

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x1cfc319a79f90f78L

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v3, p0, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->params:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public setMargin(I)V
    .registers 6

    const-wide v0, -0xe7848452171e0d8L  # -7.722164725362548E238

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method
