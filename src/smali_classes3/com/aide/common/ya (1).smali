.class Lcom/aide/common/ya;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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
.field final FH:Landroid/widget/SeekBar;

.field final Hw:Landroid/widget/EditText;

.field final v5:Lcom/aide/common/Fa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x591bccec5c964d88L

    const-wide v2, 0x662c77cf4ebb4ab0L  # 1.512044010390336E184

    const-class v4, Lcom/aide/common/ya;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/Fa;Landroid/widget/SeekBar;Landroid/widget/EditText;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/ya;->v5:Lcom/aide/common/Fa;

    iput-object p2, p0, Lcom/aide/common/ya;->FH:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/aide/common/ya;->Hw:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3f675e5909f1c644L
    .end annotation

    const-wide v0, -0x41bfb21f95219914L  # -7.592237362928854E-9

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ya;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ya;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x343e71771e0be183L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ya;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x111cd2dd7bae36a5L  # -1.4196188456382048E226

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ya;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, -0x111cd2dd7bae36a5L  # -1.4196188456382048E226

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x137612fe125b6cf7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ya;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x17e95dc2bf919a1L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/common/ya;->v5:Lcom/aide/common/Fa;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/common/Fa;->j6(Lcom/aide/common/Fa;Z)Z

    iget-object v0, p0, Lcom/aide/common/ya;->v5:Lcom/aide/common/Fa;

    iget-object v1, p0, Lcom/aide/common/ya;->FH:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/aide/common/ya;->Hw:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aide/common/Fa;->DW(Lcom/aide/common/Fa;Landroid/widget/SeekBar;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/common/ya;->v5:Lcom/aide/common/Fa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/common/Fa;->j6(Lcom/aide/common/Fa;Z)Z
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ya;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, 0x17e95dc2bf919a1L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    throw v0
.end method
