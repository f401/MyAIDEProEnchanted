.class Lcom/aide/ui/build/android/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/h;->j6(Z)V
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
.field final FH:Z

.field final Hw:Lcom/aide/ui/build/android/h;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/d;

    const-wide v2, -0x4246ebb8609a7393L    # -2.280941578174458E-11

    const-wide v4, -0x3a0ee4db010a9698L    # -8.47049739590819E28

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/h;Z)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iput-boolean p2, p0, Lcom/aide/ui/build/android/d;->FH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xbac87a3061dc5a5L
    .end annotation

    const-wide v4, 0x2a185a930b1e1bb8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2a185a930b1e1bb8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v0, v0, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    iget-object v1, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v1, v1, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v1}, Lcom/aide/ui/build/android/B;->J8(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/B;->DW(Lcom/aide/ui/build/android/B;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v0, v0, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->EQ(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/aide/ui/build/android/d;->FH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v0, v0, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v0, v0, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->Ws(Lcom/aide/ui/build/android/B;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v0, v0, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v0, v0, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Z)Z

    iget-object v0, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v0, v0, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->QX(Lcom/aide/ui/build/android/B;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/aide/ui/build/android/c;

    invoke-direct {v0, p0}, Lcom/aide/ui/build/android/c;-><init>(Lcom/aide/ui/build/android/d;)V

    iget-object v1, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v1, v1, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v1}, Lcom/aide/ui/build/android/B;->FH(Lcom/aide/ui/build/android/B;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Warning"

    const-string v3, "Your app supports only ARM. It may work with reduced performance on Intel Architecture based devices."

    invoke-static {v1, v2, v3, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/d;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aide/ui/build/android/d;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v0, v0, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->Hw(Lcom/aide/ui/build/android/B;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
