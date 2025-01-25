.class Lcom/aide/common/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/t;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Lcom/aide/common/ColorPickerView;

.field final Hw:Lcom/aide/common/t;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x24c54939ab6ff2a4L

    const-wide v2, 0x35f45a4cc46cfd60L  # 8.703691017165431E-49

    const-class v4, Lcom/aide/common/p;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/t;Lcom/aide/common/ColorPickerView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/common/p;->Hw:Lcom/aide/common/t;

    iput-object p2, p0, Lcom/aide/common/p;->FH:Lcom/aide/common/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x42c16343e8e4505fL
    .end annotation

    const-wide v0, 0x327ffe4b697f2021L  # 1.8987181891571559E-65

    :try_start_5
    sget-boolean v2, Lcom/aide/common/p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/common/p;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x107a7eef6994da7cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/p;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x19679636929e84a0L  # 2.710448555557369E-186

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/common/p;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x19679636929e84a0L  # 2.710448555557369E-186

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
        method = -0x3fc7094560708a60L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/p;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x25e247722cc8a594L  # -1.257420009577204E126

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/common/p;->Hw:Lcom/aide/common/t;

    invoke-static {v0}, Lcom/aide/common/t;->DW(Lcom/aide/common/t;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/aide/common/p;->Hw:Lcom/aide/common/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/common/t;->j6(Lcom/aide/common/t;Z)Z

    iget-object v0, p0, Lcom/aide/common/p;->FH:Lcom/aide/common/ColorPickerView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/common/ColorPickerView;->setCurrentColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/common/p;->Hw:Lcom/aide/common/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/common/t;->j6(Lcom/aide/common/t;Z)Z
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    :cond_3a
    return-void

    :catchall_3b
    move-exception v0

    sget-boolean v1, Lcom/aide/common/p;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, -0x25e247722cc8a594L  # -1.257420009577204E126

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
