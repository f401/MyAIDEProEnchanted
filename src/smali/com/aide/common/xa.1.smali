.class Lcom/aide/common/xa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/Fa;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Landroid/widget/EditText;

.field final Hw:Landroid/widget/SeekBar;

.field final v5:Lcom/aide/common/Fa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/xa;

    const-wide v2, -0x591bccec5c964d88L

    const-wide v4, 0x662c08fa42d0b8e9L    # 1.4890490107052788E184

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/Fa;Landroid/widget/EditText;Landroid/widget/SeekBar;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/xa;->v5:Lcom/aide/common/Fa;

    iput-object p2, p0, Lcom/aide/common/xa;->FH:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/aide/common/xa;->Hw:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x24cf2a7249adfab9L
    .end annotation

    const-wide v8, 0x23e0df1db16e5764L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/xa;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x23e0df1db16e5764L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/xa;->v5:Lcom/aide/common/Fa;

    invoke-static {v0}, Lcom/aide/common/Fa;->j6(Lcom/aide/common/Fa;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/common/xa;->FH:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aide/common/xa;->v5:Lcom/aide/common/Fa;

    iget-object v2, p0, Lcom/aide/common/xa;->Hw:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/aide/common/xa;->FH:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/aide/common/Fa;->j6(Lcom/aide/common/Fa;Landroid/widget/SeekBar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/xa;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x247f3dbcb0eb4d0L
    .end annotation

    const-wide v2, 0x1bfde8981be4267bL    # 7.557848433777065E-174

    :try_start_0
    sget-boolean v0, Lcom/aide/common/xa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1bfde8981be4267bL    # 7.557848433777065E-174

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/xa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x362866ceaba3db50L
    .end annotation

    const-wide v2, 0x409827b87939f8fL

    :try_start_0
    sget-boolean v0, Lcom/aide/common/xa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x409827b87939f8fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/xa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
