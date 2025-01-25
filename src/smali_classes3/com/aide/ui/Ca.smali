.class Lcom/aide/ui/Ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    const-wide v2, -0x39777a8594d299d5L  # -6.216913285533616E31

    const-class v4, Lcom/aide/ui/Ca;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Ca;->FH:Lcom/aide/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x45caf5623735577L
    .end annotation

    const-wide v0, -0x718209b680fb9e4fL  # -7.189440698189079E-239

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Ca;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/aide/ui/Ca;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ro()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    :cond_17
    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Ca;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method
