.class Labcd/fi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ii;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Landroid/app/Activity;

.field final Hw:Labcd/ii;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xdf443225d7acad4L

    const-wide v2, 0x4868cd069b35500L

    const-class v4, Labcd/fi;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ii;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Labcd/fi;->Hw:Labcd/ii;

    iput-object p2, p0, Labcd/fi;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x85a97a1892595fcL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/fi;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x22174e739bf8b8c8L  # -2.408970282904097E144

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Labcd/fi;->Hw:Labcd/ii;

    invoke-static {v1, v0}, Labcd/ii;->j6(Labcd/ii;Landroid/app/AlertDialog;)V

    iget-object v1, p0, Labcd/fi;->FH:Landroid/app/Activity;

    check-cast v1, Lcom/aide/ui/activities/CommitActivity;

    iget-object v2, p0, Labcd/fi;->Hw:Labcd/ii;

    invoke-virtual {v2, v0}, Labcd/ii;->j6(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aide/ui/activities/CommitActivity;->DW(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Labcd/fi;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x22174e739bf8b8c8L  # -2.408970282904097E144

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method
