.class Labcd/ni;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.field final FH:Labcd/ui;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x3a3825ba9a29b7e1L  # -1.4764057552832041E28

    const-wide v2, 0x6be14941a4dd0000L  # 4.546376987930565E211

    const-class v4, Labcd/ni;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ui;)V
    .registers 2

    iput-object p1, p0, Labcd/ni;->FH:Labcd/ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x8af8593dbf4620L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ni;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x4b138557c11885e0L  # 4.6743197888765805E53

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Labcd/ni;->FH:Labcd/ui;

    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Labcd/ui;->j6(Labcd/ui;Landroid/app/AlertDialog;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Labcd/ni;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, 0x4b138557c11885e0L  # 4.6743197888765805E53

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method
