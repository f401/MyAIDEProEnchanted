.class Lcom/aide/ui/build/android/N;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/rh$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/O;->j6(Landroid/app/Activity;)V
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

.field final Hw:Lcom/aide/ui/build/android/O;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xea1aba3161df184L  # 3.392042040222766E-238

    const-wide v2, -0x293c966b3a98ba6cL  # -9.11818196805912E109

    const-class v4, Lcom/aide/ui/build/android/N;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/O;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/N;->Hw:Lcom/aide/ui/build/android/O;

    iput-object p2, p0, Lcom/aide/ui/build/android/N;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(ZLjava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4e949f6340cfe74dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/N;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x27e7a31a44e6081cL

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_4c

    :cond_11
    const-string v0, "Create keystore"

    if-eqz p1, :cond_35

    :try_start_15
    invoke-static {p2}, Lcom/aide/ui/aa;->FH(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/ui/build/android/N;->FH:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keystore file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has been created and set as default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_4b

    :cond_35
    iget-object v1, p0, Lcom/aide/ui/build/android/N;->FH:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create keystore file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_15 .. :try_end_4b} :catchall_4c

    :goto_4b
    return-void

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/N;->DW:Z

    if-eqz v1, :cond_61

    const-wide v2, 0x27e7a31a44e6081cL

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v0
.end method
