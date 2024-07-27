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
    .registers 6

    const-class v0, Labcd/fi;

    const-wide v2, 0xdf443225d7acad4L

    const-wide v4, 0x4868cd069b35500L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x85a97a1892595fcL
    .end annotation

    const-wide v4, -0x22174e739bf8b8c8L    # -2.408970282904097E144

    :try_start_0
    sget-boolean v2, Labcd/fi;->j6:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x22174e739bf8b8c8L    # -2.408970282904097E144

    invoke-static {v6, v7, p0, p1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v2, v0

    iget-object v3, p0, Labcd/fi;->Hw:Labcd/ii;

    invoke-static {v3, v2}, Labcd/ii;->j6(Labcd/ii;Landroid/app/AlertDialog;)V

    iget-object v3, p0, Labcd/fi;->FH:Landroid/app/Activity;

    check-cast v3, Lcom/aide/ui/activities/CommitActivity;

    iget-object v6, p0, Labcd/fi;->Hw:Labcd/ii;

    invoke-virtual {v6, v2}, Labcd/ii;->j6(Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/aide/ui/activities/CommitActivity;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    sget-boolean v2, Labcd/fi;->DW:Z

    if-eqz v2, :cond_1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v3
.end method
