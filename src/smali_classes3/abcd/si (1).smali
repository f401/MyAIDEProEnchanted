.class Labcd/si;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ui;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Landroid/app/AlertDialog;

.field final Hw:Labcd/ui;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x3a3825ba9a29b7e1L  # -1.4764057552832041E28

    const-wide v2, 0x6be37bd0b04bfbb7L  # 5.124333154610586E211

    const-class v4, Labcd/si;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ui;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Labcd/si;->Hw:Labcd/ui;

    iput-object p2, p0, Labcd/si;->FH:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x66bf2956bd35df0L
    .end annotation

    const-wide v0, 0xb1da81f722acb5L

    :try_start_5
    sget-boolean v2, Labcd/si;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/si;->Hw:Labcd/ui;

    iget-object v3, p0, Labcd/si;->FH:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Labcd/ui;->DW(Landroid/app/AlertDialog;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/si;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x2b06bcb1dbb402d7L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/si;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xd3965e2c16b7568L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Labcd/si;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0xd3965e2c16b7568L

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
        method = -0x6e8aa14180f6c151L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/si;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x13a8d1e4b9e783e0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Labcd/si;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x13a8d1e4b9e783e0L

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
