.class Lcom/aide/ui/build/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/d;->run()V
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
.field final FH:Lcom/aide/ui/build/android/d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, 0x385534fd2e1cda45L  # 2.4928694853108856E-37

    const-class v4, Lcom/aide/ui/build/android/c;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/d;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/android/c;->FH:Lcom/aide/ui/build/android/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2485698823dd1300L
    .end annotation

    const-wide v0, 0x2b21b2be7d035e11L  # 6.321512907431673E-101

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->P8()Z

    move-result v2

    if-nez v2, :cond_52

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/ui/build/android/c;->FH:Lcom/aide/ui/build/android/d;

    iget-object v4, v4, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v4, v4, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v4}, Lcom/aide/ui/build/android/B;->XL(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has been exported and can be published.\n\nThe APK has been signed with your key in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/ui/build/android/c;->FH:Lcom/aide/ui/build/android/d;

    iget-object v4, v4, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v4, v4, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v4}, Lcom/aide/ui/build/android/B;->aM(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Make sure to keep this file for future updates."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Export APK"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_53

    :cond_52
    return-void

    :catchall_53
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/c;->DW:Z

    if-eqz v3, :cond_5b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5b
    throw v2
.end method
